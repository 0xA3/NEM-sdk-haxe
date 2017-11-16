package nem.com.websockets.requests;
import nem.com.websockets.Connector;
import nem.com.websockets.requests.RequestsTransactions;


extern class RequestsAccount {
	
	// account.js - requestAccountData
	function data( connector:Connector, ?address:String ):Dynamic;
	
	var transactions:RequestsTransactions;
	var mosaics:RequestsMosaics;
	var namespaces:RequestNamespaces;
}