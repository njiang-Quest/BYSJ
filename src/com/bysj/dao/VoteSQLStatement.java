package com.bysj.dao;

public interface VoteSQLStatement {
	//login
	String LOGIN = "SELECT USERID,NAME FROM MUSER WHERE NAME=? AND PWD=?";
	
	//add vote
	String ADD_VOTE = "INSERT INTO VOTE VALUES(VOTE_ID.nextval, to_date(?,'YYYY-MM-DD'),to_date(?,'YYYY-MM-DD'),0,?,?,?,?,?,to_number(?),1)";
 
	//get vote table property(total_user)
	String TOTAL_USER = "";
	
	//get votes
	String VOTES = "SELECT * FROM VOTE";
	
	//get current vote
	String CURRENT_VOTE = "SELECT * FROM VOTE WHERE VOTEID=?";	
	
	
	
	//get vote_detail
	String VOTE_DETAIL = "SELECT * FROM VOTE_DETAIL WHERE VOTEID=? AND DOPTION=?";
	
	//get one vote total persion count
	String TOTAL_COUNT = "SELECT TOTAL_USER FROM VOTE WHERE VOTEID=?";
	
	//get count of option
	String OPTION_COUNT = "SELECT COUNT FROM VOTE_DETAIL WHERE VOTEID=? AND DOPTION=?";

	//do_vote(only when this option's count equals zero)
	String DO_VOTE = "INSERT INTO VOTE_DETAIL VALUES(VOTE_DETAIL_ID.nextval, ?,1,?,?)";
	
	//when do vote have to update count (just when count>0) 
	String UPDATE_DETAIL_COUNT = "UPDATE VOTE_DETAIL SET COUNT=?, TOUPIAOREN=? WHERE VOTEID=? AND DOPTION=?";
	
	//update total count in table vote
	String UPDATE_TOTAL_COUNT = "UPDATE VOTE SET TOTAL_USER=? WHERE VOTEID=?";
	
	//To judge a first vote to this option
	String ISFIRST = "SELECT VOTE_DETAIL_ID FROM VOTE_DETAIL WHERE VOTEID=? AND DOPTION=?";
	
	//Current user have voted this voting
	String ALREADY_VOTE = "SELECT TOUPIAOREN FROM VOTE_DETAIL WHERE VOTEID=?";
	
	//get toupiaoren 
	String TOUPIAOREN = "SELECT TOUPIAOREN FROM VOTE_DETAIL WHERE VOTEID=? AND DOPTION=?";
	
	//User add affix in order to win the voting(first time)
	String ADD_AFFIX = "INSERT INTO VOTE_AFFIX VALUES(VOTE_AFFIX_ID.NEXTVAL, ?, ?, ?,?)";

	//Is this the first time to upload files to this vote
	String 	ISFIRSF_AFFIX = "SELECT * FROM VOTE_AFFIX WHERE VOTEID=? AND aoption=? AND AFFIXTYPE=?";

	//this is not the first to add affix
	String NOTFIRSTTIME = "UPDATE VOTE_AFFIX SET PATHNAME=? WHERE VOTEID=? AND aoption=? AND AFFIXTYPE=?";
	
	//get one user 's path
	String GETPATH = "SELECT PATHNAME FROM VOTE_AFFIX WHERE VOTEID=? AND aoption=?";
	
	
	//get one user 's path
	String GETALLPATH = "SELECT PATHNAME, aoption FROM VOTE_AFFIX WHERE VOTEID=? and aoption=? and affixtype=?";
	
	//get messages
	
}
