package org.webdsl.core.strategies;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;

import org.spoofax.interpreter.terms.IStrategoString;
import org.spoofax.interpreter.terms.IStrategoTerm;
import org.spoofax.interpreter.terms.ITermFactory;
import org.strategoxt.lang.Context;
import org.strategoxt.lang.Strategy;

/**
 * 
 * Strategy that counts LOC in a given file in a given directory
 * 
 * Usage <code>
 * 	external file-loc(|file,dir)
 * </code>
 * 
 */
public class file_loc_0_2 extends Strategy {

	public static file_loc_0_2 instance = new file_loc_0_2();

	@Override
	public IStrategoTerm invoke(Context context, IStrategoTerm current, IStrategoTerm fileArg, IStrategoTerm dirArg) {
		final ITermFactory factory = context.getFactory();
		final File dir = new File(((IStrategoString) dirArg).stringValue());
		final File file = new File(dir, ((IStrategoString) fileArg).stringValue());
		int loc = 0;
		BufferedReader reader = null;
		try {
			reader = new BufferedReader(new FileReader(file));
			while (reader.readLine() != null)
				loc++;
		} catch (IOException e) {
			context.getIOAgent().printError("file-loc failed: " + getExceptionStackTrace(e));
		} finally {
			if (reader != null) {
				try {
					reader.close();
				} catch (IOException e) {
				}
			}

		}
		return factory.makeInt(loc);
	}

	private static String getExceptionStackTrace(Throwable t) {
		final StringWriter sw = new StringWriter();
		final PrintWriter pw = new PrintWriter(sw);
		t.printStackTrace(pw);
		return sw.toString();
	}

}
