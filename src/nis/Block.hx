package nis;
import nis.transaction.Transaction;

typedef Block = {

	var timeStamp:Int;
	var signature:String;
	var prevBlockHash:Hash;
	var type:Int;
	var transactions:Array<Transaction>;
	var version:Int;
	var signer:String;
	var height:Int;
}