package com.example.alume;

import android.content.Intent;
import android.os.AsyncTask;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

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

public class Inscription extends AppCompatActivity implements View.OnClickListener {

    private Button btCreer, btRetour5 ;
    private EditText txtEmail3, txtMdp3, txtNom3, txtPrenom3, txtTel, txtAdresse;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_inscription);

        this.btCreer = (Button)findViewById(R.id.idCreer);
        this.btRetour5 = (Button) findViewById(R.id.idRetour5);
        this.txtEmail3 = (EditText) findViewById(R.id.idEmail3);
        this.txtMdp3 = (EditText) findViewById(R.id.idMdp3);
        this.txtNom3 = (EditText) findViewById(R.id.idNom3);
        this.txtPrenom3 = (EditText) findViewById(R.id.idPrenom3);
        this.txtTel = (EditText) findViewById(R.id.idTel);
        this.txtAdresse = (EditText) findViewById(R.id.idAdresse);


        this.btCreer.setOnClickListener(this);
        this.btRetour5.setOnClickListener(this);


    }

    @Override
    public void onClick(View v) {

        Intent unIntent = null;
        switch (v.getId()) {

            case R.id.idRetour5:
                unIntent = new Intent(this, MainActivity.class);
                this.startActivity(unIntent);
                break;

                if(v.getId() == R.id.idCreer)
                {
                    String email = this.txtEmail3.getText().toString();
                    String mdp = this.txtMdp3.getText().toString();
                    String nom = this.txtNom3.getText().toString();
                    String prenom = this.txtPrenom3.getText().toString();
                    String tel = this.txtTel.getText().toString();
                    String adresse = this.txtAdresse.getText().toString();
                }



                

        }
    }

    class BDDMesCommandes extends AsyncTask<String, Void, ArrayList<Commandes>> {

        @Override
        protected ArrayList<Commandes> doInBackground(String... strings) {
            ArrayList<Commandes> mesEventsBDD = new ArrayList<Commandes>();
            String url = "http://192.168.0.45/LM%202018/Alume/mes_commandes.php" + strings[0];
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

    } */
        }
    }}