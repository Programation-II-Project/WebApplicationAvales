
package com.AvalesWebAppServlet;
import com.AvalesWebAppLogics.registerLogic;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "RegisterLoginServlet", urlPatterns = {"/RegisterLoginServlet"})
public class RegisterLoginServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        String stringform = request.getParameter("formid");
        
        if (stringform.equals("1")) 
        {
            String s_nombre = request.getParameter("f_nombre");
            String s_telefono = request.getParameter("f_telefono");
            String s_celular = request.getParameter("f_celular");
            String s_profesion = request.getParameter("f_profesion");
            String s_direccion = request.getParameter("f_direccion");
            String s_fecha = request.getParameter("f_fecha");
            String s_estatus = request.getParameter("f_estatus");
            String s_email = request.getParameter("f_email");
            
            String sa_familia = request.getParameter("f_familia");
            String sa_iglesia = request.getParameter("f_iglesia");
            String sa_estado = request.getParameter("f_estado");
            String sa_mc = request.getParameter("f_mc");
            String sa_educacion = request.getParameter("f_educacion");
            String sa_economia = request.getParameter("f_economia");
            String sa_artes = request.getParameter("f_artes");
            
            int s_familia = Integer.parseInt(sa_familia);
            int s_iglesia = Integer.parseInt(sa_iglesia);
            int s_estado = Integer.parseInt(sa_estado);
            int s_mc = Integer.parseInt(sa_mc);
            int s_educacion = Integer.parseInt(sa_educacion);
            int s_economia = Integer.parseInt(sa_economia);
            int s_artes = Integer.parseInt(sa_artes);
            
            String s_facebook = request.getParameter("f_facebook");
            String s_twitter = request.getParameter("f_twitter");
            
            System.out.println(s_nombre);
            System.out.println(s_telefono);
            System.out.println(s_celular);
            System.out.println(s_profesion);
            System.out.println(s_direccion);
            System.out.println(s_fecha);
            System.out.println(s_estatus);
            System.out.println(s_email);
            System.out.println(s_familia);
            System.out.println(s_iglesia);
            System.out.println(s_estado);
            System.out.println(s_mc);
            System.out.println(s_educacion);
            System.out.println(s_economia);
            System.out.println(s_artes);
            System.out.println(s_twitter);
            System.out.println(s_facebook);
            
            
            registerLogic CLogic = new registerLogic();
            boolean bHasFailed = CLogic.insertRegister(s_nombre,s_telefono,s_celular,s_profesion,
                    s_direccion, s_fecha, s_estatus, s_email, s_familia, s_iglesia, s_estado, s_mc,
                    s_educacion, s_economia, s_artes, s_facebook, s_twitter);
            
            
            request.getSession().setAttribute("bHasFailed", bHasFailed);
            request.getRequestDispatcher("index.html")
                    .forward(request, response);
        }
        
        if (stringform.equals("2")) 
        { 
        request.getRequestDispatcher("login.jsp").forward(request, response);
        }
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
        processRequest(request, response);
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
        processRequest(request, response);
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
