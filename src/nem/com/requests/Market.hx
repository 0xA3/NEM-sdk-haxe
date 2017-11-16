package nem.com.requests;
import js.Promise;
import poloniex.MarketInfo;

extern class Market {

	function xem():Promise<MarketInfo>;
	function btc():Promise<MarketInfo>;
}