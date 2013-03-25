package org.webdsl.core.strategies;

import org.strategoxt.lang.JavaInteropRegisterer;
import org.strategoxt.lang.Strategy;

/**
 * Helper class for {@link java_strategy_0_0}.
 */
public class InteropRegisterer extends JavaInteropRegisterer {

  public InteropRegisterer() {
    super(new Strategy[] { java_strategy_0_0.instance, file_loc_0_2.instance, find_file_all_0_2.instance });
  }
}
