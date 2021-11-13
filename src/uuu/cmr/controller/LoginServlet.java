package uuu.cmr.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import uuu.cmr.entity.Customer;
import uuu.cmr.entity.VGBException;
import uuu.cmr.service.CustomerService;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet(name = "LoginServlet", urlPatterns = "/login.do") //實際網址將為:http://localhost:8080/vgb/login.do
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
//      @Override
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		doPost(request, response);
//	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
				throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		List<String> errors = new ArrayList<>();
		//TODO:1.取得request的Form Data
		String id = request.getParameter("id");
		String pwd = request.getParameter("password");
//		String captcha = request.getParameter("captcha");
		
		if(id==null || (id = id.trim()).length()==0) {			
			errors.add("必須輸入帳號");					
		}		
		
		if(pwd==null || (pwd = pwd.trim()).length()==0) {
			errors.add("必須輸入密碼");
		}
		HttpSession session = request.getSession();		
//		if(captcha==null || (captcha = captcha.trim()).length()==0) {
//			errors.add("必須輸入驗證碼");
//		}else {
//			String oldCaptcha = (String)session.getAttribute("captcha");
//			if(!captcha.equalsIgnoreCase(oldCaptcha)) {
//				errors.add("驗證碼不正確");
//			}
//		}
		session.removeAttribute("captcha");
		//2.若無誤呼叫商業邏輯
		if(errors.isEmpty()) {
			CustomerService service = new CustomerService();
			try {
				Customer c = service.login(id, pwd);
				
				//加上Cookie的示範
				String auto = request.getParameter("auto");
				Cookie idCookie = new Cookie("id", id);
				Cookie autoCookie = new Cookie("auto", "checked");
				if(auto!=null) {
					idCookie.setMaxAge(7*24*60*60);
					autoCookie.setMaxAge(7*24*60*60);
				}else {
					idCookie.setMaxAge(0);
					autoCookie.setMaxAge(0);
				}
				response.addCookie(idCookie);
				response.addCookie(autoCookie);
				
				
				//3.1 forward(外部轉址) 成功畫面:首頁		
				session.setAttribute("member", c);
				//session.setMaxInactiveInterval(10);//10sec，沒事不要加這段回來
				//3.1舊的寫法forward(內部轉交)成功畫面:首頁
//				RequestDispatcher dispatcher = 
//							request.getRequestDispatcher("/");
//				dispatcher.forward(request, response);
				//3.1新的寫法redirect(外部轉址)成功畫面:首頁
				response.sendRedirect(request.getContextPath());
				return;
			} catch (VGBException e) {
				//e.printStackTrace(System.err);
				this.log("登入失敗", e);
				errors.add(e.getMessage());
			}catch(uuu.cmr.entity.DataInvalidException e) {
				errors.add(e.toString());
			}catch(Exception e) { //最常見RuntimeException的子類別.uuu.vgb.entity.DataInvalidException
				this.log("登入發生非預期錯誤", e);
				errors.add("發生非預期錯誤" + e);
			}
		}
		//3.2forwand(內部轉交)失敗畫面/login.jsp	
		RequestDispatcher dispatcher = 
				request.getRequestDispatcher("/index.jsp");
		request.setAttribute("errors", errors);
		
		dispatcher.forward(request, response);
		
	}

}
