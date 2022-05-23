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
public class Stock extends BDTable{
    
    private int id;
    private int idIngredient;
    private double entree;
    private double sortie;
    private double prix;
    private String dateMouvement;

    public Stock() {
    }
    
    

    public Stock(int id, int idIngredient, double entree, double sortie, double prix, String dateMouvement) {
        this.id = id;
        this.idIngredient = idIngredient;
        this.entree = entree;
        this.sortie = sortie;
        this.prix = prix;
        this.dateMouvement = dateMouvement;
    }
    
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdIngredient() {
        return idIngredient;
    }

    public void setIdIngredient(int idIngredient) {
        this.idIngredient = idIngredient;
    }

    public double getEntree() {
        return entree;
    }

    public void setEntree(double entree) {
        this.entree = entree;
    }

    public double getSortie() {
        return sortie;
    }

    public void setSortie(double sortie) {
        this.sortie = sortie;
    }

    public double getPrix() {
        return prix;
    }

    public void setPrix(double prix) {
        this.prix = prix;
    }

    public String getDateMouvement() {
        return dateMouvement;
    }

    public void setDateMouvement(String dateMouvement) {
        this.dateMouvement = dateMouvement;
    }
    
}
