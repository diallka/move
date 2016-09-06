/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ubber.servlet;

import java.io.IOException;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ubber.entity.Conducteur;
import ubber.service.ConducteurService;

/**
 *
 * @author pro
 */
@WebServlet(name = "InscriptionConducteurServlet", urlPatterns = {"/inscription_conducteur"})
public class InscriptionConducteurServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        String nom = req.getParameter("nom");
        String prenom = req.getParameter("prenom");
        String email = req.getParameter("email");
        String genre = req.getParameter("genre");
        double longitude = Double.parseDouble(req.getParameter("long"));
        double latitude = Double.parseDouble(req.getParameter("lat"));
        //String genreFeminin = req.getParameter("FEMME");
        String login = req.getParameter("login");
        String password = req.getParameter("password");
        
        Conducteur conducteur = new Conducteur();
        conducteur.setNom(nom);
        conducteur.setPrenom(prenom);
        conducteur.setEmail(email);
        conducteur.setGenre(Conducteur.Genre.valueOf(genre));
        conducteur.setPosition_longitude(longitude);
        conducteur.setPosition_latitude(latitude);
        conducteur.setLogin(login);
        conducteur.setPassword(password);
        conducteur.setDate_inscription(new Date());
        
        new ConducteurService().inscription(conducteur);
        
        resp.sendRedirect("connexion_conducteur");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       
        req.getRequestDispatcher("inscription_conducteur.jsp").forward(req, resp);
    }

    
    
}
