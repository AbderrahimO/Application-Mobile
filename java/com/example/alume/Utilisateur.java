package com.example.alume;

public class Utilisateur {

    private int id_cli;
    private String mail_cli, mdp_cli, nom_cli, prenom_cli;

    public Utilisateur(int id_cli, String mail_cli, String mdp_cli, String nom_cli, String prenom_cli) {
        this.id_cli = id_cli;
        this.mail_cli = mail_cli;
        this.mdp_cli = mdp_cli;
        this.nom_cli = nom_cli;
        this.prenom_cli = prenom_cli;
    }

    public Utilisateur(String mail_cli, String mdp_cli, String nom_cli, String prenom_cli) {
        this.id_cli = 0;
        this.mail_cli = mail_cli;
        this.mdp_cli = mdp_cli;
        this.nom_cli = nom_cli;
        this.prenom_cli = prenom_cli;
    }

    public Utilisateur(String mail_cli, String mdp_cli) {
        this.id_cli = 0;
        this.mail_cli = mail_cli;
        this.mdp_cli = mdp_cli;
        this.nom_cli = "";
        this.prenom_cli = "";

    }

    public int getId_cli() {
        return id_cli;
    }

    public void setId_cli(int id_cli) {
        this.id_cli = id_cli;
    }

    public String getMail_cli() {
        return mail_cli;
    }

    public void setMail_cli(String mail_cli) {
        this.mail_cli = mail_cli;
    }

    public String getMdp_cli() {
        return mdp_cli;
    }

    public void setMdp_cli(String mdp_cli) {
        this.mdp_cli = mdp_cli;
    }

    public String getNom_cli() {
        return nom_cli;
    }

    public void setNom_cli(String nom_cli) {
        this.nom_cli = nom_cli;
    }

    public String getPrenom_cli() {
        return prenom_cli;
    }

    public void setPrenom_cli(String prenom_cli) {
        this.prenom_cli = prenom_cli;
    }
}