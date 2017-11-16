package nem.com.requests;
import js.Promise;
import nis.transaction.metadata.TransactionMetaDataPair;


extern class Supernode {

	function all():Promise<NemAnnounceResult>;
	function byHash( endpoint:Endpoint, txHash:String ):Promise<TransactionMetaDataPair>
}