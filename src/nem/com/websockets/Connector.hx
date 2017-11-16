package nem.com.websockets;
import js.Promise;
import nis.Endpoint;


extern class Connector {
	
	var endpoint:Endpoint;
	var address:String;
	var socket:Dynamic;
	var stompClient:Dynamic;
	var timeoutReconnect:Dynamic;
	var connectionAttempts:Int;
	
	function create( endpoint:Endpoint, address:String ):Connector;
	function connect():Promise<Bool>;
	function close():Void;
}