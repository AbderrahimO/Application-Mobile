package com.example.alume;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;

public class Menu extends AppCompatActivity implements View.OnClickListener {

    private Button btMonProfil, btMesCommandes, btSeDeconnecter, btPanier, btArticles;
    private String mail_cli;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_menu);

        this.mail_cli = getIntent().getStringExtra("mail_cli");

        this.btMonProfil = (Button) findViewById(R.id.idMonProfil);
        this.btMesCommandes = (Button) findViewById(R.id.idMesCommandes);
        this.btSeDeconnecter = (Button) findViewById(R.id.idSeDeconnecter);
        this.btPanier = (Button) findViewById(R.id.idPanier);
        this.btArticles = (Button) findViewById(R.id.idArticles);

        this.btMonProfil.setOnClickListener(this);
        this.btMesCommandes.setOnClickListener(this);
        this.btSeDeconnecter.setOnClickListener(this);
        this.btPanier.setOnClickListener(this);
        this.btArticles.setOnClickListener(this);
    }

    @Override
    public void onClick(View v) {

        Intent unIntent = null;
        switch ( v.getId())
        {
            case R.id.idMonProfil : unIntent = new Intent(this, MonProfil.class);
                unIntent.putExtra("mail_cli", this.mail_cli);
               // Log.e("mail client : Menu: ",  this.mail_cli);
                break;
            case R.id.idMesCommandes : unIntent = new Intent(this, MesCommandes.class);
                unIntent.putExtra("mail_cli", this.mail_cli);
                break;
            case R.id.idSeDeconnecter : unIntent = new Intent(this, MainActivity.class);
                break;
            case R.id.idPanier : unIntent = new Intent(this, Panier.class);
            unIntent.putExtra("mail_cli",this.mail_cli);
                break;
            case R.id.idArticles : unIntent = new Intent(this, Articles.class);
            unIntent.putExtra("mail_cli", this.mail_cli);
                break;
        }
        this.startActivity(unIntent);

    }
}
