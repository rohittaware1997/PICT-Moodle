/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import com.pict.dao.CreateTableDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author sameer
 */
public class AssignCreate extends HttpServlet {

    public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException{
    
        String usrname=request.getParameter("username");
        String groupname=request.getParameter("grpname");
        String num=request.getParameter("AssignNumber");
        PrintWriter out = response.getWriter();
        out.println(usrname);
         out.println(groupname);
       out.println(num);
       
       HttpSession ses = request.getSession();
       ses.setAttribute("username", usrname);
       ses.setAttribute("grpname", groupname);
       
        String date=request.getParameter("sdate");
        out.println("date is "+date);
        
        CreateTableDao ctd=new CreateTableDao();
       
        
        try {
            ctd.create(usrname, groupname, num,date);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(AssignCreate.class.getName()).log(Level.SEVERE, null, ex);
        }
        
      
        //
        //request.getRequestDispatcher("Assign.jsp").forward(request, response);
    response.sendRedirect("LoginSuccessful.jsp");
    }
}


