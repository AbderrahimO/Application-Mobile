package com.example.alume;

public class Commandes {

    private int id_commandec, prix_lignec, qte_lignec;
    private String nom_artc;


    public Commandes(int id_commandec, int prix_lignec, int qte_lignec, String nom_artc) {
        this.id_commandec = 0;
        this.id_commandec = id_commandec;
        this.prix_lignec = prix_lignec;
        this.qte_lignec = qte_lignec;
        this.nom_artc = nom_artc;

    }
    public Commandes( int prix_lignec, int qte_lignec, String nom_artc) {
        this.id_commandec = 0;
        this.id_commandec = id_commandec;
        this.prix_lignec = prix_lignec;
        this.qte_lignec = qte_lignec;
        this.nom_artc = nom_artc;

    }
    public int getId_commandec() {
        return id_commandec;
    }

    public void setId_commandec(int id_commandec) {
        this.id_commandec = id_commandec;
    }

    public int getPrix_lignec() {
        return prix_lignec;
    }

    public void setPrix_lignec(int prix_lignec) {
        this.prix_lignec = prix_lignec;
    }

    public int getQte_lignec() {
        return qte_lignec;
    }

    public void setQte_lignec(int qte_lignec) {
        this.qte_lignec = qte_lignec;
    }

    public String getNom_artc() {
        return nom_artc;
    }

    public void setNom_artc(String nom_artc) {
        this.nom_artc = nom_artc;
    }


}