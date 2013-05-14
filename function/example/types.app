module function/example/types
entity Ent3 {}
entity Ent2 : Ent3 {}
entity Ent1 : Ent2 {
  foo : String := "1"
	
  function doit(sarg:String) {
  	1; 
  	"1";
  	true;
  	false;
  	1.0;
    !"123"; // error
    Ent1{};
    [Ent1{}];
    {Ent1{}};

    1+1;  
    1.0+1.0;
    "123"+123;
    "123"+"123";
    "123"+1.2;
    1+"123"; // error
    Ent1{}+Ent1{}; // error
    132-"Sdfs"; // error
    123-123;
    1.0*1.0;
    23423%2345;
    true && true || false == true;
    "" == 1; // error
    1.1 != "123"; // error
    Ent1{} == Ent1{};
    Ent2{} != Ent1{};
    now() == today();
    sarg != "" as Email;
    sarg == 123; // error
     
    var testvar : Ent2 := Ent1{};
    if(56){ // error
    	
    }      
    var x := if (1.1) true else false; // error
    for(x : Ent1 in [Ent1{}]){ // error
    	 
    }
    var y1 := [s.contains("1") | s : String in ["1","2","3"]];
    var y2 := And [s.contains("1") | s : String in ["1","2","3"]];
    var y3 := Or [s.contains("1") | s : String in ["1","2","3"]];
    
    a[false] := "1"; // error
    b["2"]; // error
    
    for(x in [Ent1{}] where x>3 order by x.name limit "" offset false){ // error
    	
    }
  }   
  function calltests(){
    testcallnoargs();
    testcall("");
    testcall(12);
    testcall(Ent1{});
    testcall(Ent1{},Ent1{});
    testcall(Ent1{},Ent2{});
    testcall(Ent2{},Ent2{}); //error, ambiguous
    testcall(Ent2{},Ent3{});
    testcall(Ent3{},Ent2{});
  }
  function testcallnoargs(){}
  function testcall(s:String){}
  function testcall(i:Int){}
  function testcall(e:Ent1){}
  function testcall(e:Ent2){}
  function testcall(e:Ent3){}
  function testcall(e1:Ent1,e2:Ent2){}
  function testcall(e1:Ent3,e2:Ent2){}
  function testcall(e1:Ent2,e2:Ent3){}
  
} 

