
import com.pict.dao.ConnectDatabase;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.json.JSONException;
import org.json.JSONObject;

@WebServlet(urlPatterns = {"/SetMarksOfStudent"})
public class SetMarksOfStudent extends HttpServlet {
public static PrintWriter out;
ConnectDatabase cd=new ConnectDatabase();
        PreparedStatement stmt;
public static int SubCode, ClassCode, Rollno, Marks;
public static String rn, marks;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, java.text.ParseException, ClassNotFoundException, SQLException, JSONException{
              out = response.getWriter();   
             HttpSession ses = request.getSession();
            
            SubCode = (int) ses.getAttribute("subcode");
           // out.println(SubCode);
 
            ClassCode = (int) ses.getAttribute("classcode");
           // out.println(ClassCode);
           
            rn =  request.getParameter("rollno");
           // out.println(rn + "\n");
            
            marks =  request.getParameter("marks");
            //out.println(marks + "\n");
            
            JSONObject ROLLNO,MARKS;

            Connection  conn = cd.getConnection();

            conn = cd.getConnection(); 
            
         ROLLNO=new JSONObject("{\"\":{\"\":" + rn +"}}");
          MARKS=new JSONObject("{\"\":{\"\":" + marks +"}}");
            
        ///  out.println(MARKS);
         //    out.println(ROLLNO);
            
             

           int i=0;
       while( i < 80) {
         Rollno = Integer.parseInt(ROLLNO.getJSONObject("").getJSONArray("").getJSONObject(i).getString("Roll No"));
        Marks =  Integer.parseInt(MARKS.getJSONObject("").getJSONArray("").getJSONObject(i).getString("Marks"));
         updatedb(); 
        i++;
         }
        
           response.sendRedirect("LoginSuccessful.jsp?success=1"); 
                  
    }
        
    public void updatedb() throws SQLException, ClassNotFoundException {
   Connection conn = cd.getConnection();
        String q="";   
        q+= "update UnitTest set Marks=? where RollNo = ? and SubjectCode = ? and ClassCode = ?";
        
        stmt=conn.prepareStatement(q);
        stmt.setInt(1,Marks);
        stmt.setInt(2,Rollno);
        stmt.setInt(3,SubCode);
        stmt.setInt(4,ClassCode);
       
      // out.println(q);
         
    stmt.execute();       
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
            } catch (ClassNotFoundException | SQLException ex) {
                Logger.getLogger(UpdateInfo.class.getName()).log(Level.SEVERE, null, ex);
            } catch (JSONException ex) {
                Logger.getLogger(SetMarksOfStudent.class.getName()).log(Level.SEVERE, null, ex);
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
            } catch (ClassNotFoundException | SQLException ex) {
                Logger.getLogger(UpdateInfo.class.getName()).log(Level.SEVERE, null, ex);
            } catch (JSONException ex) {
                Logger.getLogger(SetMarksOfStudent.class.getName()).log(Level.SEVERE, null, ex);
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


