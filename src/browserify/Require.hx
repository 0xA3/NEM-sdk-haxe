package browserify;

@:native("require")
extern class Require {

	/**
		Fetches a library and returns the reference to it.
	**/
	@:selfCall
	static function require( module:String ):Dynamic;
	
}