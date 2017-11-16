package nem.utils;
import nis.transaction.Transaction;


extern class Helpers {

	function needsSignature( multisigTransaction:Dynamic, data:Dynamic ):Bool;
	function haveTx( hash:String, array:Array<Transaction> ):Bool;
	function getTransactionIndex( hash:String, array:Array<Transaction> ):Int;
	function haveCosig( pubKey:String, array:Array<String> ):Bool;
	
	var NEM_EPOCH:Date;
	function createNEMTimeStamp():Float;
	function fixPrivateKey( privateKey:String ):String;
	function isPrivateKeyValid( privateKey:String ):Bool;
	function isPublicKeyValid( publicKey:String ):Bool;
	function createTimeStamp():Date;
	function getTimestampShort( date:Date ):String;
	function convertDateToString( date:Date ):String;
	function extendObj():Dynamic;
	function isHexadecimal( str:String ):Bool;
	function searchMosaicDefinitionArray( mosaicDefinitionArray:Array<Dynamic>, keys:Array<String> ):Dynamic;
	function grep( items:Iterable<Dynamic>, callback:Dynamic-> Int -> Bool ):Dynamic;
	function isTextAmountValid( n:String ):Bool;
	function cleanTextAmount( n:String ):Int;
	function formatEndpoint( endpoint:Dynamic ):String;
	function isJSON( data:String ):Bool;
	
}