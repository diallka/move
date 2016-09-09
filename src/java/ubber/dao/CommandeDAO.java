/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ubber.dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.Persistence;
import ubber.entity.Commande;
import ubber.entity.Conducteur;

/**
 *
 * @author admin
 */
public class CommandeDAO {

    public void creer(Commande cmd) {

        EntityManager em = Persistence.createEntityManagerFactory("PU").createEntityManager();
        em.getTransaction().begin();

        em.persist(cmd);

        em.getTransaction().commit();
    }

    public List<Commande> listerCommande(long id) {
        EntityManager em = Persistence.createEntityManagerFactory("PU").createEntityManager();
        
        return em.createQuery("SELECT c FROM Commande c WHERE c.conducteur.id =:id_conducteur")
                .setParameter("id_conducteur", id).getResultList();

    }

    //Test Native Query pour afficher commandes par client.
    public List<Commande> listerCommandesParClient(long id) {
        EntityManager em = Persistence.createEntityManagerFactory("PU").createEntityManager();
        return em.createQuery("SELECT c  FROM Commande c WHERE c.client.id =:idClient")
                .setParameter("idClient", id)
                .getResultList();
    }

//    public List<Commande> listerCommandes() {
//        EntityManager em = Persistence.createEntityManagerFactory("PU").createEntityManager();
//        return em.createQuery("SELECT c FROM Commande c WHERE c.client.id = 603").getResultList();
//    }

    //Recuperer une commande
//    public Commande recupererUneCommande() {
//
//    }

    public List <Commande> recupererPrixTotal(long id) {
        EntityManager em = Persistence.createEntityManagerFactory("PU").createEntityManager();
        return em.createQuery("SELECT   SUM(c.prix)  FROM Commande c where c.conducteur.id =:idCond")
                .setParameter("idCond", id)
                .getResultList();
    }

}
