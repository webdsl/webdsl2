module vartype

imports bar

entity VarType {
	bar -> Bar
	
	vt -> VarType
	
	function bla() : String {
		var a : String := "bla";
		
		a;
		
		bar.bar;
		vt.vt;
		
		bar.baz(1);
		bar.baz(bar);
		bar.baz("");
		bar.baz();
	}
}