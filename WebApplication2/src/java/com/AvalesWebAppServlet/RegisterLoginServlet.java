
package com.AvalesWebAppServlet;
import com.AvalesWebAppLogics.registerLogic;
import com.AvalesWebAppObjs.Admin;
import com.AvalesWebAppObjs.nuevoRegistroObj;
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
            String s_password = request.getParameter("f_password");
            
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

            registerLogic CLogic = new registerLogic();
            boolean bHasFailed = CLogic.insertRegister(s_nombre,s_telefono,s_celular,s_profesion,
                    s_direccion, s_fecha, s_estatus, s_email, s_familia, s_iglesia, s_estado, s_mc,
                    s_educacion, s_economia, s_artes, s_facebook, s_twitter, s_password);
            
            
            registerLogic CLogic2 = new registerLogic();
            nuevoRegistroObj registroEntrante = CLogic2.getUserInfo(s_email, s_password);
            

            registroEntrante = new nuevoRegistroObj(registroEntrante.getId(),s_nombre,s_telefono,s_celular,s_profesion,
                    s_direccion, s_fecha, s_estatus, s_email, s_familia, s_iglesia, s_estado, s_mc,
                    s_educacion, s_economia, s_artes, s_facebook, s_twitter, s_password);
            
            
            request.getSession().setAttribute("registroEntrante", registroEntrante);
            request.getSession().setAttribute("bHasFailed", bHasFailed);
            request.getRequestDispatcher("registro1exito.jsp")
                    .forward(request, response);
        }
        
        
        
                
        if (stringform.equals("2"))
        {
            String email = request.getParameter("fl_email");
            String password = request.getParameter("fl_password");
            
            registerLogic CLogic2 = new registerLogic();
            nuevoRegistroObj InfoLogin = 
                    CLogic2.getUserInfo(email, password);
            
            
            if(InfoLogin!=null)
            {
                //log the user     
                request.getSession().setAttribute("logged_user", InfoLogin);
                request.getRequestDispatcher("perfil.jsp")
                        .forward(request, response);
            }
            else 
            {
                //issue with the user   
                request.getRequestDispatcher("login.jsp")
                        .forward(request, response);
            }
        }
        
        if (stringform.equals("3"))
        {
           
            String username = request.getParameter("fadmin_username");
            String password = request.getParameter("fadmin_password");
            
            registerLogic CLogic3 = new registerLogic();
            Admin InfoLogin = 
                    CLogic3.getAdminInfo(username, password);
   
            if(InfoLogin!=null)
            {
                //log the user     
                request.getSession().setAttribute("logged_user", InfoLogin);
                request.getRequestDispatcher("PerfilDeAdmin.jsp")
                        .forward(request, response);
            }
            else 
            {
                //issue with the user   
                request.getRequestDispatcher("loginAdmin.jsp")
                        .forward(request, response);
            }
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
