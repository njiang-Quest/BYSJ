package com.bysj.dao;

public interface AppraisalSQLStatement {
	
	//insert row into appraisal
	String ADDAPP = "INSERT INTO APPRAISAL VALUES (APPRAISAL_ID.nextval, ?,?,?,1,?,to_date(?,'YYYY-MM-DD'),to_date(?,'YYYY-MM-DD'),to_date(?,'YYYY-MM-DD'),to_date(?,'YYYY-MM-DD'),?,?)";

	//add appraisal Option 
	String ADDOPTION = "INSERT INTO APP_OPTION VALUES (APP_OPTION_ID.nextval,?,?,?,?)";
	
	//get app id
	String APPCURRID = "SELECT MAX(APPID) FROM APPRAISAL";
	
	//get all apps
	String GETALLAPPS = "SELECT APPID, TITLE, STATUS FROM APPRAISAL";
	
	//get curr app
	String CURRAPP = "SELECT * FROM APPRAISAL WHERE APPID=?";
	
	//get options
	String CURROPTIONS = "SELECT * FROM APP_OPTION WHERE APPID=?";
}
