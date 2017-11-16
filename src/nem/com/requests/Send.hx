package nem.com.requests;
import js.Promise;


extern class Send {

	@:selfCall function send<T>( options:Dynamic ):Promise<T>;
}