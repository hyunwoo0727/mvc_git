var move = function(context,page) {
	location.href = context + '/douglas.do?page='+page;
};
var douglas = (function() {
	var context = sessionStorage.getItem("context");
	return {
		init : function() {
			document.querySelector('#bt_bom').addEventListener('click',function(){move(context,'bom')},false);
			document.querySelector('#bt_dom').addEventListener('click',function(){move(context,'dom')},false);
			document.querySelector('#bt_kaup').addEventListener('click',function(){move(context,'kaup')},false);
			document.querySelector('#bt_account').addEventListener('click',function(){move(context,'account')},false);	
		}
	};
})();

var account = (function() {
	var _account_no = 0,_money =0;
	return {
		creator_init : function() {
			document.querySelector("#bt_spec_show").addEventListener('click',member.spec,false);
			document.querySelector("#bt_make_account").addEventListener('click',this.open,false);
			document.querySelector("#bt_deposit").addEventListener('click',this.deposit,false);
			document.querySelector("#bt_withdraw").addEventListener('click',this.withdraw,false);
		},
		open : function() {
			_account_no = Math.floor((Math.random()*899999)+100001);
			_money = 0;
			document.querySelector(".databox #account").innerHTML = _account_no;
			document.querySelector(".databox #money").innerHTML = _money;
		},
		deposit : function() {
			_money = _money + Number(document.querySelector("input[id=money]").value);
			document.querySelector(".databox #money").innerHTML = _money;
		},
		withdraw : function() {
			var withdraw_money = Number(document.querySelector("input[id=money]").value);
			if(_money < withdraw_money){
				alert('출금액이 더 큼');
			}else{
				_money = _money - withdraw_money;
				document.querySelector(".databox #money").innerHTML = _money;
			}
		}
	};
})();

var member = (function() {
	var _name = '', _ssn='', _gender='', _age=0;
	return {
		spec : function() {
			_name = document.querySelector(".formbox #name").value;
			_ssn = document.querySelector("#ssn").value;
			var scode = Number(_ssn.split("-")[1]);
			var ageYear = Number(_ssn.substring(0,2));
			_gender = (scode+2)%2==0? '여':'남';
			var nowYear = new Date().getFullYear();
			switch (scode) {
			case 1:	case 2:	case 5:	case 6:
				_age = nowYear - (1900 + ageYear) + 1;
				break;
			case 9:	case 0:
				_age = nowYear - (1800 + ageYear) + 1;
				break;
			default:
				_age = nowYear - (2000 + ageYear) + 1;
				break;
			}
			document.querySelector('.databox #name').innerHTML = _name;
			document.querySelector('#age').innerHTML = _age;
			document.querySelector('#gender').innerHTML = _gender;
		}
	};
})();

// ==================

var kaup = (function() {
	return {
		init : function() {
			document.querySelector("#bt_kaup_calc").addEventListener('click',this.calc,false)
		},
		calc : function() {
			var names = document.querySelector('#name').value;
			var height = document.getElementById('height').value;
			var weight = document.getElementById('weight').value;
			var result = '';
			var kaup = weight / ( height / 100) / (height / 100);
			if (kaup < 18.5) {
		         result = "저체중";
		    } else if (kaup >= 18.5 && kaup < 23) {
		         result = "정상체중" ;
		    } else if (kaup >= 23 && kaup < 25) {
		         result = "위험체중" ;
		    } else if (kaup >= 25 && kaup < 30) {
		         result = "비만 1단계" ;
		    } else if (kaup >= 30 && kaup < 40) {
		         result = "비만 2단계" ;
		    }
		     if (kaup >= 40) {
		         result = "비만 3단계" ;
		    }
		     document.querySelector("#result").innerHTML=names +"은 BMI지수는 "+kaup+"이고," +result +"이다.";
		}
	};
})();



