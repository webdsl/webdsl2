module extra-built-in

	// built-ins that are not yet in WebDSL's built-in.app, instead they are defined in the compiler itself

	entity Entity {}
	
	type Void {}

  function cancel() {}
  function rollback() {}
  function flush() {}