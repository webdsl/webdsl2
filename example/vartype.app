module vartype

imports bar

entity VarType {
	bar -> Bar
	
	function bla() : String {
		var a : String := "bla";
		
		a;
		
		bar.baz();
	}
}