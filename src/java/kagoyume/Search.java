/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kagoyume;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.RequestDispatcher;
import javax.xml.parsers.ParserConfigurationException;
import java.util.ArrayList;
import javax.servlet.http.HttpSession;

import org.xml.sax.SAXException;

/**
 *
 * @author nanameue
 */
public class Search extends HttpServlet {

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
            throws ServletException, IOException, SAXException, ParserConfigurationException {
        response.setContentType("text/html;charset=UTF-8");

        try (PrintWriter out = response.getWriter()) {

            ArrayList<ItemBeans> results = new ArrayList<ItemBeans>();
            HttpSession hs = request.getSession();
            hs.removeAttribute("GetDataFromAPI");
            final String FORWARD_PATH = "search.jsp";
            final String FORWARD_ERROR_PATH = "WEB-INF/research_not_found.jsp";

            request.setCharacterEncoding("UTF-8");
            String searchStr = request.getParameter("search");
            String appid = "dj0zaiZpPWhqd2pObWg4MGxZQSZzPWNvbnN1bWVyc2VjcmV0Jng9Nzg-";
            results = YahooAPILogic.connectWebAPI(searchStr, appid);

            if (results != null) {
                hs.setAttribute("GetDataFromAPI", results);
                RequestDispatcher rq = request.getRequestDispatcher(FORWARD_PATH);
                rq.forward(request, response);
            } else {
                RequestDispatcher rq = request.getRequestDispatcher(FORWARD_ERROR_PATH);
                rq.forward(request, response);
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
        try {
            processRequest(request, response);
        } catch (SAXException e) {

        } catch (ParserConfigurationException e) {

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
            processRequest(request, response);
        } catch (SAXException e) {

        } catch (ParserConfigurationException e) {

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
