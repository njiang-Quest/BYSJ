<!--
//----------------------------------------------------------------------------
//  ����WalkingPoison����÷����������ؼ��޸ķ�չ������һ������ Javascript ҳ��ű��ؼ���������΢��� IE ��5.0���ϣ������
//  �����ú����� wpCalendar(this,[object])wpCalendar(this)��[object]�ǿؼ�����Ŀؼ��������������ӣ�
//  һ��<input name=txt><input type=button value="Show Calendar" onclick="showCalendar(this,document.all.txt)">
//  ����<input onfocus="showCalendar(this)">
//  ����������������ǣ�1000 - 9999��
//  ��ESC���رոÿؼ�
//  ������µ���ʾ�ط����ʱ��ֱ�������µ�������
//  �ؼ���������һ�㼴�ɹرոÿؼ�
/* ����ΪWalkingPoison���޸�˵��
WalkingPoison��ϵ��ʽ��walkingpoison@hotmail.com

Ver 2.59
�޸����ڣ�2008-6-17
1.*�޸Ķ�Firefox�ļ����ԣ�ʹ��ɼ��ݶ��������ע�⣺��FF��������Ҫ������js�ļ��Ĵ������<body>�У����˰汾��δ���ƣ����ƺ�����Ϊ2.60��
2.�������⣺��ʽ���������������һ�£�

Ver 2.55
�޸����ڣ�2007-6-26
1.��ݵ������������˿�ѡ����ھ�����ݵĹ�����ͨ���������mouseover������

Ver 2.54
�޸����ڣ�2006-4-30
1.*��������Ԫ��Ŀ�Ⱥ͸߶ȸ�Ϊ�������壬�������ɶ��������Ĵ�С��ע�⣺�ϴ�ĵ�Ԫ���ʹ������Ӧ�ٶȱ�����
2.ɾ�������õ�SELECT��ʽ����

Ver 2.53
�޸����ڣ�2005-11-25
1.�������϶���iframe�Ĵ���ʹ���϶���ʱ����Ӳ�����ͣ�����������ڳ�iframe��ͬʱҲ����IE���ڵ������ʹ�������ƶ������Ͻǣ�
2.�����������з����°�ť��˫������ʹ�õ������Ӧ������
3.������������ʹ����self���������������������������ⲿ������wpCalendarʵ��

Ver 2.52
�޸����ڣ�2004-10-9
1.�Ż���writeCalendar�����������Ĳ��ִ��루�����˳�������ڶ���
2.��ʾ����ʾ��Ϊ�������ʽ��ȫһ��

Ver 2.51
�޸����ڣ�2004-9-23, 2004-9-29
1.������setYearMonth��setTheme��setYear��setMonth�������Ա��ⲿ�޸����µ�ʱ�����
2.*����д�����µ������б�����ʹ��select�ؼ���ѡ�����£�ʹ��ѡ�����µĲ�����ü�
3.������Greenbrier���⣬ɾ�������õ�Custom����

Ver 2.5
�޸����ڣ�2004-7-23
1.���������Ժͷ���������
2.������themename���ԣ�ʹ��ʹ�ô������޸������Ϊ����

Ver 2.5 beta 4
�޸����ڣ�2004-4-16, 2004-5-18
1.*�����˵��õķ��������һ������������һ�δ��룬�����ڵ�������Ժ����ִ����Ҫ�Ĵ��롣
2.�޸���һ��ע�͵ı����Լ��Ľ���һ�����Ч��

Ver 2.5 beta 3
1.��������������õĲ��������������汾��Ϣ��ͬʱ��ʾ����İ汾��Ϣ
2.��������һЩ�������������������ڲ����������ⲿ���������γɳ�ͻ
3.������DiabloII���⣬ϣ����λϲ��^^
4.�Ż����ִ���

Ver 2.5 beta 2
1.�������ֹͣ�������ϵĽ���Ч������Ҫie5.5����֧�֡�
2.���Ӳ������ö�����Ч�������Զ��жϺͲ��ԡ�
3.�������һѡ�����ں�����Ľ���С���⡣

Ver 2.5 beta
�޸����ڣ�2003-10-27
1.*�޸������ĳ�ʼ�����������ԶԶ��ֲ����������á�
2.*��������ĸ�������û�ѡ��������ɶ������⡣
3.*�ؼ��Ѿ������˼������⣬�û��ɸ�����Ҫ����ѡ�á�

Ver 2.1+
1.������������Ŀ���ڴ��ڵ�λ���Զ�����λ�ã��������ڴ����ҷ�ʱ����ʾ���⡣

Ver 2.1
1.����ѡ���·ݺ���һ�µ���ʾ���ݴ���
2.�����������Ŀ���ڴ��ڵ�λ���Զ�������ʾλ�á�()
3.*�Զ������������ʽ�����޸�ʹ�����������ĸ�ʽͳһ��
4.�����Զ������ʽ������ʹ��"M"��"d"�������տ��Կ�ȱ��

Ver	2.0
�޸����ڣ�2002-12-13
1.*ȫ���޸�ʹ��iframe��Ϊ���������壬���ٱ�select��flash�ȿؼ���ס��
2.��������ֲ��iframe���ƶ������ؼ������⡣

Ver	1.5
�޸����ڣ�2002-12-4
1.ѡ�е�������ʾΪ����ȥ����ʽ
2.�޸��˹رղ�ķ�����ʹ��ʧȥ�����ʱ���ܹ��ر�������
3.�޸İ�������ʹ��Tab�л������ʱ����Թرտؼ�
4.*�����Զ��������Ƿ�����϶�

Ver 1.4
�޸����ڣ�2002-12-3
1.����ѡ����/�·��������Esc��������/�·ݲ���ʾ������
2.����ʹ��������ѡ���·���ɵ����ڴ����ַ���ת��Ϊ���ֵ����⣩
3.*�����ʽ�ĸĽ���ʹ�ÿؼ��ӳ�СѼ�������������죬�ӻҹ������˸߹�Ĺ������ӡ��������߿����Լ�����ǡ���ı�����
4.�ٴ�������/�·ݵĵ���ռ䣬�����������λ����������

Ver 1.3
�޸����ڣ�2002-11-29
1.*�հײ����û�ɫ��ʾ�ϸ��µ��������¸��µ�ǰ����
2.*ÿ������������������ʾ
3.�޸�ʹ�õ�ǰ���ں͵�ǰѡ������ڵı���ɫ�ڻ�ɫ���ڲ���Ҳ��������ʾ

Ver 1.2
�޸����ڣ�2002-11-28
1.*�޸�����µĵ���������İ������ڣ��������Ŀռ�
2.��ǰѡ����������б�����ʾ��ͬ�ı���ɫ
3.�����˵����Ԫ��֮��ķָ��ߵ��¿ؼ��رյ�����

Ver 1.1
�޸����ڣ�2002-11-15
1.�����˷�������Esc���ر��Ժ��ٴε��������ʾ����������
2.���todayֱ��ѡ�е�ǰ�����ڲ��رտؼ�
3.*������ÿؼ���������кϷ����ڣ����Զ���ʾ���������ڲ��֡�
4.�޸ĳ���ͳһʹ�ùرյĺ���closeCalendar()���ر������ؼ�����������ͨ���Զ���رպ���������û��Զ���Ĺ��ܡ�

ע��*�ű�ʾ�ȽϹؼ��ĸĶ�
*/

document.writeln('<iframe id=wpCalendarLayer name=wpCalendarLayer frameborder=0 onmouseout="wpCalendar.correctPosition()" style="position: absolute; width: 153; height: 208; z-index: 9998; display: none"></iframe>');

var wpConsts = new function(){
	this._isIE = (navigator.userAgent.indexOf("MSIE")>0);
	this.MouseButton = this._isIE?{
		LEFTBUTTON	: 1,
		RIGHTBUTTON	: 0,
		MIDDLEBUTTON: 4
	}:
	{
		LEFTBUTTON	: 0,
		RIGHTBUTTON	: 2,
		MIDDLEBUTTON: 1
	};
};

