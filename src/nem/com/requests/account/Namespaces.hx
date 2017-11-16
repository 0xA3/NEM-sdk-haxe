package nem.com.requests.account;
import js.Promise;
import nis.NamespaceMetaDataPair;


extern class Namespaces {

	function owned( endpoint:Endpoint, address:String, ?parent:String ):Promise<Array<NamespaceMetaDataPair>>;
}