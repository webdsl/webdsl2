module foo

entity Bar {
	function baz() {
		now().addMinutes(4);         
	}
	function baz(a : String) {
		a.get();
		a.get1();
		"".bla;
		("" as TestString).length();
		("" as TestString).testmethod();
		stringfun(("" as TestString));
	}
	function stringfun(s:String){}
	function baz(b : Bar) {
		["1"].test;
		var a : List<String> := ["2"];
		var b : [String] := ["2"];
		a.test;
		b.test;
	}	
	
}

type String{
	dont.care as get():String 
	get1():String 
	bla: Int
}

type TestString : String{
	testmethod():String
}

type List { 
	test : Int
}