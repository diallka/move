/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ubber.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.codehaus.jackson.map.ObjectMapper;
import ubber.dao.ClientDAO;
import ubber.entity.Client;

/**
 *
 * @author pro
 */
@WebServlet(name = "RecupUnClientServlet", urlPatterns = {"/reuperer_client"})
public class RecupUnClientServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         
        int idClient = Integer.parseInt(req.getParameter("id"));
        
    
        Client  client = new ClientDAO().RecupererUnClient(idClient);
    
        String json = new ObjectMapper().writeValueAsString(client);
        resp.getWriter().println(json);
   
    }

  
       

}
