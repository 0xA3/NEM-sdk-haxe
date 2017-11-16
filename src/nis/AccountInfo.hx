package nis;

typedef AccountInfo = {
	
	var address:String;
	var balance:Int;
	var vestedBalance:Int;
	var importance:Float;
	var publicKey:String;
	var label:Null<String>;
	var harvestedBlocks:Int;
}