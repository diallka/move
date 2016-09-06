/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ubber.dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.Persistence;
import javax.persistence.Query;
import ubber.entity.Conducteur;


/**
 *
 * @author Admin
 */
public class ConducteurDAO {
     public List<Conducteur> ListerConducteurs() {
        EntityManager em = Persistence.createEntityManagerFactory("PU").createEntityManager();
        return em.createQuery("SELECT c FROM Conducteur c").getResultList();
    } 
    
   public Conducteur RecupererUnConducteur(long id) {
        EntityManager em = Persistence.createEntityManagerFactory("PU").createEntityManager();
        Query query=em.createQuery("SELECT c FROM Conducteur c WHERE c.id=:un");
        query.setParameter("un", id);
        return (Conducteur)query.getSingleResult();
    }  

   //Rechercher si un utilisateur a deja ce login si oui on renvoie une exception specifiée dans le Service
    public List<Conducteur> rechercheParLoginEtMdp(String login, String password) {
        EntityManager em = Persistence.createEntityManagerFactory("PU").createEntityManager();
       return em.createQuery("SELECT u FROM Conducteur u WHERE u.login=:newLogin").setParameter("newLogin", login).getResultList();
    }

    //On crée un Utilisateur s'il n'existe pas
    public void creerUtilisateur(Conducteur conducteur) {
        EntityManager em = Persistence.createEntityManagerFactory("PU").createEntityManager();
        
        em.getTransaction().begin();
        em.persist(conducteur);
        em.getTransaction().commit();
    }
    
     //Rechercher utilisateur existant par login et mdp et on le connecte
    public Conducteur connecterParLoginEtMdp(String login, String password) {
       EntityManager em = Persistence.createEntityManagerFactory("PU").createEntityManager();
       Query query = em.createQuery("SELECT c FROM Conducteur c WHERE c.login=:monLogin AND c.password=:monMdp");
       query.setParameter("monLogin", login);
       query.setParameter("monMdp", password);
       
       return (Conducteur) 
               query.getSingleResult();
    }

    //Test....................................................
    public Conducteur recupererIdParLogin(String login) {
         EntityManager em = Persistence.createEntityManagerFactory("PU").createEntityManager();
        Query query=em.createQuery("SELECT c FROM Conducteur c WHERE c.login=:login");
        query.setParameter("login", login);
        return (Conducteur)query.getSingleResult();
    }
    //Fin test...............
}
