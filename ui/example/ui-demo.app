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