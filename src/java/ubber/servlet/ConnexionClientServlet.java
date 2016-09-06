/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ubber.servlet;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ubber.entity.Client;
import ubber.service.ClientService;

/**
 *
 * @author pro
 */
@WebServlet(name = "ConnexionClient", urlPatterns = {"/connexion_client"})
public class ConnexionClientServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        req.getRequestDispatcher("connexion_client.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
         //Récuperer params formulaire
        String login = req.getParameter("login");
        String mdp = req.getParameter("password");

        //Récuperer l'utilisateur correspondant en BDD
        //new UtilisateurService().rechercheParLoginEtMdp(login, mdp);
        Client client = new ClientService().rechercheParLoginEtMdp(login, mdp);
        resp.sendRedirect("espace_personnel_client");
    }

    
}
