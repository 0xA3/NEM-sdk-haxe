package nem.com.requests;
import js.Promise;


extern class Transaction {

	function announce( endpoint:Endpoint, serializedTransaction:Dynamic ):Promise<NemAnnounceResult>;
}