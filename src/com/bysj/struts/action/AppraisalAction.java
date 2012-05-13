/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.bysj.struts.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.bysj.bean.AppraisalBean;
import com.bysj.bean.AppraisalOptionBean;
import com.bysj.common.StringUtil;
import com.bysj.dao.AppraisalDao;
import com.bysj.struts.form.AppraisalForm;

/** 
 * MyEclipse Struts
 * Creation date: 05-13-2012
 * 
 * XDoclet definition:
 * @struts.action path="/appraisal" name="appraisalForm" input="/appraisal.jsp" parameter="action" scope="request" validate="true"
 * @struts.action-forward name="success" path="/index.jsp"
 * @struts.action-forward name="fail" path="/appraisal.jsp"
 */
public class AppraisalAction extends DispatchAction {
	/*
	 * Generated Methods
	 */

	/** 
	 * Method execute
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
//	public ActionForward execute(ActionMapping mapping, ActionForm form,
//			HttpServletRequest request, HttpServletResponse response) {
//		AppraisalForm appraisalForm = (AppraisalForm) form;// TODO Auto-generated method stub
//		return null;
//	}
//	
	public ActionForward addAppraisal(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		AppraisalForm appraisalForm = (AppraisalForm) form;// TODO Auto-generated method stub
		
		AppraisalBean app = new AppraisalBean();
		app.setTitle(StringUtil.toGB2312(appraisalForm.getTitle().trim()));
		String context = appraisalForm.getContext().trim();
		if(context!=null)
			app.setContext(StringUtil.toGB2312(context));
		app.setType(StringUtil.toGB2312(appraisalForm.getType()));
		app.setAllowAffix(request.getParameter("allowAffix"));//appraisalForm.getAllowAffix());
		
		System.out.println("allowAffix:" + app.getAllowAffix());
		
		app.setAStartDate(appraisalForm.getAbeginTime());
		app.setAEndDate(appraisalForm.getAendTime());
		app.setStartDate(appraisalForm.getBeginTime());
		app.setEndDate(appraisalForm.getEndTime());
		
		String[] beipings = appraisalForm.getBeiping();
		String beiping = StringUtil.toGB2312(StringUtil.list2String(beipings));
		app.setBeiping(beiping);
		
		System.out.println("title:" + app.getTitle());
		System.out.println("beipings:" + beiping);
		
//		String[] canpings = appraisalForm.getCanping();
//		String canping = StringUtil.list2String(canpings);
//		canping = StringUtil.toGB2312(canping);
//		canpings = canping.split(",");
//		app.setCanpings(canpings);
		String canpingF = appraisalForm.getCanping();
		app.setCanping(StringUtil.toGB2312(appraisalForm.getCanping()));
		if(canpingF == "0"){ //all person
			
		} else if(canpingF == "1") { //same department person
			
		} else { //special person
			
		}
		
		String[] options = appraisalForm.getOptions();
		options = StringUtil.list2String(options).split(",");//为了去掉没有值的项
		
		String[] e = request.getParameter("e").split("-");
		String[] t = request.getParameter("t").split("-");
			
//		String escore = new int[e.length];
//		String tscore = new int[t.length];
//		for(int i=0;i<e.length;i++) {
//			escore[i] = Integer.parseInt(e[i]);
//			tscore[i] = Integer.parseInt(t[i]);
//		}
		
		List<AppraisalOptionBean> optionList = new ArrayList<AppraisalOptionBean>();
 		for(int i = 0; i<options.length; i++){
 			AppraisalOptionBean appoption = new AppraisalOptionBean();
 			String option = StringUtil.toGB2312(options[i]);
 			appoption.setOption(option);
 			appoption.setEscore(e[i]);
 			appoption.setTscore(t[i]);
 			optionList.add(appoption);
// 			System.out.println("e:" + e[i]);
// 			System.out.println("t:" + t[i]);
 		}
		app.setOptions(optionList);
		
		AppraisalDao dao = new AppraisalDao();
		if(dao.addAppraisal(app))
			return mapping.findForward("success");
		
		return mapping.findForward("fail");
	}
	
	public ActionForward getApps(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		AppraisalDao dao = new AppraisalDao();
		List<AppraisalBean> apps = dao.getAllApps();
		if(!apps.isEmpty()){
			HttpSession session = request.getSession();
			session.setAttribute("apps", apps);
			
		}
	
		return mapping.findForward("success");
	}
	
	public ActionForward getCurrApp(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		
		int id = Integer.valueOf(request.getParameter("appid"));
		System.out.println("id:" + id);
		HttpSession session = request.getSession();
		AppraisalDao dao = new AppraisalDao();
		session.setAttribute("currApp", dao.getCurrApp(id));
		return mapping.findForward("do_app");
	}
	
}