package nis.transaction;


class MultisigTransaction extends Transaction {
	
	public var otherTrans:Transaction;
	public var signatures:Array<MultisigSignatureTransaction>;

	public function new( timeStamp:Int, signature:String, fee:Int, type:Int, deadline:Int, version:Int, signer:String, otherTrans:Transaction, signatures:Array<MultisigSignatureTransaction> ) {
		
		super( timeStamp, signature, fee, type, deadline, version, signer );
		
		this.otherTrans = otherTrans;
		this.signatures = signatures;
		
	}
	
}