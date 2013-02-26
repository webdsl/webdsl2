module function/example/function-demo

entity Ent1 {

	foo : String := "hello"
	
	extend function fun(a : function(String,String):Foo) {
		var x := function(a : String, b : String): String {return a; };
		var y := function.bar(String,String,String):String;
		// var y := function(a : String, b : String): String {return a; } ("foo");
		x("foog");
		a("foog");
		y(*, "foo", "bar");
		b.y(*, "foo", "bar");
	}
	
	function fun() : Ent1 {
		return null;
	}
	
	function fun(a : Int, b : Ent1) : Ent1 {

		return null;
	}
	
	static function foo() : Int {
		return 0;
	}
	
}

session Sess {
	
}

function foo() : Int {
	x("foog");
	return 0;
}

extend function foo() : Int {
	return 0;
}

// entity Ent2 : Ent1 { }
// 
// extend entity Ent1 { }
// 
// session sessentity { }
// 
// extend session sessentity { }
