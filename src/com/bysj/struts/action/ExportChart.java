package com.bysj.struts.action;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.poi.hssf.usermodel.HSSFClientAnchor;
import org.apache.poi.hssf.usermodel.HSSFPatriarch;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;
import com.bysj.common.StringUtil;

	public class ExportChart extends DispatchAction{

		public ActionForward exportC(ActionMapping mapping, ActionForm form,
				HttpServletRequest request, HttpServletResponse response) throws IOException {
		 
		  HttpSession  session=request.getSession();
	      /**添加上下面的语句会在临时文件夹下面生成图片，去掉就不会有了*/
	      String filename = null;
		  filename = "F:\\jakarta-tomcat-5.5.9\\temp\\"+session.getAttribute("filename");//ServletUtilities.saveChartAsPNG(chart,500,300,session);
		  System.out.println(filename);
		  
		  FileOutputStream fileOut = null;
		  BufferedImage bufferImg = null;
		  
		   // 先把读进来的图片放到一个ByteArrayOutputStream中，以便产生ByteArray
		   ByteArrayOutputStream byteArrayOut = new ByteArrayOutputStream();
		   
		   bufferImg = ImageIO.read(new File(filename));
		   ImageIO.write(bufferImg, "jpeg", byteArrayOut);
		   
		   // 创建一个工作薄
		   HSSFWorkbook wb = new HSSFWorkbook();
		   HSSFSheet sheet1 = wb.createSheet("new sheet");
		   HSSFPatriarch patriarch = sheet1.createDrawingPatriarch();
		   HSSFClientAnchor anchor = new HSSFClientAnchor(0, 0, 512, 255,
		     (short) 1, 1, (short) 10, 20);
		   
		   anchor.setAnchorType(2);
		   // 插入图片
		   patriarch.createPicture(anchor, wb.addPicture(byteArrayOut
		     .toByteArray(), HSSFWorkbook.PICTURE_TYPE_JPEG)).resize(0.8);
		   String path = StringUtil.toGB2312(request.getParameter("path"));
		   if(!path.endsWith(".xls"))
			   path = path.concat(".xls");
		   fileOut = new FileOutputStream(path);
		   // 写入excel文件
		   wb.write(fileOut);
		   fileOut.close();
		   PrintWriter o= response.getWriter();
		   o.println("save as:"+path);
		   o.flush();
		   o.close();
		   fileOut.close();
		   return null;
	 }
}
