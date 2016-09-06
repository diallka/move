/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ubber.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
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
@WebServlet(name = "ConnexionConducteurServlet", urlPatterns = {"/connexion_conducteur"})
public class ConnexionConducteurServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
         //Récuperer params formulaire
      
        String login = req.getParameter("login");
        String password = req.getParameter("password");

        //Récuperer l'utilisateur correspondant en BDD
        //new UtilisateurService().rechercheParLoginEtMdp(login, mdp);
        //test***************************************************************
        
        Conducteur cond = new ConducteurService().recupererIdParLogin(login);
        
         req.getSession().setAttribute("idCond", cond.getId());
         //req.getSession().setAttribute("idCond", cond.getId());
          
//        req.setAttribute("id", idConducteur);
        //Conducteur cond = new Conducteur();
        //req.getSession().setAttribute("id", id);
     
        //Fin test***************************************************************
        
        Conducteur conducteur = new ConducteurService().connecterParLoginEtMdp(login, password);
        resp.sendRedirect("espace_perso_conducteur");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("connexion_conducteur.jsp").forward(req, resp);
    }

    
}
