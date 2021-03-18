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
 * Servlet implementation class SendProcServlet
 */
@WebServlet("/sendProc")
public class SendProcServlet extends HttpServlet 
{
   private static final long serialVersionUID = 1L;
   private static Logger logger = LogManager.getLogger(SendProcServlet.class);   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SendProcServlet() 
    {
        super();
        // TODO Auto-generated constructor stub
        logger.debug("[SendProcServlet] SendProcServlet");
    }

   /**
    * @see Servlet#init(ServletConfig)
    */
   public void init(ServletConfig config) throws ServletException 
   {
      // TODO Auto-generated method stub
      logger.debug("[SendProcServlet] init");
   }

   /**
    * @see Servlet#destroy()
    */
   public void destroy() 
   {
      // TODO Auto-generated method stub
      logger.debug("[SendProcServlet] destroy");
   }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
   {
      // TODO Auto-generated method stub
      logger.debug("[SendProcServlet] doGet");
      process(request, response);
   }

   /**
    * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
   {
      // TODO Auto-generated method stub
      logger.debug("[SendProcServlet] doPost");
      process(request, response);
   }
   
   private void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
   {
      //response.getWriter().append("Served at: ").append(request.getContextPath());
      //response.setCharacterEncoding("UTF-8");
      
      logger.debug(HttpUtil.requestLogString(request));
      
      String method = request.getMethod(); 
      String name = request.getParameter("name");
      String email = request.getParameter("email");
      
      PrintWriter writer = response.getWriter();
      
      writer.println("<!DOCTYPE html>");
      writer.println("<html>");
      writer.println("<head>");
      writer.println("<meta charset=\"UTF-8\">");
      writer.println("<title>sendProc</title>");
      writer.println("</head>");
      writer.println("<body>");
      writer.println("method : " + method);
      writer.println("<br />");
      writer.println("name : " + name);
      writer.println("<br />");
      writer.println("email : " + email);
      writer.println("</body>");
      writer.println("</html>");
   }
}