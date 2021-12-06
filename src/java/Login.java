
import com.pict.dao.LoginDao;
import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Login extends HttpServlet {

    @Override
    public void service(HttpServletRequest request, HttpServletResponse response) throws IOException {
        LoginDao dao = new LoginDao();
        String username = request.getParameter("Username");
        String password = request.getParameter("Password");
      // String groupname="L10";
        if(username.length() == 3 ){
            if (!dao.check(username, password)) {
                response.sendRedirect("Login.jsp");
            } else {
                HttpSession session = request.getSession();
                session.setAttribute("username", username);
               // session.setAttribute("groupname",groupname);
                response.sendRedirect("LoginSuccessful.jsp");

            }
        }
        else{
            if (!dao.check(username, password)) {
                response.sendRedirect("Login.jsp");
            } else {
                HttpSession session = request.getSession();
                session.setAttribute("username", username);
               // session.setAttribute("groupname",groupname);
                response.sendRedirect("StudLoginSuccessful.jsp");

            }

        }

    }

}