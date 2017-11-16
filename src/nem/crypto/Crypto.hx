package nem.crypto;


extern class Crypto {

	var keyPair:KeyPair;
	var helpers:CryptoHelpers;
	var nacl:Dynamic;
	var js:Dynamic;
	function verifySignature( publicKey:String, data:String, signature:String ):Bool;
}