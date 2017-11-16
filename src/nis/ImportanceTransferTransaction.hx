package nis;


typedef ImportanceTransferTransaction = {

	var timeStamp:Int;
	var signature:String;
	var fee:Int;
	var mode:Int;
	var remoteAccount:String;
	var type:Int;
	var deadline:Int;
	var version:Int;
	var signer:String;
}