package nis.transaction;
import nis.Message;
import nis.Mosaic;


class TransferTransaction extends Transaction {
	
	public var amount:Int;
	public var recipient:String;
	public var message:Message;
	public var mosaics:Array<Mosaic>;

	public function new( timeStamp:Int, amount:Int, signature:String, fee:Int, recipient:String, type:Int, deadline:Int, message:Message, version:Int, signer:String, mosaics:Array<Mosaic> ) {
		
		super( timeStamp, signature, fee, type, deadline, version, signer );
		
		this.amount = amount;
		this.recipient = recipient;
		this.message = message;
		this.mosaics = mosaics;
		
	}
	
}