package nis.transaction;
import nis.MosaicDefinition;


class MosaicDefinitionCreationTransaction extends Transaction {
	
	public var creationFee:Int;
	public var creationFeeSink:String;
	public var mosaicDefinition:MosaicDefinition;

	public function new( timeStamp:Int, signature:String, fee:Int, type:Int, deadline:Int, version:Int, signer:String, creationFee:Int, creationFeeSink:String, mosaicDefinition:MosaicDefinition ) {
		
		super( timeStamp, signature, fee, type, deadline, version, signer );
		
		this.creationFee = creationFee;
		this.creationFeeSink = creationFeeSink;
		this.mosaicDefinition = mosaicDefinition;
		
	}
	
}