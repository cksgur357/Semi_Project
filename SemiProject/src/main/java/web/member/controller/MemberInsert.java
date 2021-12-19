package web.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web.member.model.service.MemberService;
import web.member.model.vo.Member;

/**
 * Servlet implementation class MemberInsert
 */
@WebServlet("/insert.do")
public class MemberInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberInsert() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		String userName = request.getParameter("userName");
		String nickname = request.getParameter("nickname");
		int age = Integer.parseInt(request.getParameter("age"));
		String email = request.getParameter("email");
		// 010-1234-5678
		String phone = request.getParameter("tel1") + "-"
				     + request.getParameter("tel2") + "-"
				     + request.getParameter("tel3");
		
		String address = request.getParameter("zipCode") + "|"
					   + request.getParameter("address1") + "|"
					   + request.getParameter("address2");
		
		Member m = new Member(userId, userPwd, userName, nickname, age, email,
				              phone, address, null);
		
		MemberService service = new MemberService();
		
		int result = service.insertMember(m);
		
		if(result > 0) {
			
			// 회원 가입 성공
			response.sendRedirect("views/common/mainPage.jsp");
		} else {
			// 회원 가입 실패
			RequestDispatcher view = 
					request.getRequestDispatcher("views/common/errorPage.jsp");
			
			request.setAttribute("error-msg", "회원 가입 실패");
			
			view.forward(request, response);
		}
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
