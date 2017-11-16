package nem.utils;
import haxe.io.UInt8Array;
import nis.Mosaic;
import nis.MosaicId;


extern class Serialization {

    function _serializeSafeString( str:String ):UInt8Array;
    function _serializeUaString( str:String ):UInt8Array;
    function _serializeLong( value:Dynamic ):UInt8Array;
    function _serializeMosaicId( mosaicId:MosaicId ):UInt8Array;
    function _serializeMosaicAndQuantity( mosaic:Mosaic ):UInt8Array;
    function _serializeMosaics( entity:Array<Mosaic> ):UInt8Array;
    function _serializeProperty( entity:Dynamic ):UInt8Array;
    function _serializeProperties( entity:Dynamic ):UInt8Array;
    function _serializeLevy( entity:Dynamic ):UInt8Array;
    function _serializeMosaicDefinition( entity:Dynamic ):UInt8Array;
    function serializeTransaction( entity:Dynamic ):UInt8Array;
	
}