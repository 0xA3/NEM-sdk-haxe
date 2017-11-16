package nem.utils;

typedef NotaryData = {
	
	var filename:String;
	var tags:String;
	var fileHash:String;
	var txHash:String;
	var txMultisigHash:String;
	var owner:String;
	var fromMultisig:String;
	var dedicatedAccount:String;
	var dedicatedPrivateKey:String;
}

extern class Nty {

	function createNotaryData( filename:String, tags:String, fileHash:String, txHash:String, txMultisigHash:String, owner:String, fromMultisig:String, dedicatedAccount:String, dedicatedPrivateKey:String ):{ data:Array<NotaryData> };
	function updateNotaryData( ntyData:Array<NotaryData>, newNtyData:NotaryData ):{ data:Array<NotaryData> };
	
}