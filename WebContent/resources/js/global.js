var global = {
	context : '',
	setContext : function(param) {
		this.context = param;
	},
	init : function(param) {
		var bt_js_go = document.querySelector('#bt_js_go');
		this.setContext(param);
		this.move();
	},
	move : function() {
		console.log('18',this.context)
		location.href= this.context+"/douglas.do";
	}
};