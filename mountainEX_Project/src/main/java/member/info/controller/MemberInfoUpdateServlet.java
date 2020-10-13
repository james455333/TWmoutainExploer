package member.info.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import member.info.dao.memberInfoDAO;
import member.info.dao.memberInfoJDBCDAO;
import member.login.model.MemberBean;


@WebServlet("/MemberInfoUpdateServlet")
public class MemberInfoUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
//		DataSource ds = null;
//		InitialContext ctxt = null;
//		Connection connection = null;
//		
//		try {
//			ctxt = new InitialContext();
//			ds = (DataSource) ctxt.lookup("java:comp/env/jdbc/xe");
//			connection = ds.getConnection();
//			
//		} catch (NamingException e) {
//			e.printStackTrace();
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
		
		HttpSession session = request.getSession(false);
		String userId = (String) session.getAttribute("userId");
		String password = (String) session.getAttribute("password");
		
//		MemberBean mb = new MemberBean();
		memberInfoDAO infoDAO = new memberInfoJDBCDAO();
		List<MemberBean> showInfo = infoDAO.listMbInfo(userId, password);
		
		List<MemberBean> listMbInfo = new ArrayList<MemberBean>();
		for (MemberBean mb : showInfo) {
			if(mb.getMemberId().equals(userId)) {
				infoDAO.updateData(mb);
				listMbInfo.add(mb);
			}
		}
		
		request.setAttribute("listMbInfo", listMbInfo);
		RequestDispatcher dispatcher = request.getRequestDispatcher("memberInfoUpdate.jsp");
		dispatcher.forward(request, response);
		return;
			
	}

}
