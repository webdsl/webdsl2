module function/example/types

entity Ent1 {
  foo : String := "1"
	
  function doit() {
  	1;
  	"1";
  	true;
  	false;
  	1.0;
    !"123"; 
    if(56){
    	
    }      
    var x := if (1.1) true else false;
    for(x : Ent1 in [Ent1{}]){
    	
    }
    var y := [s.contains("1") | s : String in ["1","2","3"]];
  }
}

