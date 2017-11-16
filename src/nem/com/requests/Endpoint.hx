package nem.com.requests;
import js.Promise;
import nis.NemRequestResult;


extern class Endpoint {

	function heartbeat( endpoint:Endpoint ):Promise<NemRequestResult>;
}