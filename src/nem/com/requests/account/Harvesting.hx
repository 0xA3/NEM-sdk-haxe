package nem.com.requests.account;
import js.Promise;
import nis.HarvestInfo;


extern class Harvesting {

	function blocks( endpoint:Endpoint, address:String ):Promise<HarvestInfo>;
	function start( endpoint:Endpoint, privateKey:String ):Void;
	function stop( endpoint:Endpoint, privateKey:String ):Void;
	
}