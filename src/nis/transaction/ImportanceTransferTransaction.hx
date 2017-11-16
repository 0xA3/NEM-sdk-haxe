package nis.transaction;


class ImportanceTransferTransaction extends Transaction {
	
	public var mode:Int;
	public var remoteAccount:String;

	public function new( timestamp:Int, signature:String, fee:Int, mode:Int, remoteAccount:String, type:Int, deadline:Int, version:Int, signer:String ) {
		
		super( timeStamp, signature, fee, type, deadline, version, signer );
		
		this.mode = mode;
		this.remoteAccount = remoteAccount;
		
	}
	
}