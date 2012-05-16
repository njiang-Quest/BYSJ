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
	
	//do 
	String DO_ANSWER = "INSERT INTO APP_ANSWER VALUES(APP_ANSWER_ID.nextval, ?,?,?,?)";

	//people take part in canpingren
	String CANPING = "INSERT INTO APP_YIPING VALYES(APP_YIPING_ID.nextval,?,SYSDATE";

	//have already ping
	String ALREADYPING = "SELECT * FROM APP_YIPING WHERE APPID=? AND CANPINGREN=?";
	
	//summary
	String SUMMARY = "select  aoption, kaopingren,sum(escore) from app_answer where appid=? group by aoption,kaopingren order by kaopingren";
	
	//aSummart
	String ASUMMARY = "select  kaopingren,sum(escore) from app_answer where appid=? group by kaopingren order by kaopingren";
}
