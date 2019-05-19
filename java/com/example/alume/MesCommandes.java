package com.example.alume;

import android.content.Intent;
import android.os.AsyncTask;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ListView;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;

public class MesCommandes extends AppCompatActivity implements View.OnClickListener {
    private String mail_cli;
    private ListView lvMesCommandes;
    private Button btRetour;
    private ArrayList <Commandes> mesCommandes = null;

    public ArrayList<Commandes> getMesEvents() {
        return mesCommandes;
    }

    public void setMesCommandes(ArrayList<Commandes> mesCommandes) {
        this.mesCommandes = mesCommandes;
        remplirLV();
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_mes_commandes);

        this.lvMesCommandes = (ListView) findViewById(R.id.idListeMesCommandes);
        this.btRetour = (Button) findViewById(R.id.idRetour2);

        this.mail_cli = this.getIntent().getStringExtra("mail_cli");
        this.btRetour.setOnClickListener(this);
        Thread unT = new Thread(new Runnable() {
            @Override
            public void run() {
                final BDDMesCommandes uneBDDMesCommandes = new BDDMesCommandes();
                uneBDDMesCommandes.execute(mail_cli);

            }
        });
        unT.start();

    }

    public void remplirLV() {
        //Remplissage de la Liste view
        ArrayList<String> mesCommandesString = new ArrayList<>();
        for (Commandes uneCommande : mesCommandes) {
            mesCommandesString.add(uneCommande.getNom_artc() + " " + uneCommande.getQte_lignec() + " "
                    + uneCommande.getPrix_lignec());
        }
        ArrayAdapter unAdapter = new ArrayAdapter(MesCommandes.this, android.R.layout.simple_list_item_1, mesCommandesString);
        lvMesCommandes.setAdapter(unAdapter);
    }

    @Override
    public void onClick(View v) {
        if (R.id.idRetour2 == v.getId())
        {
            Intent unIntent = new Intent(this, Menu.class);
            unIntent.putExtra("mail_cli", this.mail_cli);
            this.startActivity(unIntent);
        }
    }

    class BDDMesCommandes extends AsyncTask<String, Void, ArrayList<Commandes>> {

        @Override
        protected ArrayList<Commandes> doInBackground(String... strings) {
            ArrayList<Commandes> mesEventsBDD = new ArrayList<Commandes>();
            String url = "http://192.168.0.45/LM%202018/Alume/mes_commandes.php" + "?mail_cli=" + strings[0];
            String resultat = "";

            try {
                URL uneURL = new URL(url);
                HttpURLConnection uneConnexion = (HttpURLConnection) uneURL.openConnection();
                uneConnexion.setRequestMethod("GET");
                uneConnexion.setDoInput(true);
                uneConnexion.setDoOutput(true);
                uneConnexion.setReadTimeout(10000);
                uneConnexion.setConnectTimeout(15000);
                uneConnexion.connect();
                //extraction du JSON
                InputStream is = uneConnexion.getInputStream();
                BufferedReader br = new BufferedReader(new InputStreamReader(is, "UTF-8"));
                StringBuilder sb = new StringBuilder();
                String ligne = "";
                while ((ligne = br.readLine()) != null)
                {
                    sb.append(ligne);
                }
                resultat = sb.toString();
                br.close();
                is.close();
                Log.e("chaine lue : ", resultat);
            } catch (IOException exp) {
                Log.e("Erreur de connexion", url);
            }
            //traiteemntdu JSON
            try {
                JSONArray tabJson = new JSONArray(resultat);
                for (int i = 0; i < tabJson.length(); i++) {
                    JSONObject jo = tabJson.getJSONObject(i);
                    String nom_artc = jo.getString("nom_artc");
                    int qte_lignec = jo.getInt("qte_lignec");
                    int prix_lignec = jo.getInt("prix_lignec");
                    Commandes uneCommande = new Commandes(qte_lignec, prix_lignec, nom_artc);
                    mesEventsBDD.add(uneCommande);

                }
            } catch (JSONException exp) {
                Log.e("Erreur de parsing json:", resultat);
            }
            return mesEventsBDD;
        }

        @Override
        protected void onPostExecute(ArrayList<Commandes> commandes) {
            setMesCommandes(commandes);
        }

    }

}