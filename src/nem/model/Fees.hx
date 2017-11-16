package nem.model;
import nis.Mosaic;


extern class Fees {

	var multisigTransaction:Float;
	var rootProvisionNamespaceTransaction:Float;
	var subProvisionNamespaceTransaction:Float;
	var mosaicDefinitionTransaction:Float;
	var namespaceAndMosaicCommon:Float;
	var signatureTransaction:Float;
	
	function calculateMosaics( multiplier:Int, mosaics:Dynamic, attachedMosaics:Array<Mosaic> ):Int;
	function calculateMinimum( numNem:Int ):Int;
	function calculateMessage( message:Dynamic ):Int;
	function calculateXemEquivalent( multiplier:Int, q:Int, sup:Int, divisibility:Int ):Int;
	
	var currentFeeFactor:Float;
	var importanceTransferTransaction:Float;
	var multisigAggregateModificationTransaction:Float;

}