module function/example/hql-demo


	function foobar() {
		var b := from User as u;
		var c := select u from User as u, Secret as s;
		var x := from User as u where u.name = 1 and u.password = 3;
		var y := from User where name = 1 and password = 3;
		var z := from User as u where u = ~x;
		var a := select u from User as u, Secret as s where s = u;
	}