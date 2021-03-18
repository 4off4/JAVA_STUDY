package com.icia.web.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.icia.web.util.HttpUtil;

/**
 * Servlet implementation class SendFormServlet
 */
@WebServlet("/SendFormServlet")
public class SendFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static Logger logger = LogManager.getLogger(SendFormServlet.class);
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SendFormServlet() {
        super();
        logger.debug("[SendFormServlet] SendFormServlet start"); 
        //관리자용 console창에 찍어서 확인용 
        
    }
    
    public void init(ServletConfig Config) throws ServletException {
    	logger.debug("[SendFormServlet] init");
    	
    }
    
    public void destory() {
    	logger.debug("[SendFormServlet] destory");
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		logger.debug("[SendFormServlet] doGet");
		process(request, response);		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		logger.debug("[SendFormServlet] doPost");
		process(request, response);
	}

	private void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		logger.debug(HttpUtil.requestLogString(request));
		//request는 키와 값을 넘겨주는거다
		
		PrintWriter writer = response.getWriter();
	
		writer.println("<!DOCTYPE html>");
		writer.println("<html>");
		writer.println("<head>");
		writer.println("<meta charset=\"UTF-8\">");
		writer.println("<title>sendForm</title>");
		writer.println("</head>");
		writer.println("<body>");
		
	    writer.println("<a href=\"/sendProc?name=인천일보&email=icia@naver.com\">GET 방식 전송</a>");
	    writer.println("<br />");
	    writer.println("<br />");
	    writer.println("<form name=\"form\" method=\"post\" action=\"/sendProc\">");
	    writer.println("이름 : <input type=\"text\" name=\"name\" style=\"width:200px;\" />");
	    writer.println("<br />"); 
	    writer.println("이메일: <input type=\"text\" name=\"email\" style=\"width:200px;\" />");
	    writer.println("<br />");
	    writer.println("<button type=\"button\" onclick=\"submit()\">POST 방식 전송</button> ");
	    writer.println("</form>");
	    
		writer.println("</body>");
		writer.println("</html>");
	}
}
