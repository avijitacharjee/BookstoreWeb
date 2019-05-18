/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import DB.DB;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;



/**
 *
 * @author DELL
 */
@WebServlet(name="AddBookServlet", urlPatterns=
{
    "/AddBookServlet"
})
public class AddBookServlet extends HttpServlet {
    String category;
    String author;
    String publisher;
    String name;
    int edition;
    int pages;
    int copies;
    //File image;
    String details;
    private final String path="C:\\Users\\DELL\\Documents\\NetBeansProjects\\BoierDokan\\web\\bookImages";
    Part filePart;
    String fileName;
    

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
            throws ServletException, IOException
    {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out=response.getWriter())
        {
            
            try{
                category=request.getParameter("category");
                author=request.getParameter("author");
                publisher= request.getParameter("publisher");
                name=request.getParameter("name");
                edition=Integer.parseInt(request.getParameter("edition"));
                pages=Integer.parseInt(request.getParameter("pages"));
                copies=Integer.parseInt(request.getParameter("copies"));
                details=request.getParameter("details");
                
//                ServletFileUpload sf= new ServletFileUpload(new DiskFileItemFactory());
//                
//                List<FileItem> multifiles=sf.parseRequest(request);
//                
//                for(FileItem i: multifiles)
//                {
//                    i.write(new File("F:/new"+i.getName()));
//                }
//                
//                out.println("file uploaded successfully");
                DB db= new DB();
                try {
                    db.insertBook(category, author, publisher, name, edition+"", pages+"", copies+"", "F:/new/", details);
                }catch(ClassNotFoundException|SQLException e)
                {
                    out.print("inner exception"+e);
                }
                 
            }catch(Exception e)
            {
                out.println(e);
            }
            
            response.sendRedirect("../BoierDokan/jsp/admin/index.jsp");
            
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
            throws ServletException, IOException
    {
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
            throws ServletException, IOException
    {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo()
    {
        return "Short description";
    }// </editor-fold>

}
