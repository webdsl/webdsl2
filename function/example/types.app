module function/example/types
entity Ent2{}
entity Ent1 : Ent2 {
  foo : String := "1"
	
  function doit(sarg:String) {
  	1; 
  	"1";
  	true;
  	false;
  	1.0;
    !"123";
    Ent1{};
    [Ent1{}];
    {Ent1{}};
    testcallnoargs();
    testcall("");
    testcall(12);  
    1+1;  
    1.0+1.0;
    "123"+123;
    "123"+"123";
    "123"+1.2;
    1+"123"; 
    Ent1{}+Ent1{};
    132-"Sdfs";
    123-123;
    1.0*1.0;
    23423%2345;
    true && true || false == true;
    "" == 1;
    1.1 != "123";
    Ent1{} == Ent1{};
    Ent2{} != Ent1{};
    now() == today();
    sarg != "" as Email;
    sarg == 123;
    var testvar : Ent2 := Ent1{};
    if(56){ 
    	
    }      
    var x := if (1.1) true else false;
    for(x : Ent1 in [Ent1{}]){
    	 
    }
    var y := [s.contains("1") | s : String in ["1","2","3"]];
    var y := And [s.contains("1") | s : String in ["1","2","3"]];
    var y := Or [s.contains("1") | s : String in ["1","2","3"]];
    
    a[false] := "1";
    b["2"];
    
    for(x in [Ent1{}] where x>3 order by x.name limit "" offset false){
    	
    }
  } 
  
  function testcallnoargs(){}
  function testcall(s:String){}
  function testcall(i:Int){}
}

