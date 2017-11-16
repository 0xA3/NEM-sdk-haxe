package nem.utils;
import nis.Message;
import nis.Mosaic;
import nis.MosaicId;


extern class Format {

	function splitHex( data:String ):Array<String>;
	function hexMessage( msg:Message ):String;
	function hexToUtf8( data:Dynamic ):String;
	function importanceTransferMode( data:String ):String;
	function nemValue( data:Int ):Array<Int>;
	function nemImportanceScore( data:Float ):Array<Int>;
	function levyFee( mosaic:Mosaic, multiplier:Float, levy:Float, mosaics:Array<Mosaic> ):String;
	function supplyRaw( data:Dynamic, _divisibility:Float ):Array<String>;
	function supply( data:String, mosaicId:MosaicId, mosaics:Array<Mosaic> ):Array<String>;
	function nemDate( data:Float ):String;
	function pubToAddress( input:String, networkId:Int ):String;
	function address( input:String ):String;
	function mosaicIdToName( mosaicId:MosaicId ):String;
	function txTypeToName( id:Int ):String;

}