var wpEvents = new function(){
	var self = this;
    this.arrEvents = [];
	this.addListener = function(obj, eventName, oCallback){
	    var ret;
		if(wpConsts._isIE){
			ret = obj.attachEvent("on" + eventName, oCallback);
		}
		else{
			ret = obj.addEventListener(eventName, oCallback, false);
		}
		if(ret)this.arrEvents.push({"obj":obj, "eventName": eventName, "oCallback":oCallback});
		return ret;
	};
	
	this.clearListener = function(obj, eventName){
	    for(var i=0;i<this.arrEvents.length;i++){
	        if(this.arrEvents[i].obj == obj && this.arrEvents[i].eventName == eventName){
	            this.removeListener(obj, eventName, this.arrEvents[i].oCallback);
	        }
	    }
	};
	
	this.removeListener = function(obj, eventName, oCallback){
	    if(wpConsts._isIE){
			obj.detachEvent("on" + eventName, oCallback);
		}
		else{
			obj.removeEventListener(eventName, oCallback, true);
		}
	};

	this.initWinEvents = function(oWin){
		if(!oWin)return;
		__firefox(oWin);
	};

	/*ʹ��firefox����IE��event*/
	function __firefox(oWin){
		if(!oWin)oWin = window;
		HTMLElement.prototype.__defineGetter__("runtimeStyle", self.__element_style);
		oWin.constructor.prototype.__defineGetter__("event", function(){return self.__window_event(oWin);});
		Event.prototype.__defineGetter__("srcElement", self.__event_srcElement);
	}
	this.__element_style = function(){
		return this.style;
	}
	this.__window_event = function(oWin){
		return __window_event_constructor();
	}
	this.__event_srcElement = function(){
		return this.target;
	} 
	function __window_event_constructor(oWin){
		if(!oWin)oWin = window;
		if(document.all){
			return oWin.event;
		}
		var _caller = __window_event_constructor.caller;
		while(_caller!=null){
			var _argument = _caller.arguments[0];
			if(_argument){
				var _temp = _argument.constructor;
				if(_temp.toString().indexOf("Event")!=-1){
					return _argument;
				}
			}
			_caller = _caller.caller;
		}
		return null;
	}
	if(window.addEventListener){
		__firefox();
	}
	/*end firefox*/ 
};


