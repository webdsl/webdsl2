package org.webdsl.core.strategies;

import org.spoofax.interpreter.terms.IStrategoTerm;
import org.strategoxt.lang.Context;
import org.strategoxt.lang.Strategy;

/**
 * Example Java strategy implementation.
 * 
 * This strategy can be used by editor services and can be called in Stratego
 * modules by declaring it as an external strategy as follows:
 * 
 * <code>
 *  external java-strategy(|)
 * </code>
 * 
 * @see InteropRegisterer This class registers java_strategy_0_0 for use.
 */
public class record_time_native_0_1 extends Strategy {

	public static record_time_native_0_1 instance = new record_time_native_0_1();

	@Override
	public IStrategoTerm invoke(Context context, IStrategoTerm current, IStrategoTerm name) {		
		return current;
	}
}
