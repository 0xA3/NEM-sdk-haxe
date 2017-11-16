package nem.com.requests.account;
import js.Promise;
import nis.transaction.metadata.TransactionMetaDataPair;
import nis.transaction.metadata.UnconfirmedTransactionMetaDataPair;


extern class Transactions {

	function incoming( endpoint:Endpoint, address:String, txHash:String, txId:String ):Promise<Array<TransactionMetaDataPair>>;
	function outgoing( endpoint:Endpoint, address:String, txHash:String, txId:String ):Promise<Array<TransactionMetaDataPair>>;
	function unconfirmed( endpoint:Endpoint, address:String ):Promise<Array<UnconfirmedTransactionMetaDataPair>>;
	function all( endpoint:Endpoint, address:String, txHash:String, txId:String ):Promise<Array<TransactionMetaDataPair>>;
	
}