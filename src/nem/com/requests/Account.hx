package nem.com.requests;
import js.Promise;
import nem.com.requests.account.Harvesting;
import nem.com.requests.account.Mosaics;
import nem.com.requests.account.Namespaces;
import nem.com.requests.account.Transactions;
import nis.AccountMetaDataPair;
import nis.HarvestInfo;
import nis.transaction.metadata.TransactionMetaDataPair;
import nis.transaction.metadata.UnconfirmedTransactionMetaDataPair;
import nis.UnlockInfo;


extern class Account {

	function data( endpoint:Endpoint, address:String ):Promise<AccountMetaDataPair>;
	function dataFromPublicKey( endpoint:Endpoint, publicKey:String ):Promise<AccountMetaDataPair>;
	function unlockInfo( endpoint:Endpoint ):Promise<UnlockInfo>;
	function forwarded( endpoint:Endpoint, address:String ):Promise<AccountMetaDataPair>;
	
	var mosaics:Mosaics;
	var namespaces:Namespaces;
	var harvesting:Harvesting;
	var transactions:Transactions;
	
}