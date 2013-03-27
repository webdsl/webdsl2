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
    var y := And [s.contains("1") | s : String in ["1","2","3"]];
    var y := Or [s.contains("1") | s : String in ["1","2","3"]];
    
    a[false] := "1";
    b["2"];
    
    for(x in [Ent1{}] where x>3 order by x.name limit "" offset false){
    	
    }
  }
}

