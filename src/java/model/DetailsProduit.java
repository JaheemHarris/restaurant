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
public class DetailsProduit extends BDTable{
    private int id;
    private int idProduit;
    private int idIngredient;
    private double quantite;

    public DetailsProduit() {
    }

    
    
    public DetailsProduit(int id, int idProduit, int idIngredient, double quantite) {
        this.id = id;
        this.idProduit = idProduit;
        this.idIngredient = idIngredient;
        this.quantite = quantite;
    }
    
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdProduit() {
        return idProduit;
    }

    public void setIdProduit(int idProduit) {
        this.idProduit = idProduit;
    }

    public int getIdIngredient() {
        return idIngredient;
    }

    public void setIdIngredient(int idIngredient) {
        this.idIngredient = idIngredient;
    }

    public double getQuantite() {
        return quantite;
    }

    public void setQuantite(double quantite) {
        this.quantite = quantite;
    }
}
