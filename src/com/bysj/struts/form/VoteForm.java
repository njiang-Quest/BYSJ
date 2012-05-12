/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.bysj.struts.form;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

/** 
 * MyEclipse Struts
 * Creation date: 05-09-2012
 * 
 * XDoclet definition:
 * @struts.form name="voteForm"
 */
public class VoteForm extends ActionForm {
	/*
	 * Generated fields
	 */

	/** beginTime property */
	private String beginTime;

	/** title property */
	private String title;

	/** context property */
	private String context;

	/** choose property */
	private String optional;

	/** options property */
	private String[] options;

	/** endTime property */
	private String endTime;

	/*
	 * Generated Methods
	 */

	/** 
	 * Method validate
	 * @param mapping
	 * @param request
	 * @return ActionErrors
	 */
	public ActionErrors validate(ActionMapping mapping,
			HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}

	/** 
	 * Method reset
	 * @param mapping
	 * @param request
	 */
	public void reset(ActionMapping mapping, HttpServletRequest request) {
		// TODO Auto-generated method stub
	}

	/** 
	 * Returns the beginTime.
	 * @return String
	 */
	public String getBeginTime() {
		return beginTime;
	}

	/** 
	 * Set the beginTime.
	 * @param beginTime The beginTime to set
	 */
	public void setBeginTime(String beginTime) {
		this.beginTime = beginTime;
	}

	/** 
	 * Returns the title.
	 * @return String
	 */
	public String getTitle() {
		return title;
	}

	/** 
	 * Set the title.
	 * @param title The title to set
	 */
	public void setTitle(String title) {
		this.title = title;
	}

	/** 
	 * Returns the context.
	 * @return String
	 */
	public String getContext() {
		return context;
	}

	/** 
	 * Set the context.
	 * @param context The context to set
	 */
	public void setContext(String context) {
		this.context = context;
	}

	/** 
	 * Returns the choose.
	 * @return Boolean
	 */
	public String getOptional() {
		return optional;
	}

	/** 
	 * Set the choose.
	 * @param choose The choose to set
	 */
	public void setOptional(String optional) {
		this.optional = optional;
	}

	/** 
	 * Returns the options.
	 * @return String[]
	 */
	public String[] getOptions() {
		return options;
	}

	/** 
	 * Set the options.
	 * @param options The options to set
	 */
	public void setOptions(String[] options) {
		this.options = options;
	}

	/** 
	 * Returns the endTime.
	 * @return String
	 */
	public String getEndTime() {
		return endTime;
	}

	/** 
	 * Set the endTime.
	 * @param endTime The endTime to set
	 */
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
}