function wpCalendar(){
	//==================================================== �����趨���� =======================================================
	this.bmoveable	= true;			//���������Ƿ�����϶�
	this.datestyle	= "yyyy-M-d";		//added in Ver 2.1
	this.cellwidth	= 21;			//���õ�����Ԫ��Ŀ��
	this.cellheight	= 20;			//���õ�Ԫ��ĸ߶�
	this.versioninfo= "wpCanlendar Version:2.59&#13;����:WalkingPoison";	//�汾��Ϣ
	this.tgtObject	= null;
	this.srcButton	= null;		//����İ�ť
	this.outerDate	= "";		//��Ŷ��������
	this.oCalendar	= window.frames.wpCalendarLayer.document;			//�����������
	this.Style		= document.getElementById("wpCalendarLayer").style;	//����������style
	this.MonthinMM	= this.datestyle.indexOf("MM")>=0?true:false;		//added in Ver 2.1
	this.Dateindd	= this.datestyle.indexOf("dd")>=0?true:false;
	this.themename	= "Classic";						//�������ã��������������
	this.theme		= null;						//�����������õõ���Ӧ�����⣬��redraw�����и���themename�Զ�����
	this.ScrollYearOnClick	= false;			//�����������ѡ����ڵ������ͨ���������mouseover������

	try{this.IE6	= (parseFloat(window.navigator.appVersion.match(/MSIE (\d+\.\d+)/)[1])>=5.5)}
	catch(e){this.IE6 = false}
	this.testspeed	= false;					//���Ի����ٶȣ��Ա��Զ������Ƿ�ʹ��Filter���������Ϊtrue���������playfilter����������Ч��
	this.testtimeout= 120;						//���Ա�׼����λ�Ǻ��룬С�������ֵ�ľ���Ϊ�����ٶ��㹻��
	this.playfilter	= this.IE6;					//�����Ƿ�ʹ��Filter

	this.year		= new Date().getFullYear();	//������ı����ĳ�ʼֵ
	this.month		= new Date().getMonth()+1;	//�����µı����ĳ�ʼֵ
	this.date		= new Date().getDate();		//�����յı����ĳ�ʼֵ
	this.Days		= new Array(39);			//����д���ڵ�����
	this.DateCell	= new Array(39);			//������ڵ�Ԫ��
	
	this.followcodes= "";						//���ִ�����������Ժ���Ҫִ�еĲ�������

	this.tmpTdClass = "";
	this.redraw		= function (){				//����redraw�����������ػ���������
		//==================================================== WEB ҳ����ʾ���� =====================================================
		if(this.cellwidth<21)this.cellwidth=21;
		if(this.cellheight<20)this.cellheight=20;
		this.theme = typeof theme[this.themename] == "object"? theme[this.themename] : theme["Classic"];
		var strFrame;		//����������HTML����
		strFrame='<style>';
		with(this.theme){
			strFrame+='BODY{font-family:'+fontFamily+';}';
			strFrame+='INPUT{color:'+buttonFontColor+';border-right:'+buttonBorderColor+' 1px solid;border-top:'+buttonBorderColor+' 1px solid;border-left:'+buttonBorderColor+' 1px solid;';
			strFrame+='border-bottom:'+buttonBorderColor+' 1px solid;background-color:'+buttonColor+';font-family:'+fontFamily+';}';
			strFrame+='table.main{border:1px solid '+borderColor+';width:' + (this.getCalendarWidth()-2) + 'px;height:' + this.getMainHeight() + 'px;background-color:'+bgColorMain+';}';
			strFrame+='table.dragbar{border-top:1px solid '+dragBarColor+';border-left:1px solid '+dragBarColor+';border-right:1px solid '+dragBarColorDark+';border-bottom:1px solid '+dragBarColorDark+';}';
			strFrame+='table.head{background-color:'+headBgColor+';}';
			strFrame+='td.head{background-color:'+headBgColor+';}';
			strFrame+='span.year{z-index: 9999;position:absolute;top:3px;left:20px;border: 1px solid '+borderColor+'}';
			strFrame+='table.year{width:' + (this.getYearWidth()-4) + 'px;height:140px;background-color:'+bgColorMain+';cursor:default;}';
			strFrame+='span.month{z-index: 9999;position: absolute;top: 3px;left: ' + (this.getYearWidth() + 19) + 'px;border:'+borderColor+' 1px solid}';
			strFrame+='table.month{width:' + (this.getMonthWidth()-4) + 'px;height:168px;background-color:'+bgColorMain+';cursor:default;}';
			strFrame+='TD{font-size: 12px;}';
			strFrame+='a{color:' + normalDayFontColor + ';}';
			strFrame+='table.datecell{border-top:1px solid '+dragBarColor+';border-left:1px solid '+dragBarColor+';border-right:1px solid '+dragBarColorDark+';border-bottom:1px solid '+dragBarColorDark+';}';
			strFrame+='TD.calendarhead{color: '+headFontColor+'; background-color: '+headBgColor+';border:1px solid '+headBgColor+';}';
			strFrame+='TD.mouseoverYM{text-align:center;color: '+mouseOverFontColor+'; background-color: '+mouseOverColor+';}';
			strFrame+='td.normalYM{text-align:center;color:'+normalDayFontColor+';background-color:'+normalDayColor+';}';
			strFrame+='td.selectedYM{text-align:center;color:'+selectedDayFontColor+';background-color:'+selectedDayColor+';}';
			strFrame+='TD.dragbar{font-size:12px;color:'+dragBarFontColor+';width:21px;border-bottom:1px solid '+dragBarColor+';border-right:1px solid '+dragBarColor+';border-left:1px solid '+dragBarColorDark+';border-top:1px solid '+dragBarColorDark+';}';
			strFrame+='TD.mouseover{color: '+mouseOverFontColor+'; background-color: '+mouseOverColor+';border:1px solid '+borderColor+';}';
			strFrame+='TD.normalday,TD.grayday,TD.today,TD.graytoday{border-left:1px solid '+borderColorDark+';border-top:1px solid '+borderColorDark+';border-right:1px solid '+borderColor+';border-bottom:1px solid '+borderColor+';}';
			strFrame+='TD.selectedday,TD.selectedgrayday{border-left:1px solid '+borderColor+';border-top:1px solid '+borderColor+';border-right:1px solid '+borderColorDark+';border-bottom:1px solid '+borderColorDark+';}';
			strFrame+='TD.normalday{color:'+normalDayFontColor+';background-color:'+normalDayColor+';}';
			strFrame+='TD.grayday{color:'+grayDayFontColor+';background-color:'+grayDayColor+';}';
			strFrame+='TD.today{color:'+todayFontColor+';background-color:'+todayColor+';}';
			strFrame+='TD.selectedday{color:'+selectedDayFontColor+';background-color:'+selectedDayColor+';}';
			strFrame+='TD.selectedgrayday{color:'+grayDayFontColor+';background-color:'+selectedDayColor+';}';
			//	'border-left-color:'+borderColor+';border-top-color:'+borderColor+';border-right-color:'+borderColorDark+';border-bottom-color:'+borderColorDark+';}';
			strFrame+='TD.graytoday{color:'+grayDayFontColor+';background-color:'+todayColor+';}';
			//	'border-left-color:'+borderColor+';border-top-color:'+borderColor+';border-right-color:'+borderColorDark+';border-bottom-color:'+borderColorDark+';}';
		}
		strFrame+='</style>';
		strFrame+='<scr' + 'ipt>';
		strFrame+='if(window.addEventListener){parent.wpEvents.initWinEvents(window);}	/*�������ff�¼�������*/';
		strFrame+='var datelayerx,datelayery;	/*��������ؼ������λ��*/';
		strFrame+='var bDrag=false;	/*����Ƿ�ʼ�϶�*/';
		strFrame+='var DateLayer=parent.wpCalendar.Style;';
		strFrame+='document.onmousemove=function()	/*������ƶ��¼��У������ʼ�϶����������ƶ�����*/';
		strFrame+='{if(bDrag){';
		strFrame+='		DateLayer.left = (parseInt(DateLayer.left)+window.event.clientX-datelayerx)+"px";/*����ÿ���ƶ��Ժ����λ�ö��ָ�Ϊ��ʼ��λ�ã����д����div�в�ͬ*/';
		strFrame+='		DateLayer.top = (parseInt(DateLayer.top)+window.event.clientY-datelayery)+"px";}};';
		strFrame+='function DragStart(){		/*��ʼ�����϶�*/';
		strFrame+='	if(window.event.button==parent.wpConsts.MouseButton.LEFTBUTTON){';
		strFrame+='		datelayerx=window.event.clientX;';
		strFrame+='		datelayery=window.event.clientY;';
		strFrame+='		bDrag=true;}}';
		strFrame+='function DragEnd(){		/*���������϶�*/';
		strFrame+='	bDrag=false;}';
		strFrame+='document.onmousedown=function(){	/*�����ʱ��ر���ݺ��·ݵ�ѡ���б�*/';
		strFrame+='	var obj=document.getElementById("tmpSelectYearLayer");if(!bFromYear&&event.srcElement!=document.getElementById("CalendarYearHead")&&obj.style.display!="none"){obj.style.display="none";bYearListOpening=true}';
		strFrame+='	obj=document.getElementById("tmpSelectMonthLayer");if(event.srcElement!=document.getElementById("CalendarMonthHead")&&obj.style.display!="none")obj.style.display="none";};';
		strFrame+='var strTempClass="";';
		strFrame+='document.oncontextmenu=function(){if(!event.ctrlKey)return false;};	/*��ֹ�����Ҽ��˵�*/';
		strFrame+='function mOver(obj){strTempClass=obj.className;obj.className="mouseoverYM";bYearListOpening=false;/*Ϊ����ʾ����б��ʱ�����Ϲ������ܵ�����ʹ��*/}/*��/��ѡ���б��mouseover����*/';
		strFrame+='function mOut(obj){obj.className=strTempClass;}/*��/��ѡ���б��mouseout����*/';
		strFrame+='function setMonth(iMonth){parent.wpCalendar.setMonth(iMonth)}/*����ѡ���·ݵĴ���*/';
		strFrame+='function setYear(iYear){parent.wpCalendar.setYear(iYear)}/*����ѡ����ݵĴ���*/';
		strFrame+='var bScrolling=false;var bYearListOpening=true;/*����������ڿ����ڸո���ʾ����б��ʱ����괦�����Ϲ�����λ�õ�����²�Ҫ����*/';
		strFrame+='var iScroll=null;';
		strFrame+='var bFromYear=false;	/*��־Ϊ����������б������˵�����Ա㲻Ҫ�ر�����б�*/';
		strFrame+='function scrollYear(bUp){';
		strFrame+='	var oTable=document.getElementById("tmpSelectYearLayer").childNodes[0];';
		strFrame+='	if(bUp){';
		strFrame+='		var iMin=parseInt(oTable.rows[1].cells[0].innerHTML.replace(/\\D/g,\'\'));';
		strFrame+='		if(iMin>1000){oTable.deleteRow(oTable.rows.length-2);var oTd=oTable.insertRow(1).insertCell(0);';
		strFrame+='			oTd.innerHTML=(iMin-1).toString()+" ��";oTd.onmouseover=Function("mOver(this)");oTd.onmouseout=Function("mOut(this)");';
		strFrame+='			oTd.onmousedown=Function("setYear("+(iMin-1).toString()+")");oTd.className=(iMin-1==parent.wpCalendar.year?"selectedYM":"normalYM");';
		strFrame+='			if(bScrolling)window.setTimeout("scrollYear(true)", 100);}}';
		strFrame+='	else{';
		strFrame+='		var iMax=parseInt(oTable.rows[oTable.rows.length-2].cells[0].innerHTML.replace(/\\D/g,\'\'));';
		strFrame+='		if(iMax<=9999){var oTd=oTable.insertRow(oTable.rows.length-1).insertCell(0);oTable.deleteRow(1);';
		strFrame+='			oTd.innerHTML=(iMax+1).toString()+" ��";oTd.onmouseover=Function("mOver(this)");oTd.onmouseout=Function("mOut(this)");';
		strFrame+='			oTd.onmousedown=Function("setYear("+(iMax+1).toString()+")");oTd.className=(iMax+1==parent.wpCalendar.year?"selectedYM":"normalYM");';
		strFrame+='			if(bScrolling)window.setTimeout("scrollYear(false)", 100);}}';
		strFrame+='}';
		strFrame+='function startScroll(oTd,bUp){bFromYear=true;if(!bYearListOpening){bScrolling=true;scrollYear(bUp);}}';
		strFrame+='function stopScroll(){bYearListOpening=false;bFromYear=false;bScrolling=false;if(iScroll)clearTimeout(iScroll);}';
		strFrame+='</scr' + 'ipt>';
		with(this){
			strFrame+='<div style="z-index:9999;position: absolute; left:0; top:0;" onselectstart="return false">';
			strFrame+='<span id=tmpSelectYearLayer class="year" style="display: none;"></span>';
			strFrame+='<span id=tmpSelectMonthLayer class="month" style="display: none;"></span>';
			strFrame+='<table border=1 cellspacing=0 cellpadding=0 bordercolor="' + theme.borderColor + '" class="main">';
			strFrame+='  <tr><td width=' + (getCalendarWidth()-2) + ' height=' + (cellheight) + ' class="head"><table border=0 cellspacing=1 cellpadding=0 width=' + (getCalendarWidth()-4) + ' height=' + cellheight + '>';
			strFrame+='      <tr align=center><td width=16><input title="��ǰ�� 1 ��" type=button ';
			strFrame+='             value="<" onclick="parent.wpCalendar.goPrevMonth()" ondblclick="parent.wpCalendar.goPrevMonth()" onfocus="this.blur()" style="font-size: 12px; width: 16px; height: ' + (cellheight-2) + 'px">';
			strFrame+='        </td><td width=' + getYearWidth() + ' align=center class=calendarhead style="font-size:12px;cursor:default" ';
			strFrame+='onmouseover="className=\'mouseover\'" onmouseout="className=\'calendarhead\'" ';
			strFrame+='onclick="parent.wpCalendar.selectYear(this.innerHTML.substring(0,4))" title="�������ѡ�����" id=CalendarYearHead></td>';
			strFrame+='<td width=' + getMonthWidth() + ' align=center class=calendarhead style="font-size:12px;cursor:default" onmouseover="className=\'mouseover\'" ';
			strFrame+=' onmouseout="className=\'calendarhead\'" onclick="parent.wpCalendar.selectMonth(this.innerHTML.replace(/\\D/g,\'\'))"';
			strFrame+='        title="�������ѡ���·�" id=CalendarMonthHead></td>';
			strFrame+='		<td width=16><input type=button value=">" onclick="parent.wpCalendar.goNextMonth()" ondblclick="parent.wpCalendar.goNextMonth()" ';
			strFrame+='             onfocus="this.blur()" title="��� 1 ��" style="font-size: 12px; width:16px; height: ' + (cellheight-2) + 'px"></td></tr>';
			strFrame+='    </table></td></tr>';
			strFrame+='  <tr><td width=' + (getCalendarWidth()-4) + ' height=' + (cellheight) + ' align=center>';
			strFrame+='<table align=center border=1 cellspacing=0 cellpadding=0 bgcolor='+theme.bgColorMain+' ' + (bmoveable? 'onmousedown="DragStart()" onmouseup="DragEnd()"':'');
			strFrame+=' class="dragbar" width=' + (getCalendarWidth()-6) + ' height=' + (cellheight) + ' style="cursor:' + (bmoveable ? 'move':'default') + '">';
			strFrame+='<tr align=center valign=bottom><td class=dragbar>��</td>';
			strFrame+='<td class=dragbar>һ</td><td class=dragbar>��</td>';
			strFrame+='<td class=dragbar>��</td><td class=dragbar>��</td>';
			strFrame+='<td class=dragbar>��</td><td class=dragbar>��</td></tr>';
			strFrame+='</table></td></tr>';
			strFrame+='  <tr><td width=' + (getCalendarWidth()-2) + ' height=' + getBodyHeight() + ' align=center>';
			strFrame+='    <table align=center border=1 cellspacing=2 cellpadding=0 class="datecell" bordercolor='+theme.borderColor+' bgcolor='+theme.bgColorLight+' width=' + (getCalendarWidth()-4) + ' height=' + getBodyHeight() + '>';
			var n=0; for (j=0;j<5;j++){ strFrame+= ' <tr align=center>'; for (i=0;i<7;i++){
			strFrame+='<td width=' + (cellwidth) + ' height=' + (cellheight) + ' id=wpDateCell'+n+'></td>';n++;}
			strFrame+='</tr>';}
			strFrame+='      <tr align=center>';
			for (i=35;i<39;i++)strFrame+='<td width=' + (cellwidth) + ' height=' + (cellheight) + ' id=wpDateCell'+i+'></td>';
			strFrame+='        <td colspan=3 align=right class=calendarhead onclick=parent.wpCalendar.close() style="font-size:12px;cursor: pointer;padding-right:5px;" title="' + versioninfo + '&#13;' + theme.versioninfo + '">';
			strFrame+='        <a href="javascript:void(0);">�ر�</a></td></tr>';
			strFrame+='    </table></td></tr><tr><td>';
			strFrame+='        <table border=0 cellspacing=1 cellpadding=0 width=100% class="head">';
			strFrame+='          <tr><td align=left><table border=0 cellspacing=0 cellpadding=0><tr><td><input type=button value="<<" title="��ǰ�� 1 ��" onclick="parent.wpCalendar.goPrevYear()" ';
			strFrame+='             ondblclick="parent.wpCalendar.goPrevYear()" onfocus="this.blur()" style="width:20px;font-size: 12px; height: ' + (cellheight) + 'px"><td width="1"></td><td><input title="��ǰ�� 1 ��" type=button ';
			strFrame+='             value="<" onclick="parent.wpCalendar.goPrevMonth()" ondblclick="parent.wpCalendar.goPrevMonth()" onfocus="this.blur()" style="width:16px;font-size: 12px; height: ' + (cellheight) + 'px"></td></tr></table></td><td ';
			strFrame+='             align=center><input type=button value=Today onclick="parent.wpCalendar.selectToday()" ';
			strFrame+='             onfocus="this.blur()" title="��ǰ����" style="font-size: 12px; height: ' + (cellheight) + 'px; cursor:pointer"></td><td ';
			strFrame+='             align=right><table border=0 cellspacing=0 cellpadding=0><tr><td><input type=button value=">" onclick="parent.wpCalendar.goNextMonth()" ';
			strFrame+='             ondblclick="parent.wpCalendar.goNextMonth()" onfocus="this.blur()" title="��� 1 ��" style="width:16px;font-size: 12px; height: ' + (cellheight) + 'px"><td width="1"></td><td><input ';
			strFrame+='             type=button value=">>" title="��� 1 ��" onclick="parent.wpCalendar.goNextYear()" ondblclick="parent.wpCalendar.goNextYear()"';
			strFrame+='             onfocus="this.blur()" style="width:20px;font-size: 12px; height: ' + (cellheight) + 'px"></td></tr></table></td>';
			strFrame+='</tr></table></td></tr></table></div>';
		}

		this.oCalendar.writeln(strFrame);
		this.oCalendar.close();		//���ie������������������
		this.Style.width	= this.getCalendarWidth();		//�����ⲿiframe�Ŀ��
		this.Style.height	= this.getCalendarHeight();		//�����ⲿiframe�ĸ߶�
		
		this.MonthinMM= this.datestyle.indexOf("MM")>=0?true:false;
		this.Dateindd	= this.datestyle.indexOf("dd")>=0?true:false;
		//�����ٶ�
		if(this.testspeed){
			var t=new Date();var s="";
			for (var i=1;i<10000;i++){s=(s.length>=500?" ":s+" ");}
			if(new Date()-t<=this.testtimeout)this.playfilter = this.IE6
			else this.playfilter = false;
			delete t;delete s;
		}

		for (i=0;i<39;i++)
		{
			this.DateCell[i] = this.oCalendar.getElementById('wpDateCell'+i);
			var da = this.DateCell[i];
			da.style.cursor	= "pointer";
			da.style.filter	= "progid:DXImageTransform.Microsoft.Fade(duration=0.5,overlap=0.5)";
			da.style.fontWeight = "bold";
			da.onmouseover	= wpMouseOver;
			da.onmouseout	= wpMouseOut;
			da.onclick		= Function("wpCalendar.dateCellClick("+i+")");		//��td����onclick�¼��Ĵ���
		}

		//==================================================== WEB ҳ����ʾ���� ======================================================
	}
	this.Redraw = this.redraw;

	//�������Զ����������Ԫ���ȣ����º������ڸ��ݵ�Ԫ���Ȼ���������
	this.getCalendarWidth = function(){
		return parseInt(this.cellwidth*7+6);
	};
	this.getYearWidth = function(){				//��ȡ��ʾ��ݲ��ֵĿ��
		return parseInt(((this.cellwidth*7+2)-32)*0.53);
	};
	this.getMonthWidth = function(){			//��ȡ��ʾ�·ݲ��ֵĿ��
		return parseInt(((this.cellwidth*7+2)-32)*0.47);
	};
	this.getCalendarHeight = function(){
		return (this.cellheight+2)*9 + 10;
	};
	this.getMainHeight = function(){
		return this.cellheight*8;
	};
	this.getBodyHeight = function(){
		return this.cellheight*6;
	};
	this.selectMonth = function (strMonth){		//��ʾ�·�ѡ���б�
		if (strMonth.match(/\D/)!=null)return;
		var m = (strMonth) ? strMonth : new Date().getMonth() + 1;
		var s = '';
		s += '<table border=0 cellspacing=0 cellpadding=0 class="month">';
		for(var i=1;i<=12;i++){
			s += '<tr><td class=' + (i==parseInt(strMonth)?'selectedYM':'normalYM') + ' onmouseover="mOver(this)" onmouseout="mOut(this)" onmousedown="setMonth('+i+')">' + i + ' ��' + '</td></tr>';
		}
		s += '</table>';
		this.oCalendar.getElementById("tmpSelectMonthLayer").innerHTML = s;
		this.oCalendar.getElementById("tmpSelectMonthLayer").style.display="";
	};
	this.selectYear = function (strYear){		//��ʾ���ѡ���б���������б���Թ���
		if (strYear.match(/\D/)!=null)return;
		var m = (strYear) ? strYear : new Date().getFullYear();
		if (m < 1000 || m > 9999)return;
		var n = m - 5;
		if (n < 1000) n = 1000;
		if (n + 100 > 9999) n = 9900;
		var s = '';
		with(this.theme){
			s += '<table border=0 cellspacing=0 cellpadding=0 class="year">';
			if(this.ScrollYearOnClick){
				s += '<tr><td height=5 bgcolor='+bgColorLight+' onmouseover="this.bgColor=\''+bgColorMain+'\'" onmouseout="stopScroll();this.bgColor=\''+bgColorLight+'\'"' +
					'onclick="return false" onmousedown="startScroll(this,true)" onmouseup="stopScroll()" title="���Ϲ������"></td></tr>';
			}
			else{
				s += '<tr><td height=5 bgcolor='+bgColorLight+' onmouseover="startScroll(this,true);this.bgColor=\''+bgColorMain+'\'" onmouseout="stopScroll();this.bgColor=\''+bgColorLight+'\'"' +
					'onclick="return false" title="���Ϲ������"></td></tr>';
			}
			for(var i=n;i<n+12;i++){
				s += '<tr><td class=' + (i==parseInt(strYear)?'selectedYM':'normalYM') + ' onmouseover="mOver(this)" onmouseout="mOut(this)" onmousedown="setYear('+i+')">' + i + ' ��' + '</td></tr>';
			}
			if(this.ScrollYearOnClick){
				s += '<tr><td height=5 bgcolor=' + this.theme.bgColorLight + ' onmouseover="this.bgColor=\''+bgColorMain+'\'" onmouseout="stopScroll();this.bgColor=\''+bgColorLight+'\'"' +
					'onclick="return false" onmousedown="startScroll(this,false)" onmouseup="stopScroll()" title="���¹������"></td></tr>';
			}
			else{
				s += '<tr><td height=5 bgcolor=' + this.theme.bgColorLight + ' onmouseover="startScroll(this,false);this.bgColor=\''+bgColorMain+'\'" onmouseout="stopScroll();this.bgColor=\''+bgColorLight+'\'"' +
					'onclick="return false" title="���¹������"></td></tr>';
			}
			s += '</table>';
		}
		this.oCalendar.getElementById("tmpSelectYearLayer").innerHTML = s;
		this.oCalendar.getElementById("tmpSelectYearLayer").style.display="";
	};

	this.close = function(){			//�ر������ؼ�
		this.oCalendar.getElementById("tmpSelectYearLayer").style.display="none";
		this.oCalendar.getElementById("tmpSelectMonthLayer").style.display="none";
		this.Style.display="none";
	};

	function getDaysOfMonth(year,month){	//�õ�ĳ��ĳ�µ�����
		return((new Date(year,month,0)).getDate());
	}

	this.goPrevYear=function (){	//��ǰ�� year
		if(this.year > 1000 && this.year <10000){this.year--;
		this.writeCalendar();}
	};
	this.goNextYear=function (){	//���� year
		if(this.year > 999 && this.year <9999){this.year++;
		this.writeCalendar();}
	};
	this.selectToday=function (){	//Today Button
		var today;
		this.year = new Date().getFullYear();
		this.month = new Date().getMonth()+1;
		today=new Date().getDate();
		if(this.month<10 && this.MonthinMM)this.month="0" + this.month;	//added in Ver 2.1
		if(today<10 && this.Dateindd)today="0" + today;
		//WriteCalendar(wpCalendar.year,wpCalendar.month);
		if(this.tgtObject){
			this.tgtObject.value=this.datestyle.replace((this.Dateindd?"dd":"d"), today).replace("yyyy", this.year).replace((this.MonthinMM?"MM":"M"), this.month);
		}
		this.close();
		if(this.followcodes!="")eval(this.followcodes);
	};
	this.goPrevMonth=function (){		//��ǰ���·�
		if(this.month>1){this.month--}else{this.year--;this.month=12;}
		this.writeCalendar();
	};
	this.goNextMonth=function (){		//�����·�
		if(this.month==12){this.year++;this.month=1}else{this.month++}
		this.writeCalendar();
	};
	this.setDateStyle=function (datestyle){	//�������ڸ�ʽ�ĺ���
		this.datestyle=datestyle;
		this.redraw();
	};
	this.setTheme=function (themename){	//��������Ϊ��Ӧ������
		this.themename=themename;
		this.redraw();
	};

	this.setMonth=function (i){			//�����������·�Ϊmonth��ֵ���䷶ΧΪ1~12��
		if(isNaN(i)||i<=0||i>12)return;
		this.month=parseInt(i);
		this.writeCalendar();
	};
	this.setYear=function (i){			//�������������Ϊyear��ֵ���䷶ΧΪ1000~9999��
		if(isNaN(i)||i<=999||i>9999)return;
		this.year=parseInt(i);
		this.writeCalendar();
	};
	this.setYearMonth=function (year, month){	//�������������·ֱ�Ϊyear��month�����µķ�Χͬ�ϡ�
		if(isNaN(year)||year<=999||year>9999)return;
		if(isNaN(month)||month<=0||month>12)return;
		this.year=parseInt(year);
		this.month=parseInt(month);
		this.writeCalendar();
	};

	this.writeCalendar=function (){	//��Ҫ��д����**********
		var yy = this.year;
		var mm = this.month;
		//д��ͷ��������
		this.oCalendar.getElementById("CalendarYearHead").innerHTML	= yy + " ��";
		this.oCalendar.getElementById("CalendarMonthHead").innerHTML	= mm + " ��";
	  
		for (var i = 0; i < 39; i++){	//��ʼ���߿�
		//	this.DateCell[i].borderColorLight=this.theme.borderColor;
		//	this.DateCell[i].borderColorDark=this.theme.borderColorDark;
		}
		var day1 = 1,day2=1,firstday = new Date(yy,mm-1,1).getDay();  //ĳ�µ�һ������ڼ�
		var year, month;
		for (i=0;i<firstday;i++){	//�ϸ��µĲ���
			year = mm==1?yy-1:yy;
			month= mm==1?12:mm-1;
			this.Days[i]=new wpDay(year, month, getDaysOfMonth(year,month)-firstday+i+1);	//�ϸ��µ������
		}
		for (i = firstday; day1 < getDaysOfMonth(yy,mm)+1; i++){	//���µĲ���
			this.Days[i]=new wpDay(yy, mm, day1);day1++;
		}
		for (i=firstday+getDaysOfMonth(yy,mm);i<39;i++){	//�¸��µĲ���
			year = mm==12?yy+1:yy;
			month= mm==12?1:mm+1;
			this.Days[i]=new wpDay(year, month, day2);day2++;
		}
		for (i=0; i<39; i++)
		{
			var da = this.DateCell[i];
			if(this.outerDate && this.Days[i].equals(this.outerDate)){
				if(i<8 && this.Days[i].day>20 || i>=28 && this.Days[i].day<12)da.className="selectedgrayday"
				else da.className="selectedday";
				//da.borderColorLight=this.theme.borderColorDark;
				//da.borderColorDark=this.theme.borderColor;
			}
			else if(this.Days[i].equals(new Date())){
				if(i<8 && this.Days[i].day>20 || i>=28 && this.Days[i].day<12)da.className="graytoday"
				else da.className="today";
			}
			else{
				if(i<8 && this.Days[i].day>20 || i>=28 && this.Days[i].day<12)da.className="grayday"
				else da.className="normalday";
			}
			da.innerHTML=this.Days[i].day;
			da.title=this.Days[i].date;
		}
	};

	this.dateCellClick=function (n){  //�����ʾ��ѡȡ���ڣ������뺯��*************
		if (this.tgtObject){
			this.tgtObject.value= this.Days[n].date;	//modified in Ver 2.51
			this.close(); this.tgtObject.blur();
		}
		else {this.close(); alert("����Ҫ����Ŀؼ����󲢲����ڣ�");}
		if(this.followcodes!="")eval(this.followcodes);
	};

	//������ƶ���iframe��ʱ���������λ�õĺ�����ʹ���������Ӳ�����ͣ����
	//*���ǵ�����ƶ�̫�죬���������������mousemove���¼��Ժ�������Ȼ��ͣ����
	this.correctPosition = function(){
		var CalendarWindow = window.frames.wpCalendarLayer;
		if(CalendarWindow.bDrag){
			var x = event.clientX - CalendarWindow.datelayerx;
			var y = event.clientY - CalendarWindow.datelayery;
			this.Style.left	= (x<0?0:x) + "px";
			this.Style.top	= (y<0?0:y) + "px";
		}
	};

	var self = this;	//����������ڲ��������Է��ʵ�wpCalendar������
	function wpMouseOver() {
		if(self.playfilter)this.filters[0].Apply();
		// After you set Apply, changes to the oDiv object 
		//  are not displayed until Play is called.
		self.tmpTdClass	= this.className;
		this.className			= "mouseover";
		if(self.playfilter)this.filters[0].Play();
	}
	function wpMouseOut(){
		if(self.playfilter)this.filters[0].Apply();
		this.className	= self.tmpTdClass;
		if(self.playfilter)this.filters[0].Play();
	}

	//��������ڶ��󣬳�ʼ�����������յĲ������µķ�Χ��1��12
	function wpDay(year, month, day){
		this.year	= year;
		this.month	= month;
		this.day	= day;
		var mm=month;var n=day;
		if (month < 10 && self.MonthinMM)mm = "0" + mm;
		if (day < 10 && self.Dateindd)n = "0" + n;
		//��ʾ���ֱ�Ϊ�������ʽ��ȫһ�£��ò����д�ʵ��֤��
		this.date	= self.datestyle.replace((self.Dateindd?"dd":"d"), n).replace("yyyy", year).replace((self.MonthinMM?"MM":"M"), mm);

		//�ж��Ƿ�����һ��������ȵĺ��������ܵĲ��������ڶ���
		this.equals = function(eDate){
			try{return this.year==eDate.getFullYear() && this.month==eDate.getMonth()+1 && this.day==eDate.getDate();}
			catch(e){return false}
		}
	}
}

