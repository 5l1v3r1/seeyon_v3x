<%@ page contentType="text/html; charset=GB2312"%>
<%@ page import="com.bjca.sso.processor.*,com.bjca.sso.bean.*,java.util.*,java.net.*,com.bjca.security.*"%>
<%
	//������֤��
	String BJCA_SERVER_CERT = request.getParameter("BJCA_SERVER_CERT");
	//Ʊ��
	String BJCA_TICKET = request.getParameter("BJCA_TICKET");
	//Ʊ������
	String BJCA_TICKET_TYPE = request.getParameter("BJCA_TICKET_TYPE");
	
	//out.println("Ʊ�ݣ�"+BJCA_TICKET);
	
	TicketManager ticketmag = new TicketManager();
	//��֤ǩ���ͽ���
	UserTicket userticket = ticketmag.getTicket(BJCA_TICKET, BJCA_TICKET_TYPE, BJCA_SERVER_CERT);
	//����Ʊ����Ϣ
	if(userticket != null) {
		//ȡ�쵼����
		String username = userticket.getUserName();
		//ȡ�쵼id
		String userid = userticket.getUserUniqueID();
		//ȡί���id
		String departid = userticket.getUserDepartCode();

		/**ȡ��ɫ��Ϣ
		Hashtable roles = userticket.getUserRoles();
		String s_role = "";
		if(roles != null && roles.size() > 0) {
			int index = 1;
			Enumeration e = roles.keys();
			Enumeration e2 = roles.elements();
			for(;e.hasMoreElements();){
				String rolecode = (String)e.nextElement();
				String rolename = (String)e2.nextElement();
				if(rolename.indexOf("?") != -1) {
					rolename = new String(rolename.getBytes("GBK"),"ISO-8859-1");
				}
				if(index == 1){
					s_role = rolecode;
				}else{
					s_role = s_role + "," + rolecode;
				}
				index++;
			}
		}
		*/
		//��ɫ���쵼id���쵼������ί���id������URLд��SESSION��
		//request.getSession().setAttribute("roles",s_role);
		request.getSession().setAttribute("userid",userid);
		request.getSession().setAttribute("departid",departid);
		//��ί����ڴ����ת�����Ż������ӵ�ַ��
		String ticketurl = "";
		//response.sendRedirect(ticketurl);
		request.getRequestDispatcher(ticketurl).forward(request,response);//ת��ҵ��ϵͳ
	}else{
		response.sendRedirect("sso_errors.jsp");//��������ʱ�Ĵ���ҳ�棬�����޸Ĵ���ҳ��
	}
%>