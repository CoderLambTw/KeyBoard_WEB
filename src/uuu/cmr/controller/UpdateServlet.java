package uuu.cmr.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import uuu.cmr.entity.Customer;
import uuu.cmr.entity.VGBException;
import uuu.cmr.service.CustomerService;

/**
 * Servlet implementation class UpdateServlet
 */
@WebServlet(name = "UpdateServlet", urlPatterns = "/member/update.do")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		List<String> errors = new ArrayList<>();
		//TODO:1.取得request的Form Data
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String pwd = request.getParameter("password");
		String pwdc = request.getParameter("passwordCheck");
		String birthday = request.getParameter("birthday");
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String captcha = request.getParameter("captcha");
		
		if(id==null || (id = id.trim()).length()==0) {			
			errors.add("必須輸入帳號");
		}
		
		if(name==null || (name = name.trim()).length()==0) {
			errors.add("必須輸入姓名");
		}
		
		if(pwd==null || (pwd = pwd.trim()).length()==0) {
			errors.add("必須輸入密碼");
		}
		
		if(!pwdc.equals(pwd)) {
			errors.add("密碼確認欄位不一致");
		}
		
		if(birthday==null || (birthday = birthday.trim()).length()==0) {
			errors.add("必須輸入生日日期");
		}
		
		if(gender==null || (gender = gender.trim()).length()==0) {
			errors.add("必須選擇性別");
		}
		
		if(email==null || (email = email.trim()).length()==0) {
			errors.add("必須輸入信箱");
		}
		
		
		if(address==null || (address = address.trim()).length()==0) {
			errors.add("必須輸入地址");
		}
	
//		if(married==null){
//			errors.add("請選擇婚姻狀況");
//		}
	HttpSession session = request.getSession();
	if(captcha==null || (captcha = captcha.trim()).length()==0) {
		errors.add("請輸入驗證碼");
	}else {
		String oldCaptcha = (String)session.getAttribute("captcha");
		if(!captcha.equalsIgnoreCase(oldCaptcha)) {
			errors.add("驗證碼不正確");
		}
	}
	session.removeAttribute("captcha");
	//2.若無誤呼叫商業邏輯
	if(errors.isEmpty()) {
		
		try {
			Customer c = new Customer();
			c.setId(id);
			c.setName(name);
			c.setPassword(pwd);
			c.setBirthday(birthday);
			c.setGender(gender.charAt(0));
			c.setEmail(email);
			c.setAddress(address);
			CustomerService service = new CustomerService();				
			service.update(c);
			
			//3.1 forward to 成功畫面: register_ok.jsp
			RequestDispatcher dispatcher = 
					request.getRequestDispatcher("/register_ok.jsp");
			request.setAttribute("customer", c);
			
			dispatcher.forward(request, response);
			return;
		}catch(uuu.cmr.entity.DataInvalidException e) {
			errors.add(e.toString());  //給user的
		 }catch (VGBException ex) {
			 this.log("修改失敗", ex);//給admin的
			 errors.add(ex.getMessage());//給user的
		 }catch(Exception ex) {
			 this.log("修改發生非預期錯誤", ex);//給admin的
			 errors.add("發生非預期錯誤" + ex.getMessage());//給user的
		 }
	}
				//3.2forward to 失敗畫面: update.jsp		
				RequestDispatcher dispatcher = 
						request.getRequestDispatcher("/member/update.jsp");
				request.setAttribute("errors", errors);
				
				dispatcher.forward(request, response);
				
	}

}
