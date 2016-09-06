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

/**
 *
 * @author pro
 */
@WebServlet(name = "MettreEnSessionReservation", urlPatterns = {"/mettre_en_session_reservation"})
public class MettreEnSessionReservation extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        req.getSession().setAttribute("idReservation", Long.parseLong( req.getParameter("id") ));
        
        resp.sendRedirect("espace_perso_conducteur");
    }

    

}
