module extra-built-in

	// built-ins that are not yet in WebDSL's built-in.app, instead they are defined in the compiler itself
	
	type Void {}
	type Bool {}
	type Int {}
	type Long {}
	type Float {}
	type Double {}
	type List {}
	type Set {}

	entity Entity {}
	type Object {}
	type UUID {}
	
	type Date {}
	type Time {}
	type DateTime {}
	
	function now() : DateTime {}
	function today() : Date {}
  
    type String {}
	type Secret {}
	type Text {}
	type WikiText {}
	type Email {}
	type URL {}
	type Patch {}
	
	type ATerm {}
  
	function cancel() {}
	function rollback() {} 
	function flush() {}
	function getValidationErrorsByName(s:String) {}
	function getRequestParameter(s:String) {}
	function attribute(s:String) {}
  
	template elements() {} // TODO: only defined in templates.
	template rawoutput() {}
	template rawoutput(s:String) {}
	template block() {}
	template text(s:String) {}
	template title() {}
	template includeJS(s:String) {}
	template includeCSS(s:String) {}

	// built-ins for session variable management
	entity SessionManager{
		messages : [SessionMessage]
		lastUse : DateTime
		logsqlMessage : Text (default=null)
		stayLoggedIn : Bool  	
	}
	entity SessionMessage{ 
		text :: Text 
	}
	function getSessionManager() : SessionManager { }
	