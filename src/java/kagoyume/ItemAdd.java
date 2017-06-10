/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kagoyume;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author komoritakeshi
 */
public class ItemAdd extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        try (PrintWriter out = response.getWriter()) {
            request.setCharacterEncoding("UTF-8");
            ItemBeans ib = new ItemBeans();
            HttpSession hs = request.getSession();
            final String FORWARD_PATH = "WEB-INF/add_complete.jsp";
        
            ib.setItemID(request.getParameter("itemID"));
            ib.setName(request.getParameter("itemName"));
            ib.setPrice(request.getParameter("itemPrice"));
            ib.setImage(request.getParameter("itemImage"));
            
            if (hs.getAttribute("ItemBeansBox") == null) {
                ArrayList<ItemBeans> itemBeansBox = new ArrayList<ItemBeans>();
                itemBeansBox.add(ib);
                hs.setAttribute("ItemBeansBox", itemBeansBox);
            } else {
                ArrayList<ItemBeans> itemBeansBox = (ArrayList<ItemBeans>)hs.getAttribute("ItemBeansBox");
                itemBeansBox.add(ib);
                hs.setAttribute("ItemBeansBox", itemBeansBox);
            }
            
            RequestDispatcher rd = request.getRequestDispatcher(FORWARD_PATH);
            rd.forward(request, response);
            
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