function CalendarTheme(){
	this.versioninfo		= "";	//����İ汾��Ϣ
	this.fontFamily			= "";	//����
	this.borderColor		= "";	//�߿���ɫ
	this.borderColorDark	= "";	//�߿򰵲���ɫ
	this.bgColorMain		= "";	//����������ɫ
	this.bgColorLight		= "";	//������ǳ����ɫ
	this.headBgColor		= "";	//����ͷ������ɫ
	this.headFontColor		= "";	//����ͷ��������ɫ
	this.mouseOverColor		= "";	//����ƶ��ı���ɫ
	this.mouseOverFontColor = "";	//����ƶ���������ɫ
	this.buttonBorderColor	= "";	//��ť�߿���ɫ
	this.buttonColor		= "";	//��ť����ɫ��
	this.buttonFontColor	= "";	//��ť������ɫ
	this.dragBarFontColor	= "";	//�϶�����������ɫ
	this.dragBarColor		= "";	//�϶����ı߿���ɫ
	this.dragBarColorDark	= "";	//�϶����ı߿򰵲���ɫ
	this.normalDayColor		= "";	//���ڵı�����ɫ
	this.normalDayFontColor	= "";	//���ڵ�������ɫ
	this.grayDayColor		= "";	//�Ǳ������ڵı�����ɫ
	this.grayDayFontColor	= "";	//�Ǳ������ڵ�������ɫ
	this.todayColor			= "";	//��ǰ���ڵı�����ɫ
	this.todayFontColor		= "";	//��ǰ���ڵ�������ɫ
	this.selectedDayColor	= "";	//ѡ�����ڵı�����ɫ
	this.selectedDayFontColor="";	//ѡ�����ڵ�������ɫ
}
setday=showCalendar;	//�����ϵĵ��÷�ʽ
function showCalendar() //��������
{
	var obj;
	if (arguments.length == 0){alert("�Բ�����û�д��ر��ؼ��κβ�����");return;}
	var tt=arguments[0];
	wpCalendar.followcodes="";	//ÿ�ε��õ�ʱ�򶼳�ʼ��followCodes������
	if(arguments.length==2){
		if(typeof(arguments[1])=="object")obj=arguments[1]
		else if(typeof(arguments[1])=="string")wpCalendar.followcodes=arguments[1];
	}else if(arguments.length==3){
		obj=arguments[1];
		wpCalendar.followcodes=arguments[1];
	}
	
	var dads  = wpCalendar.Style;
	var th = tt;
	var ttop  = tt.offsetTop;		//TT�ؼ��Ķ�λ���
	var thei  = tt.clientHeight;	//TT�ؼ�����ĸ�
	var twid  = tt.clientWidth;		//TT�ؼ�����Ŀ�	//added in Ver 2.2
	var tleft = tt.offsetLeft;		//TT�ؼ��Ķ�λ���
	var ttyp  = tt.type;			//TT�ؼ�������
	while (tt = tt.offsetParent){ttop+=tt.offsetTop; tleft+=tt.offsetLeft;}
	//ͬʱ����1.�ܸ߶����Էŵ��������ؼ���2.�·�ʣ��߶Ȳ��������ؼ��߶ȣ�3.�Ϸ��߶ȴ��������ؼ��߶� ��3��������ʱ������������ʾ���Ϸ�
	if(document.body.clientHeight>211 + thei && document.body.clientHeight-(ttop-document.body.scrollTop)<211+thei && ttop-document.body.scrollTop>211)	//added in Ver 2.1
		dads.top = ttop-211
	else dads.top  = (ttyp=="image")? ttop+thei : ttop+thei+6;
	var cwidth = wpCalendar.getCalendarWidth();
	if(document.body.clientWidth-(tleft-document.body.scrollLeft)<cwidth && tleft-document.body.scrollLeft>cwidth)	//added in Ver 2.2
		dads.left = tleft + twid - cwidth + ((ttyp=="image")? 0:4)
	else dads.left = tleft;
	wpCalendar.tgtObject = !obj ? th : obj;
	wpCalendar.srcButton = !obj ? null : th;	//�趨�ⲿ����İ�ť
	//���ݵ�ǰ������������ʾ����������
	var reg = new RegExp("^" + wpCalendar.datestyle.replace((wpCalendar.Dateindd?"dd":"d"),"(\\d{1,2})").replace("yyyy","(\\d{4})").replace((wpCalendar.MonthinMM?"MM":"M"), "(\\d{1,2})")+"$");	//added in Ver 2.1
	var r = wpCalendar.tgtObject.value.match(reg); 
	if(r!=null){
		var t=getIndex();
		r[t[2]]=r[t[2]]-1; 
		if(wpCalendar.datestyle.indexOf("d")<0)r[t[3]]=1;			//ʹ��һ��"d"�Ϳ��԰����������	 //added in Ver 2.1
		var d= new Date(r[t[1]], r[t[2]],r[t[3]]);
		if(d.getFullYear()==r[t[1]] && d.getMonth()==r[t[2]] && d.getDate()==r[t[3]]){
			wpCalendar.outerDate=d;		//�����ⲿ���������
		}
		else wpCalendar.outerDate="";
		wpCalendar.year	=parseInt(r[t[1]]);
		wpCalendar.month=parseInt(r[t[2]])+1;
	}
	else{
		wpCalendar.outerDate="";
		wpCalendar.year	=new Date().getFullYear();
		wpCalendar.month=new Date().getMonth() + 1;
	}
	wpCalendar.writeCalendar();
	dads.display = '';

	event.returnValue=false;

	function getIndex(){	//�������ڸ�ʽ���÷��������շֱ����ڵ�λ�� //added in Ver 2.1
		var i,j;
		var m=eval("new Array(wpCalendar.datestyle.indexOf(\"yyyy\"), wpCalendar.datestyle.indexOf(\"M\")" + (wpCalendar.datestyle.indexOf("d")>=0?", wpCalendar.datestyle.indexOf(\"d\")":"") + ")");	//ʹ��һ��"M"��һ��"d"�Ϳ��԰����������
		var t=new Array();
		for(i=1;i<=m.length;i++){
			t[i]=1;
			for(j=1;j<=m.length;j++)if(i!=j && m[i-1]>m[j-1])t[i]++;
		}
		if(m.length<3)t[3]=3;
		return t;
	}
}


