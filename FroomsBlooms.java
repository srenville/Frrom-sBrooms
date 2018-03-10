/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URL;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.Templates;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;

/**
 *
 * @author Toozigba
 */
public class FroomsBlooms extends HttpServlet {

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
            throws ServletException, IOException, TransformerConfigurationException, TransformerException {
        
        
       
        
        try (PrintWriter out = response.getWriter()) {
            
            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet FroomsBlooms</title>");            
//            out.println("</head>");
            out.println("<body>");
           // out.println("<h1>Servlet FroomsBlooms at " + request.getContextPath() + "</h1>");
            
            
            RequestDispatcher index = request.getRequestDispatcher("index.html");
            index.include(request, response);

                URL xsltURL = this.getClass().getClassLoader().getResource("ListofPrices.xsl");
Source xslSource = new StreamSource(xsltURL.openStream(),
                                     xsltURL.toExternalForm());

                TransformerFactory factory = TransformerFactory.newInstance();
                Templates templates = factory.newTemplates(xslSource);
                Transformer transformer = templates.newTransformer();

                  URL xmlURL = this.getClass().getClassLoader().getResource("stockXml.xml");
Source xmlSource = new StreamSource(xmlURL.openStream(),
                                     xmlURL.toExternalForm());

                Result htmlResult = new StreamResult(out);
                transformer.transform(xmlSource, htmlResult);

                response.flushBuffer();
                out.flush();
            
            
            
//            out.println("</body>");
//            out.println("</html>");
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
        } catch (TransformerException ex) {
            Logger.getLogger(FroomsBlooms.class.getName()).log(Level.SEVERE, null, ex);
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
        } catch (TransformerException ex) {
            Logger.getLogger(FroomsBlooms.class.getName()).log(Level.SEVERE, null, ex);
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
