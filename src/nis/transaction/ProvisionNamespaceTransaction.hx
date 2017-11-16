package nis.transaction;


class ProvisionNamespaceTransaction extends Transaction {
	
	public var rentalFeeSink:String;
	public var rentalFee:Int;
	public var newPart:String;
	public var parent:String;

	public function new( timeStamp:Int, signature:String, fee:Int, type:Int, deadline:Int, version:Int, signer:String, rentalFeeSink:String, rentalFee:Int, newPart:String, parent:String ) {
		
		super( timeStamp, signature, fee, type, deadline, version, signer );

		this.rentalFeeSink = rentalFeeSink;
		this.rentalFee = rentalFee;
		this.newPart = newPart;
		this.parent = parent;
		
	}
	
}