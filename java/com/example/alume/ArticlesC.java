package com.example.alume;

public class ArticlesC {

    private String nom_art, img_art;
    private int prix_art;

    public ArticlesC(String nom_art, String img_art, int prix_art) {
        this.nom_art = nom_art;
        this.img_art = img_art;
        this.prix_art = prix_art;
    }

    public String getNom_art() {
        return nom_art;
    }

    public void setNom_art(String nom_art) {
        this.nom_art = nom_art;
    }

    public String getImg_art() {
        return img_art;
    }

    public void setImg_art(String img_art) {
        this.img_art = img_art;
    }

    public int getPrix_art() {
        return prix_art;
    }

    public void setPrix_art(int prix_art) {
        this.prix_art = prix_art;
    }
}
