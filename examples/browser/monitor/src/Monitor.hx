package;
import browserify.Require;
import haxe.Json;
import haxe.Timer;
import js.jquery.JQuery;
import nem.Nem;
import nis.Block;
import nis.transaction.Transaction;

@:expose 
class Monitor {
	
	static var timer:Timer;
	static var transactions = new Map<Int, Array<Transaction>>(); // For ease we store transactions in a map, so we can use height as a key to find data
	static var lastHeight = 0; // Init last height
	static var nem:Nem;
	static private var endpoint:Dynamic;
	
	static function main() {
		
		// Load nem-browser library
		var nem_sdk = Require.require( 'nem-sdk' );
		nem = Reflect.getProperty( nem_sdk, 'default' );
		
		// Create an NIS endpoint object
		endpoint = nem.model.objects.create( 'endpoint' )( nem.model.nodes.defaultMainnet, nem.model.nodes.defaultPort );
		
		// Set start date of the monitor
		var startDate = Date.now();
		
		// Add event to the stream div
		new JQuery( '#stream' ).append( '<p><b>' + startDate.toString() + ':</b> Starting monitor...</p>' );
		
		timer = new Timer( 10000 ); // Check the chain every 10 seconds
		timer.run = loop;
		
		loop(); // don't wait for 10 seconds the first time
	}
	
	static function loop():Void {
		
		// Query the chain using a nem.com.requests promise
		nem.com.requests.chain.lastBlock( endpoint ).then( function( res:Block ) {
			
			// If response height is above the last height
			if ( res.height > lastHeight ) {
				// Set date of event
				var date = Date.now();
				
				// Add event to the stream div
				new JQuery( '#stream' ).prepend( '<p><b>' + date.toString() + ':</b> New block found, height: ' + Std.string( res.height ) + '</p>' );
				
				// Update last height
				lastHeight = res.height;
				
				// If block has transactions
				if ( res.transactions.length > 0 ) {
					
					// Add event to the stream div
					new JQuery( '#stream' ).prepend( '<p><b>' + date.toString() + ':</b> This block contains transactions: <a onClick="Monitor.showTransactions(' + res.height + ')">See</a></p>' );
					
					// Store block transactions
					transactions.set( res.height, res.transactions );
				} else {
					
					// Add event to the stream div
					new JQuery( '#stream' ).prepend( '<p><b>' + date.toString() + ':</b> This block is empty</p>' );
				}
			} else {
				
				// Set date of event
				var date = Date.now();
				
				// Add event to the stream div
				new JQuery( '#stream' ).prepend( '<p><b>' + date.toString() + ':</b> No activity during the last 10 seconds</p>' );
			}
		}, function( err ) {
			
			// Set date of event
			var date = Date.now();
			
			// Add event to the stream div
			new JQuery( '#stream' ).prepend( '<p><b>' + date.toString() + ':</b> '+ err.toString() +'</p>' );
		});
	}
	
	/**
	 * Function to open modal and set transaction data into it
	 */
	static function showTransactions( height:Int ):Void {
		
		// Set the block height in modal title
		new JQuery( '#txsHeight' ).html( Std.string( height ));
		
		// Get the transactions for that block
		var txs = transactions.get( height );
		
		// Reset the modal body
		new JQuery( '#txs').html('');
		
		// Loop transactions
		for ( tx in txs ) {
			// Add stringified transaction object to the modal body
			new JQuery( '#txs' ).append( '<pre>' + Json.stringify( tx ) + '</pre>' );
		}
		
		// Open modal
		untyped new JQuery( '#myModal' ).modal( 'show' );
	}
}