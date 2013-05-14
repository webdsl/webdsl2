module test

	page pagetest(i:Int, s:String){}
	template templatetest(b:Bool){}
	define page pagetest2(f:Float){}
	define templatetest2(){}

	template templatecallvariants(){
		testcall
		testcall()
		testcall[]
		testcall{}
		testcall()[]
		testcall[]{}
		testcall(){}
		testcall()[]{}
		
		testcall("")
		testcall(12)
		testcall(Ent1{})
		testcall(Ent1{},Ent1{})
		testcall(Ent1{},Ent2{})
		testcall(Ent2{},Ent2{}) //error, ambiguous
		testcall(Ent2{},Ent3{})
		testcall(Ent3{},Ent2{})
	}
	
	template testcall(){}
	template testcall(s:String){}
	template testcall(i:Int){}
	template testcall(e:Ent1){}
	template testcall(e:Ent2){}
	template testcall(e:Ent3){}
	template testcall(e1:Ent1,e2:Ent2){}
	template testcall(e1:Ent3,e2:Ent2){}
	template testcall(e1:Ent2,e2:Ent3){}

    entity Ent3 {}
    entity Ent2 : Ent3 {}
    entity Ent1 : Ent2 {}

	page navigate(){
		navigate testnav() { "go" }
		navigate (testnav()) { "go" }
		navigate testnav() []{ "go" }
		navigate (testnav())[] { "go" }
	}
	page testnav(){}

	page action(s:String){
		action foo(i:Int){
			log(s+i);
		}
		submit foo(){ }
		submitlink foo(){ }
	}

	entity User{
		name : String
	}
	page forvariants(){
		for(u:User){ output(u) }
		for(u:User in User.all()){ output(u) }
		for(u in from User){ output(u) }
		for(i:Int from 0 to 10){ output(i) }
	}

	page pagetest(i:Int, s:String){
		var j := 1
		output(i)
		output(s)
		output(j)
	}

	template templatetest(b:Bool){
		input(b)
	}

	define page pagetest2(){
		var f : Float := 0.0
		form{
			input(f)
		}
	}

	define templatetest2(){
		for(i:Int from 0 to 5){
			calltemplate(i)
		}
	}