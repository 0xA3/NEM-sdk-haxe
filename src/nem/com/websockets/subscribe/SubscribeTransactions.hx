package nem.com.websockets.subscribe;
import nem.com.websockets.Connector;


extern class SubscribeTransactions {

	function recent( connector:Connector, callback:Dynamic, ?address:String ):Dynamic;
	function confirmed( connector:Connector, callback:Dynamic, ?address:String ):Dynamic;
	function unconfirmed( connector:Connector, callback:Dynamic, ?address:String ):Dynamic;
}