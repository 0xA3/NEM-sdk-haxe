package nis.transaction.metadata;
import nis.transaction.Transaction;

typedef UnconfirmedTransactionMetaDataPair = {
	
	var meta:UnconfirmedTransactionMetaData;
	var transaction:Transaction;
}