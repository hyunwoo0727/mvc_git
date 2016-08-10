var context = {
		name : '',
		setName : function(param){
			console.log('SET CONTEXT : '+param);
			this.name = param;
		},
		bom_go : function(){
			location.href=this.name+'/douglas.do?page=bom';
		},
		dom_go : function(){
			location.href=this.name+'/douglas.do?page=dom';
		},
		creator_go : function(){
			console.log('CONTEX 22 : '+ this.name);
			location.href=this.name+'/douglas.do?page=creator';
		},
		init : function(param) {
			console.log('CONTEXT : '+param);
			this.setName(param);
			var bt_bom = document.querySelector('#bt_bom');
			var bt_dom = document.querySelector('#bt_dom');
			var bt_kaup = document.querySelector('#bt_kaup');
			var bt_creator = document.querySelector('#bt_creator');
			bt_bom.addEventListener('click',this.bom_go,false);
			bt_dom.addEventListener('click',this.dom_go,false);
			bt_creator.addEventListener('click',this.creator_go,false);
		}
};

function creator_init() {
	document.querySelector('#bt_spec_show').addEventListener('click',member_spec,false);
	document.querySelector('#bt_make_account').addEventListener('click',open_account,false);
	document.querySelector('#bt_deposit').addEventListener('click',deposit,false);
	document.querySelector('#bt_withdraw').addEventListener('click',withdraw,false);

}



function member_spec() {
	var member = new Object();
	member.name = document.querySelector('.formbox #name').value;
	var ssn = document.querySelector('#ssn').value;
	var scode = Number(ssn.split("-")[1]);
	var ageYear = Number(ssn.substring(0,2));
	member.gender = (scode+2)%2==0? '여':'남';
	var nowYear = new Date().getFullYear();
	switch (scode) {
	case 1:	case 2:	case 5:	case 6:
		member.age = nowYear - (1900 + ageYear) + 1;
		break;
	case 9:	case 0:
		member.age = nowYear - (1800 + ageYear) + 1;
		break;
	default:
		member.age = nowYear - (2000 + ageYear) + 1;
		break;
	}
	document.querySelector('.databox #name').innerHTML = member.name;
	document.querySelector('#age').innerHTML = member.age;
	document.querySelector('#gender').innerHTML = member.gender;
}

// ==================
function kaup_init(){
	var bt_kaup_calc = document.querySelector('#bt_kaup_calc');
	bt_kaup_calc.addEventListener('click',kaup_calc,false);
}

function kaup_calc(){
	var name = document.querySelector('#name').value;
	var height = document.getElementById('height').value;
	var weight = document.getElementById('weight').value;
	console.log('name'+name);
	console.log('height'+height);
	console.log('weight'+weight);
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
     document.getElementById('result').innerHTML=name +"은 BMI지수는 "+kaup+"이고," +result +"이다.";
}

// make account 
function open_account() {
	var account = {
		account_no : 0,
		money : 0
	}
//	account.account_no = ((Math.random()*899999)+100001).toFixed(0);
	account.account_no = Math.floor((Math.random()*899999)+100001);
	console.log('account',account.account_no);
	document.querySelector('#account').innerHTML = account.account_no;
	document.querySelector('article[id=money]').innerHTML = account.money;
	
}
function deposit() {	
	document.querySelector('article[id=money]').innerHTML = 
		Number(document.querySelector('article[id=money]').innerHTML)
	  + Number(document.querySelector('input[id=money]').value);
}
function withdraw() {
	var money = Number(document.querySelector('article[id=money]').innerHTML);
	var withdraw_money = Number(document.querySelector('input[id=money]').value);
	if(money < withdraw_money){
		alert('출금액이 더 큼');
	}else{
		document.querySelector('article[id=money]').innerHTML = money - withdraw_money;
	}
}
