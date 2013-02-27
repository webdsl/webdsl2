module function/example/function-demo

entity Ent1 {
	foo : String
	bar -> List<String>
	
	function doit() {
		return;
	}
	
	function undoit() {
		foo;
	}
}

entity Ent2 : Ent1 {
	barbar -> Ent1
}

extend entity Ent2 {
	barrie : String
	function foo() {
		barbar;
		barrie;
	}
}