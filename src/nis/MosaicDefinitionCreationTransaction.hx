package nis;


typedef MosaicDefinitionCreationTransaction = {

	var timeStamp:Int;
	var signature:String;
	var fee:Int;
	var type:Int;
	var deadline:Int;
	var version:Int;
	var signer:String;
	var creationFee:Int;
	var creationFeeSink:String;
	var mosaicDefinition:MosaicDefinition;

}