package nis.transaction;
import nis.minCosignatoriesModification;


class MultisigAggregateModificationTransaction extends Transaction {
	
	public var modifications:Array<MultisigCosignatoryModification>;
	public var minCosignatories:minCosignatoriesModification;

	public function new( timeStamp:Int, signature:String, fee:Int, type:Int, deadline:Int, version:Int, signer:String, modifications:Array<MultisigCosignatoryModification>, minCosignatories:minCosignatoriesModification ) {
		
		super( timeStamp, signature, fee, type, deadline, version, signer );
		
		this.modifications = modifications;
		this.minCosignatories = minCosignatories;
		
	}
	
}