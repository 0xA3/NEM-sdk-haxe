package nis.transaction;
import nis.Hash;


class MultisigSignatureTransaction extends Transaction {
	
	public var otherHash:Hash;
	public var otherAccount:String;

	public function new( timeStamp:Int, signature:String, fee:Int, type:Int, deadline:Int, version:Int, signer:String, otherHash:Hash, otherAccount:String ) {
		
		super( timeStamp, signature, fee, type, deadline, version, signer );
		
		this.otherHash = otherHash;
		this.otherAccount = otherAccount;
		
	}
	
}