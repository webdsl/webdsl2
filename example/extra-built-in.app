module extra-built-in

	// built-ins that are not yet in WebDSL's built-in.app, instead they are defined in the compiler itself

	entity Entity {}
	
	type Void {}
	type Bool {}
	type Int {}
	type Long {}
	type Float {}
	type Double {}
	type List {}
	type Set {}
	type Object {}

  function cancel() {}
  function rollback() {} 
  function flush() {}
  
  type UUID { }
  type Date { }
  type Time { }
  
  type ATerm { }
  
  type Secret { }
  
  template elements() {} // TODO: only defined in templates.
