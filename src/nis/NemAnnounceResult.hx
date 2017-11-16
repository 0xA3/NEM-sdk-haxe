package;
import nis.Hash;

typedef NemAnnounceResult = {
	
	var type:Int;
	var code:Int;
	var message:String;
	var transactionHash:Hash;
	var innerTransactionHash:Hash;
}