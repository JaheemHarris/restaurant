/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import dao.BDTable;

/**
 *
 * @author jaheem
 */
public class Produit extends BDTable{
    private int id;
    private int idCategorie;
    private String  nom;

    public Produit() {
    }
    
    

    public Produit(int id, int idCategorie, String nom) {
        this.id = id;
        this.idCategorie = idCategorie;
        this.nom = nom;
    }
    
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdCategorie() {
        return idCategorie;
    }

    public void setIdCategorie(int idCategorie) {
        this.idCategorie = idCategorie;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }
    
    
}
