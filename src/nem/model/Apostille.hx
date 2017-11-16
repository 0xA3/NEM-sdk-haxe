package nem.model;


extern class Apostille {

	function create( common:Dynamic, fileName:String, fileContent:Dynamic, tags:String, hashing:Dynamic, isMultisig:Bool, isPrivate:Bool, network:Int ):Dynamic;
	function generateAccount( common:Dynamic, fileName:String, network:Int ):{ address:String, privateKey:String };
	
	var hashing:Dynamic
	
	function verify( fileContent:Dynamic, apostilleTransaction:Dynamic ):Bool;
	
}