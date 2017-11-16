package nis;

typedef AccountMetaData = {
	
	var status:String;
	var remoteStatus:String;
	var cosignatoryOf:Array<AccountInfo>;
	var cosignatories:Array<AccountInfo>;
}