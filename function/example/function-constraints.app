module function/example/function-constraints

entity Ent1 {
	foo : String := "1"
	
	function doit() {
		var x : Ent1 := Ent1{};
        x.foo := "2";
        foo := "2";     
	}
}

