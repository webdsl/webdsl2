module function/example/function-demo

entity Ent1 {
	num : Int
	foo : String := "hello"
	foo -> List<Foo>
	foo -> [Foo]
	foo -> {Foo}
	
	extend function fun(a : function(String,String):Foo) {
		var a : String;
		var b : String := "foo";
		var c := "foo";
		var x := function(a : String, b : String): String {return a; };
		var y := function.bar(String,String,String):String;
		x := "foo";
		a("foog");
		b.a("foog");
		// var yy:=y(_, _, "foo", "bar");
		yy("a","b","c");
		yy("a","b");
		for(x : String in from Exp){
			
		}
		var x := [ e.prop | e : Entity in from Entity];
		goto lala();
		rendertemplate(demo);
		sendemail(sendQueuedEmail(queuedEmail));
		validatetemplate(elements());
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

var zzz := "foo"

// entity Ent2 : Ent1 { }
// 
// extend entity Ent1 { }
// 
// session sessentity { }
// 
// extend session sessentity { }
