/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import java.util.ArrayList;
import java.util.List;
import model.Categorie;
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
            category = new Categorie();
            categoryList = category.find("SELECT * FROM categorie", category);
        }catch(Exception e){
            throw e;
        }
        return categoryList;
    }
    public List<Produit> getAllProducts() throws Exception{ 
        List<Produit> productList = new ArrayList<Produit>();
        try{
            product = new Produit();
            productList = product.find("SELECT * FROM produit " , product);
        }catch(Exception e){
            throw e;
        }
        return productList;
    }
    public List<Produit> getProducts(String categorie) throws Exception{
        List<Produit> productList = new ArrayList<Produit>();
        try{
            product = new Produit();
            productList = product.find("SELECT * FROM produit WHERE idcategorie = " + categorie, product);
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
