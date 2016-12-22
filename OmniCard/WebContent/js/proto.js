//var variable = {"key":"value"} || number || String || [] || 
//variable || variable["key"] || variable.key

//var Quo = function(String){this.status=string;}
//Quo.prototype.get_status = function(){return this.status;}

Object.create = function(o){
	var F = function(){};
	F.prototype = o;
	return new F();
};
Function.prototype.method=function(name,func){
	if(!this.prototype[name]){
		this.prototype[name]=func;
	}
};
var walk_the_DOM = function walk(node, func){
	func(node);
	node = node.firstChild;
	while(node){
		walk(node, func);
		node = node.nextSibling;
	}
}
Function.method('curry',function(){
	var slice = Array.prototype.slice;
		args = slice.apply(arguments);//apply : binding to this.
		that = this;
	return function(){
		return that.apply(null, args.concat(slice.apply(arguments)));
	};
});