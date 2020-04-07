
package com.AvalesWebAppServlet;
import com.AvalesWebAppLogics.registerLogic;
import com.AvalesWebAppObjs.nuevoRegistroObj;
import java.io.IOException;
import java.util.List;
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
            registerLogic CLogic = new registerLogic();
            List<nuevoRegistroObj> nuevoRegistroList = CLogic.getAllIncome();
            
            request.getSession().setAttribute("nuevoRegistroList", nuevoRegistroList);
            request.getRequestDispatcher("register.jsp")
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
