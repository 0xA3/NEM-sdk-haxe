package nis.transaction;


class Transaction {
	
	public var timeStamp:Int;
	public var signature:String;
	public var fee:Int;
	public var type:Int;
	public var deadline:Int;
	public var version:Int;
	public var signer:String;
	
	public function new( timeStamp:Int, signature:String, fee:Int, type:Int, deadline:Int, version:Int, signer:String ) {
		
		this.timeStamp = timeStamp;
		this.signature = signature;
		this.fee = fee;
		this.type = type;
		this.deadline = deadline;
		this.version = version;
		this.signer = signer;
		
	}
}