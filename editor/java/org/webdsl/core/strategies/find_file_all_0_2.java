package org.webdsl.core.strategies;

import java.io.File;
import java.io.FileFilter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedList;

import org.spoofax.interpreter.terms.IStrategoString;
import org.spoofax.interpreter.terms.IStrategoTerm;
import org.spoofax.interpreter.terms.ITermFactory;
import org.strategoxt.lang.Context;
import org.strategoxt.lang.Strategy;

/**
 * 
 * Strategy that returns a list of files matching a particular extension in the given directory.
 * 
 * Usage <code>
 * 	external find-file-all(|ext, dir)
 * </code>
 */
public class find_file_all_0_2 extends Strategy {

	public static find_file_all_0_2 instance = new find_file_all_0_2();

	@Override
	public IStrategoTerm invoke(Context context, IStrategoTerm current, IStrategoTerm extArg, IStrategoTerm dirArg) {

		final ITermFactory factory = context.getFactory();

		final File dir = new File(((IStrategoString) dirArg).stringValue());
		final String extension = ((IStrategoString) extArg).stringValue();
		final Collection<File> files = listFiles(dir, new ExtensionFileFilter(extension));

		final Collection<IStrategoString> filesStr = new ArrayList<IStrategoString>(files.size());
		for (File f : files) {
			filesStr.add(factory.makeString(dir.toURI().relativize(f.toURI()).toString()));
		}

		return factory.makeList(filesStr);
	}

	private static Collection<File> listFiles(File dir, FileFilter filter) {
		final Collection<File> matches = new LinkedList<File>();
		final File[] files = dir.listFiles();
		for (File f : files) {
			if (f.isDirectory()) {
				matches.addAll(listFiles(f, filter));
			} else if (filter.accept(f)) {
				matches.add(f);
			}
		}
		return matches;
	}

	private static class ExtensionFileFilter implements FileFilter {
		private String extension;

		public ExtensionFileFilter(String extension) {
			this.extension = extension;
		}

		public boolean accept(File f) {
			if (!f.isFile())
				return false;
			final String fn = f.getName();
			final int idx = fn.lastIndexOf(".");
			if (idx > 0) {
				return fn.substring(idx + 1).equals(this.extension);
			} else {
				return false;
			}
		}
	}

}
