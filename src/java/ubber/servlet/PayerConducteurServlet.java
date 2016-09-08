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
import ubber.entity.Commande;
import ubber.entity.Conducteur;
import ubber.service.CommandeService;

/**
 *
 * @author admin
 */
@WebServlet(name = "PayerConducteurServlet", urlPatterns = {"/payer_conducteur"})
public class PayerConducteurServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       
        long idConducteur = Long.parseLong(req.getParameter("id"));
        System.out.println(idConducteur + "**************");
        String origine = req.getParameter("origin");
        String destination = req.getParameter("destination");
        Conducteur cond = new Conducteur();
        cond.setId(idConducteur);
        
        
        Commande cmd = new Commande();
        cmd.setConducteur(cond);
        cmd.setAdresse_destination(destination);
        cmd.setDate(new Date());
        
        new CommandeService().creerCommande(cmd);
        
        //String recupJson = new ObjectMapper().writeValueAsString(id)
        
    }

    

}
