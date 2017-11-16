package nis.transaction;
import nis.MosaicId;


class MosaicSupplyChangeTransaction extends Transaction {
	
	public var supplyType:Int;
	public var delta:Int;
	public var mosaicId:MosaicId;

	public function new( timeStamp:Int, signature:String, fee:Int, type:Int, deadline:Int, version:Int, signer:Int, supplyType:Int, delta:Int, mosaicId:MosaicId ) {
		
		super( timeStamp, signature, fee, type, deadline, version, signer );
		
		this.supplyType = supplyType;
		this.delta = delta;
		this.mosaicId = mosaicId;
		
	}
	
}