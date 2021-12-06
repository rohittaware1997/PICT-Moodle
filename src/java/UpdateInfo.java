
import com.pict.dao.ConnectDatabase;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import jdk.nashorn.internal.parser.JSONParser;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@WebServlet(urlPatterns = {"/UpdateInfo"})
public class UpdateInfo extends HttpServlet {
public static String uname,gname,assign_no,SubmissionDate,ScheduledDate,str1,sub,sch,marks,rollno,grpcode,subcode,approved;
public static PrintWriter out;
public static Connection conn;
public static int Approved,SubjectCode,GroupCode, Rollno,Marks,counter, d=0;
        PreparedStatement stmt;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, java.text.ParseException, ClassNotFoundException, SQLException, JSONException{
              out = response.getWriter();   
             HttpSession ses = request.getSession();
            uname = (String) ses.getAttribute("username");
            gname = (String) ses.getAttribute("gname");
            assign_no = (String) ses.getAttribute("assign_no");
             //out.println(assign_no);
            
             sub =  request.getParameter("sub1");
           // out.println(sub + "\n");
            
            sch =  request.getParameter("sch1");
          //  out.println(sch + "\n");
            
            rollno =  request.getParameter("rollno");
          //  out.println(rollno + "\n");
           
            marks =  request.getParameter("marks");
          //  out.println(marks + "\n");
            
            subcode =  request.getParameter("subcode");
          //  out.println(subcode + "\n");
            
            grpcode =  request.getParameter("grpcode");
          //  out.println(grpcode + "\n");
            
            approved =  request.getParameter("set");
          //  out.println(approved + "\n");

            
            JSONObject ROLLNO,SCH,SUB,GRPCODE,SUBCODE,MARKS;
            ConnectDatabase cd=new ConnectDatabase();
            conn = cd.getConnection();
           // out.println(sch);
            
        ROLLNO=new JSONObject("{\"\":{\"\":" + rollno +"}}");
         SCH=new JSONObject("{\"\":{\"\":" + sch +"}}");
          SUB=new JSONObject("{\"\":{\"\":" + sub +"}}");
           GRPCODE=new JSONObject("{\"\":{\"\":" + grpcode +"}}");
            SUBCODE=new JSONObject("{\"\":{\"\":" + subcode +"}}");
             MARKS=new JSONObject("{\"\":{\"\":" + marks +"}}");

           int i=0;
       while( i < 20) {
         //  out.println("for \n" + i);
         Rollno =  Integer.parseInt(ROLLNO.getJSONObject("").getJSONArray("").getJSONObject(i).getString("Roll No"));
         Marks =  Integer.parseInt(MARKS.getJSONObject("").getJSONArray("").getJSONObject(i).getString("Marks"));
         SubjectCode =  Integer.parseInt(SUBCODE.getJSONObject("").getJSONArray("").getJSONObject(i).getString("SubjectCode"));
         GroupCode =  Integer.parseInt(GRPCODE.getJSONObject("").getJSONArray("").getJSONObject(i).getString("GroupCode"));
         ScheduledDate =  SCH.getJSONObject("").getJSONArray("").getJSONObject(i).getString("value");
         SubmissionDate =  SUB.getJSONObject("").getJSONArray("").getJSONObject(i).getString("value");
         Approved = approved.charAt(i) == '0' ? 0 : 1;
        updatedb(i); 
        i++;
                 }
        
            response.sendRedirect("LoginSuccessful.jsp?success=1"); 
                     
    }
        
    public void updatedb(int i) throws SQLException {
   
        String q="";   
        q+= "update "+assign_no.trim()+" set Marks=? where (Rollno = ? and SubjectCode = (select SubjectCode from UserInfo where UserID=? and GroupCode=? ))";
   	stmt=conn.prepareStatement(q);
        stmt.setInt(1,Marks);
        stmt.setInt(2,Rollno);
        stmt.setString(3,uname);
        stmt.setInt(4,GroupCode);
       
       out.println(q);
         
    stmt.execute();
     
        q="";
       
        
       q+= "update "+assign_no.trim()+" set Approved=? where (Rollno = ? and SubjectCode = (select SubjectCode from UserInfo where UserID=? and GroupCode=? ))";
        
        stmt=conn.prepareStatement(q);
        stmt.setInt(1,Approved);
        stmt.setInt(2,Rollno);
        stmt.setString(3,uname);
        stmt.setInt(4,GroupCode);
       // System.out.println(apro+Rollno+uname+GroupCode);
        stmt.execute();
        
        q="";
        
        
       q+= "update "+assign_no.trim()+" set SubmissionDate=? where (Rollno = ? and SubjectCode = (select SubjectCode from UserInfo where UserID=? and GroupCode=? ))";

        stmt=conn.prepareStatement(q);
        stmt.setString(1,SubmissionDate);
        stmt.setInt(2,Rollno);
        stmt.setString(3,uname);
        stmt.setInt(4,GroupCode);
        stmt.execute();
        
            q="";
        
        
       q+= "update "+assign_no.trim()+" set ScheduledDate=? where (Rollno = ? and SubjectCode = (select SubjectCode from UserInfo where UserID=? and GroupCode=? ))";

        stmt=conn.prepareStatement(q);
        stmt.setString(1,ScheduledDate);
        stmt.setInt(2,Rollno);
        stmt.setString(3,uname);
        stmt.setInt(4,GroupCode);
        stmt.execute();      
        
        return;
    }
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            try {
                processRequest(request, response);
            } catch (ClassNotFoundException | SQLException | JSONException ex) {
                Logger.getLogger(UpdateInfo.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (java.text.ParseException ex) {
            Logger.getLogger(UpdateInfo.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            try {
                processRequest(request, response);
            } catch (ClassNotFoundException | SQLException | JSONException ex) {
                Logger.getLogger(UpdateInfo.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (java.text.ParseException ex) {
            Logger.getLogger(UpdateInfo.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}


