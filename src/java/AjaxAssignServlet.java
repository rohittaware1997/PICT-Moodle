/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import com.pict.dao.GetAssignment;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.*;

/**
 *
 * @author sameer
 */
public class AjaxAssignServlet extends HttpServlet {
 
    @Override
    public void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

            PrintWriter out=response.getWriter();
        
           
                JSONArray arrayObj=new JSONArray(); 
            response.setContentType("application/json;charset=UTF-8"); 
 
                JSONObject jobj = null;
            GetAssignment ga=new GetAssignment();
            int num=10;//ga.assignmentCount((String) session.getAttribute("username"),"L10");
       
            response.setContentType("application/json");
        try {
            jobj=ga.assignment("JKK","L10");

        } catch (ClassNotFoundException | SQLException | JSONException ex) {
            Logger.getLogger(AjaxAssignServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
       
            String gname=request.getParameter("grpname");
            String uname=request.getParameter("username");
            System.out.println(jobj.toString());
            out.println(jobj.toString());
            
    }

}
