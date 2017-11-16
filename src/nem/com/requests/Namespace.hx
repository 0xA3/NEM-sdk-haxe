package nem.com.requests;
import nem.com.requests.Namespace;
import nis.Endpoint;
import js.Promise;
import nis.MosaicDefinition;
import nis.NamespaceInfo;
import nis.NamespaceMetaDataPair;


extern class Namespace {

	function roots( endpoint:Endpoint, id:Int ):Promise<Array<NamespaceMetaDataPair>>;
	function mosaicDefinitions( endpoint:Endpoint, id:Int ):Promise<Array<MosaicDefinition>>;
	function info( endpoint:Endpoint, id:Int ):Promise<NamespaceInfo>;
}