wpEvents.addListener(document,"click",function(){		//������ʱ�رոÿؼ�
	with(window.event)
		if (srcElement != wpCalendar.tgtObject && srcElement != wpCalendar.srcButton)
		wpCalendar.close();
});

wpEvents.addListener(document,"keyup",function(){		//��Esc���رգ��л�����ر�
	if (window.event.keyCode==27){
		if(wpCalendar.tgtObject)wpCalendar.tgtObject.blur();
		wpCalendar.close();
	}
	else if(document.activeElement)
		if(document.activeElement != wpCalendar.tgtObject && document.activeElement != wpCalendar.srcButton)
			wpCalendar.close();
});

var theme=new Object();

	theme["Classic"]=new CalendarTheme();
	theme["Classic"].versioninfo		= "���⣺Classic ���ߣ�WalkingPoison";	//����İ汾��Ϣ
	theme["Classic"].fontFamily			= "����";		//����
	theme["Classic"].borderColor		= "#FF9900";	//�߿���ɫ
	theme["Classic"].borderColorDark	= "#FFFFFF";	//�߿򰵲���ɫ
	theme["Classic"].bgColorMain		= "#FF9900";	//����������ɫ
	theme["Classic"].bgColorLight		= "#FFF8EC";	//������ǳ����ɫ
	theme["Classic"].headBgColor		= "#FFFFFF";	//����ͷ������ɫ
	theme["Classic"].headFontColor		= "#000000";	//����ͷ��������ɫ
	theme["Classic"].mouseOverColor		= "#FFD700";	//����ƶ��ı���ɫ
	theme["Classic"].mouseOverFontColor = "#000000";	//����ƶ���������ɫ
	theme["Classic"].buttonBorderColor	= "#FF9900";	//��ť�߿���ɫ
	theme["Classic"].buttonColor		= "#FFF8EC";	//��ť����ɫ��
	theme["Classic"].buttonFontColor	= "#000000";	//��ť������ɫ
	theme["Classic"].dragBarFontColor	= "#FFFFFF";	//�϶�����������ɫ
	theme["Classic"].dragBarColor		= "#FF9900";	//�϶����ı߿���ɫ
	theme["Classic"].dragBarColorDark	= "#FFFFFF";	//�϶����ı߿򰵲���ɫ
	theme["Classic"].normalDayColor		= "#E0E0E0";	//���ڵı�����ɫ
	theme["Classic"].normalDayFontColor	= "#000000";	//���ڵ�������ɫ
	theme["Classic"].grayDayColor		= "#E0E0E0";	//�Ǳ������ڵı�����ɫ
	theme["Classic"].grayDayFontColor	= "#808080";	//�Ǳ������ڵ�������ɫ
	theme["Classic"].todayColor			= "#FFD700";	//��ǰ���ڵı�����ɫ
	theme["Classic"].todayFontColor		= "#000000";	//��ǰ���ڵ�������ɫ
	theme["Classic"].selectedDayColor	= "#00FFFF";	//ѡ�����ڵı�����ɫ
	theme["Classic"].selectedDayFontColor="#000000";	//ѡ�����ڵ�������ɫ

	theme["NewAge"]=new CalendarTheme();
	theme["NewAge"].versioninfo			= "���⣺NewAge ���ߣ�WalkingPoison";	//����İ汾��Ϣ
	theme["NewAge"].fontFamily			= "����";		//����
	theme["NewAge"].borderColor			= "#336699";	//�߿���ɫ
	theme["NewAge"].borderColorDark		= "#FFFFFF";	//�߿򰵲���ɫ
	theme["NewAge"].bgColorMain			= "#336699";	//����������ɫ
	theme["NewAge"].bgColorLight		= "#F0F8FF";	//������ǳ����ɫ
	theme["NewAge"].headBgColor			= "#FFFFFF";	//����ͷ������ɫ
	theme["NewAge"].headFontColor		= "#000000";	//����ͷ��������ɫ
	theme["NewAge"].mouseOverColor		= "#add8e6";	//����ƶ��ı���ɫ
	theme["NewAge"].mouseOverFontColor	= "#000000";	//����ƶ���������ɫ
	theme["NewAge"].buttonBorderColor	= "#336699";	//��ť�߿���ɫ
	theme["NewAge"].buttonColor			= "#F0F8FF";	//��ť����ɫ��
	theme["NewAge"].buttonFontColor		= "#000000";	//��ť������ɫ
	theme["NewAge"].dragBarFontColor	= "#FFFFFF";	//�϶�����������ɫ
	theme["NewAge"].dragBarColor		= "#336699";	//�϶����ı߿���ɫ
	theme["NewAge"].dragBarColorDark	= "#336699";	//�϶����ı߿򰵲���ɫ
	theme["NewAge"].normalDayColor		= "#fff0f5";	//���ڵı�����ɫ
	theme["NewAge"].normalDayFontColor	= "#000000";	//���ڵ�������ɫ
	theme["NewAge"].grayDayColor		= "#fff0f5";	//�Ǳ������ڵı�����ɫ
	theme["NewAge"].grayDayFontColor	= "#808080";	//�Ǳ������ڵ�������ɫ
	theme["NewAge"].todayColor			= "#add8e6";	//��ǰ���ڵı�����ɫ
	theme["NewAge"].todayFontColor		= "#000000";	//��ǰ���ڵ�������ɫ
	theme["NewAge"].selectedDayColor	= "#336699";	//ѡ�����ڵı�����ɫ
	theme["NewAge"].selectedDayFontColor= "#FFFFFF";	//ѡ�����ڵ�������ɫ

	theme["Nostalgia"]=new CalendarTheme();
	theme["Nostalgia"].versioninfo			= "���⣺Nostalgia ���ߣ�WalkingPoison";	//����İ汾��Ϣ
	theme["Nostalgia"].fontFamily			= "����";		//����
	theme["Nostalgia"].borderColor			= "#CC3300";	//�߿���ɫ
	theme["Nostalgia"].borderColorDark		= "#CC3300";	//�߿򰵲���ɫ
	theme["Nostalgia"].bgColorMain			= "#CC3300";	//����������ɫ
	theme["Nostalgia"].bgColorLight			= "#FFF8EC";	//������ǳ����ɫ
	theme["Nostalgia"].headBgColor			= "#FFFFFF";	//����ͷ������ɫ
	theme["Nostalgia"].headFontColor		= "#000000";	//����ͷ��������ɫ
	theme["Nostalgia"].mouseOverColor		= "#FFD700";	//����ƶ��ı���ɫ
	theme["Nostalgia"].mouseOverFontColor	= "#000000";	//����ƶ���������ɫ
	theme["Nostalgia"].buttonBorderColor	= "#CC3300";	//��ť�߿���ɫ
	theme["Nostalgia"].buttonColor			= "#FFF8EC";	//��ť����ɫ��
	theme["Nostalgia"].buttonFontColor		= "#000000";	//��ť������ɫ
	theme["Nostalgia"].dragBarFontColor		= "#FFFFFF";	//�϶�����������ɫ
	theme["Nostalgia"].dragBarColor			= "#CC3300";	//�϶����ı߿���ɫ
	theme["Nostalgia"].dragBarColorDark		= "#FFFFFF";	//�϶����ı߿򰵲���ɫ
	theme["Nostalgia"].normalDayColor		= "#ffefd5";	//���ڵı�����ɫ
	theme["Nostalgia"].normalDayFontColor	= "#000000";	//���ڵ�������ɫ
	theme["Nostalgia"].grayDayColor			= "#ffefd5";	//�Ǳ������ڵı�����ɫ
	theme["Nostalgia"].grayDayFontColor		= "#808080";	//�Ǳ������ڵ�������ɫ
	theme["Nostalgia"].todayColor			= "#FFD700";	//��ǰ���ڵı�����ɫ
	theme["Nostalgia"].todayFontColor		= "#000000";	//��ǰ���ڵ�������ɫ
	theme["Nostalgia"].selectedDayColor		= "#CCFFFF";	//ѡ�����ڵı�����ɫ
	theme["Nostalgia"].selectedDayFontColor	= "#000000";	//ѡ�����ڵ�������ɫ

	theme["Icicle"]=new CalendarTheme();
	theme["Icicle"].versioninfo			= "���⣺Icicle ���ߣ�WalkingPoison";	//����İ汾��Ϣ
	theme["Icicle"].fontFamily			= "����";		//����
	theme["Icicle"].borderColor			= "#00bfff";	//�߿���ɫ
	theme["Icicle"].borderColorDark		= "#ffffff";	//�߿򰵲���ɫ
	theme["Icicle"].bgColorMain			= "#00bfff";	//����������ɫ
	theme["Icicle"].bgColorLight		= "#f0faff";	//������ǳ����ɫ
	theme["Icicle"].headBgColor			= "#FFFFFF";	//����ͷ������ɫ
	theme["Icicle"].headFontColor		= "#000000";	//����ͷ��������ɫ
	theme["Icicle"].mouseOverColor		= "#e0e9ff";	//����ƶ��ı���ɫ
	theme["Icicle"].mouseOverFontColor	= "#000000";	//����ƶ���������ɫ
	theme["Icicle"].buttonBorderColor	= "#87cefa";	//��ť�߿���ɫ
	theme["Icicle"].buttonColor			= "#FFF8EC";	//��ť����ɫ��
	theme["Icicle"].buttonFontColor		= "#000000";	//��ť������ɫ
	theme["Icicle"].dragBarFontColor	= "#336699";	//�϶�����������ɫ
	theme["Icicle"].dragBarColor		= "#00bfff";	//�϶����ı߿���ɫ
	theme["Icicle"].dragBarColorDark	= "#FFFFFF";	//�϶����ı߿򰵲���ɫ
	theme["Icicle"].normalDayColor		= "#e0e9ff";	//���ڵı�����ɫ
	theme["Icicle"].normalDayFontColor	= "#336699";	//���ڵ�������ɫ
	theme["Icicle"].grayDayColor		= "#e0e9ff";	//�Ǳ������ڵı�����ɫ
	theme["Icicle"].grayDayFontColor	= "#808080";	//�Ǳ������ڵ�������ɫ
	theme["Icicle"].todayColor			= "#FFD700";	//��ǰ���ڵı�����ɫ
	theme["Icicle"].todayFontColor		= "#336699";	//��ǰ���ڵ�������ɫ
	theme["Icicle"].selectedDayColor	= "#CCFFFF";	//ѡ�����ڵı�����ɫ
	theme["Icicle"].selectedDayFontColor= "#336699";	//ѡ�����ڵ�������ɫ

	theme["Greenbrier"]=new CalendarTheme();
	theme["Greenbrier"].versioninfo			= "���⣺Greenbrier ���ߣ�liuliu";	//����İ汾��Ϣ
	theme["Greenbrier"].fontFamily			= "����";		//����
	theme["Greenbrier"].borderColor			= "#32CD32";	//�߿���ɫ
	theme["Greenbrier"].borderColorDark		= "#32CD32";	//�߿򰵲���ɫ
	theme["Greenbrier"].bgColorMain			= "#32CD32";	//����������ɫ
	theme["Greenbrier"].bgColorLight		= "#FFF8EC";	//������ǳ����ɫ
	theme["Greenbrier"].headBgColor			= "#FFFFFF";	//����ͷ������ɫ
	theme["Greenbrier"].headFontColor		= "#000000";	//����ͷ��������ɫ
	theme["Greenbrier"].mouseOverColor		= "#FFD700";	//����ƶ��ı���ɫ
	theme["Greenbrier"].mouseOverFontColor	= "#000000";	//����ƶ���������ɫ
	theme["Greenbrier"].buttonBorderColor	= "#2E8B57";	//��ť�߿���ɫ
	theme["Greenbrier"].buttonColor			= "#FFF8EC";	//��ť����ɫ��
	theme["Greenbrier"].buttonFontColor		= "#000000";	//��ť������ɫ
	theme["Greenbrier"].dragBarFontColor	= "#FFFFFF";	//�϶�����������ɫ
	theme["Greenbrier"].dragBarColor		= "#2E8B57";	//�϶����ı߿���ɫ
	theme["Greenbrier"].dragBarColorDark	= "#FFFFFF";	//�϶����ı߿򰵲���ɫ
	theme["Greenbrier"].normalDayColor		= "#FFF8DC";	//���ڵı�����ɫ
	theme["Greenbrier"].normalDayFontColor	= "#000000";	//���ڵ�������ɫ
	theme["Greenbrier"].grayDayColor		= "#FFF8DC";	//�Ǳ������ڵı�����ɫ
	theme["Greenbrier"].grayDayFontColor	= "#808080";	//�Ǳ������ڵ�������ɫ
	theme["Greenbrier"].todayColor			= "#FFD700";	//��ǰ���ڵı�����ɫ
	theme["Greenbrier"].todayFontColor		= "#000000";	//��ǰ���ڵ�������ɫ
	theme["Greenbrier"].selectedDayColor	= "#00FFFF";	//ѡ�����ڵı�����ɫ
	theme["Greenbrier"].selectedDayFontColor= "#000000";	//ѡ�����ڵ�������ɫ

	theme["DiabloII"]=new CalendarTheme();
	theme["DiabloII"].versioninfo			= "���⣺DiabloII ���ߣ�WalkingPoison";	//����İ汾��Ϣ
	theme["DiabloII"].fontFamily			= "����";		//����
	theme["DiabloII"].borderColor			= "#928a70";	//�߿���ɫ
	theme["DiabloII"].borderColorDark		= "#928a70";	//�߿򰵲���ɫ
	theme["DiabloII"].bgColorMain			= "#333333";	//����������ɫ
	theme["DiabloII"].bgColorLight			= "#333333";	//������ǳ����ɫ
	theme["DiabloII"].headBgColor			= "#333333";	//����ͷ������ɫ
	theme["DiabloII"].headFontColor			= "#928a70";	//����ͷ��������ɫ
	theme["DiabloII"].mouseOverColor		= "#666666";	//����ƶ��ı���ɫ
	theme["DiabloII"].mouseOverFontColor	= "#afafaf";	//����ƶ���������ɫ
	theme["DiabloII"].buttonBorderColor		= "#333333";	//��ť�߿���ɫ
	theme["DiabloII"].buttonColor			= "#333333";	//��ť����ɫ��
	theme["DiabloII"].buttonFontColor		= "#928a70";	//��ť������ɫ
	theme["DiabloII"].dragBarFontColor		= "#928a70";	//�϶�����������ɫ
	theme["DiabloII"].dragBarColor			= "#333333";	//�϶����ı߿���ɫ
	theme["DiabloII"].dragBarColorDark		= "#333333";	//�϶����ı߿򰵲���ɫ
	theme["DiabloII"].normalDayColor		= "#333333";	//���ڵı�����ɫ
	theme["DiabloII"].normalDayFontColor	= "#928a70";	//���ڵ�������ɫ
	theme["DiabloII"].grayDayColor			= "#333333";	//�Ǳ������ڵı�����ɫ
	theme["DiabloII"].grayDayFontColor		= "#afafaf";	//�Ǳ������ڵ�������ɫ
	theme["DiabloII"].todayColor			= "#333333";	//��ǰ���ڵı�����ɫ
	theme["DiabloII"].todayFontColor		= "#2e8b57";	//��ǰ���ڵ�������ɫ
	theme["DiabloII"].selectedDayColor		= "#666666";	//ѡ�����ڵı�����ɫ
	theme["DiabloII"].selectedDayFontColor	= "#ffcc33";	//ѡ�����ڵ�������ɫ

var wpCalendar=new wpCalendar();
wpCalendar.redraw();

// -->
