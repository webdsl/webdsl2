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
public class while_imperative_1_0 extends Strategy {

	public static while_imperative_1_0 instance = new while_imperative_1_0();

	@Override
	public IStrategoTerm invoke(Context context, IStrategoTerm current, Strategy s) {
		IStrategoTerm lastCurrent = current;
		while(current != null) {
			lastCurrent = current;
			current = s.invoke(context, current);
		}
		return lastCurrent;
	}
}
