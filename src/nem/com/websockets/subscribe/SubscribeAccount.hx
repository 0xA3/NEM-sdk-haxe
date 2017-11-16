package nem.com.websockets.subscribe;
import nem.com.websockets.Connector;


extern class SubscribeAccount {

	function data( connector:Connector, callback:Dynamic, ?address:String ):Dynamic;
	
	var transactions:SubscribeTransactions;
	var mosaics:SubscribeMosaics;
	var namespaces:SubscribeNamespaces;
}