module function/example/function-demo

entity Ent1 {

	extend function fun() {
		
	}
	
	function fun() : Ent1 {
		return null;
	}
	
	function fun(a : Int, b : Ent1) : Ent1 {
		function : Int {
			return null;
		}.foo;
		return null;
	}
	
	static function foo() : Int {
		return 0;
	}
	
}

function foo() : Int {
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
