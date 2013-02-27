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
	}

	page navigate(){
		navigate testnav() { "go" }
		navigate (testnav()) { "go" }
		navigate testnav() []{ "go" }
		navigate (testnav())[] { "go" }
	}

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