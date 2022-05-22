/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import java.util.ArrayList;
import java.util.List;
import model.Categorie;
import model.DetailsProduit;
import model.Produit;

/**
 *
 * @author jaheem
 */
public class ProduitService {
    
    private Produit product;
    private Categorie category;
    
    public List<Categorie> getAllCategories() throws Exception{
        List<Categorie> categoryList = new ArrayList<Categorie>();
        try{
            
        }catch(Exception e){
            throw e;
        }
        return categoryList;
    }
    
    public List<Produit> getProducts(String categorie) throws Exception{
        List<Produit> productList = new ArrayList<Produit>();
        try{
            
        }catch(Exception e){
            throw e;
        }
        return productList;
    }
    
    public Produit getProduct(String id) throws Exception{
        Produit produit = null;
        try{
            
        }catch(Exception e){
            throw e;
        }
        return produit;
    }
}
