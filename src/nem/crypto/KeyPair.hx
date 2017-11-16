package nem.crypto;


extern class KeyPair {

	function create( hexdata:String ):Dynamic;
	// used in nem.crypto.Crypto
	//function verifySignature( publicKey:String, data:String, signature:String ):Bool;
}