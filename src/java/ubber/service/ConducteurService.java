/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ubber.service;

import java.util.List;
import ubber.dao.ConducteurDAO;
import ubber.entity.Conducteur;

/**
 *
 * @author Admin
 */
public class ConducteurService {

    

    //On gere la verification et l'inscription
    public void inscription(Conducteur conducteur) {
        ConducteurDAO dao = new ConducteurDAO();
//        //On verifie le nouveau login, s'il existe on renvoit une erreur,
//        List<Conducteur> listeUtilAvecCeLogin = dao.rechercheParLoginEtMdp(conducteur.getLogin());
//        if(listeUtilAvecCeLogin.size() > 0)
//            throw new RuntimeException("Ce login existe dejà");
        
        // s'il n'existe pas on le crée
        dao.creerUtilisateur(conducteur);
    }
    
     //On recherche un utilisateur existant pour le connecter
    public Conducteur connecterParLoginEtMdp(String login, String password) {
   
        return new ConducteurDAO().connecterParLoginEtMdp(login, password);
    }
//Test
    public Conducteur recupererIdParLogin(String login) {
        
        return new ConducteurDAO().recupererIdParLogin(login);
    }
//Fin test

    public Conducteur RecupererUnConducteur(long id) {
        return new ConducteurDAO().RecupererUnConducteur(id);
    }

    public List<Conducteur> ListerConducteursDisponibles() {
        return new ConducteurDAO().ListerConducteursDisponibles();
    }

    //Modifier disponiblité conducteur
    public void modifierDisponibilite(Conducteur conducteur) {
        ConducteurDAO dao = new ConducteurDAO();
        dao.modifierDisponibilite(conducteur);
    }
}
