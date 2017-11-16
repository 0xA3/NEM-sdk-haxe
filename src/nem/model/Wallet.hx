package nem.model;


extern class Wallet {

	function createPRNG( walletName:String, password:String, network:Int ):Dynamic;
	function createBrain( walletName:String, passphrase:String, network:Int ):Dynamic;
	function importPrivateKey( walletName:String, password:String, privateKey:String, network:Int ):Dynamic;
	
}