module extra-built-in

	// built-ins that are not yet in WebDSL's built-in.app, instead they are defined in the compiler itself
	
	type Void {}
	type Bool {}
	type Int {}
	type Long {}
	type Float {}
	type Double {}
	type List {
		length : Int
		set() : Set
		removeAt(Int)
	}
	type Set {
		length : Int
	}

	entity Entity {
		function save(){}
		function delete(){}
	}
	type Object {}
	type UUID {}
	
	type Date : DateTime {}
	type Time : DateTime {}
	type DateTime {}
	
	function now() : DateTime {}
	function today() : Date {}
  
    type String {}
	type Secret : String {}
	type Text : String {}
	type WikiText : String {}
	type Email : String {}
	type URL : String {}
	type Patch : String {}
	
	type ATerm {}
  
	function cancel() {}
	function rollback() {} 
	function flush() {}
	function getValidationErrorsByName(s:String):[String] {}
	function getRequestParameter(s:String):String {}
	function attribute(s:String):String {}
  
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
	
	// built-ins for email templates
	template to(s:String){}
    template from(s:String){}
    template subject(s:String){}
    template cc(s:String){}
    template bcc(s:String){}
    template replyTo(s:String){}
