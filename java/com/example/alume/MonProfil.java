package com.example.alume;

import android.content.Intent;
import android.os.AsyncTask;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

import com.example.alume.Utilisateur;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class MonProfil extends AppCompatActivity implements View.OnClickListener {

    private EditText txtEmail, txtMdp, txtNom, txtPrenom;
    private Button btEnregistrer, btAnnuler;
    private String mail_cli;
    private Utilisateur unUserConnecte = null ;

    public void setUnUserConnecte(Utilisateur unUserConnecte) {
        this.unUserConnecte = unUserConnecte;
        remplirTXT();
    }
    public void remplirTXT()
    {
        this.txtEmail.setText(unUserConnecte.getMail_cli());
        this.txtMdp.setText(unUserConnecte.getMdp_cli());
        this.txtNom.setText(unUserConnecte.getNom_cli());
        this.txtPrenom.setText(unUserConnecte.getPrenom_cli());
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_mon_profil);

        this.btAnnuler = (Button) findViewById(R.id.idEnregistrer2);
        this.btEnregistrer = (Button) findViewById(R.id.idAnnuler2);
        this.txtEmail = (EditText) findViewById(R.id.idMail_cli2);
        this.txtMdp = (EditText) findViewById(R.id.idMdp_cli2);
        this.txtNom = (EditText) findViewById(R.id.idNom_cli2);
        this.txtPrenom = (EditText) findViewById(R.id.idPrenom_cli2);
        this.mail_cli = this.getIntent().getStringExtra("mail_cli");
        //recuperation des données de la bdd
        Thread unT = new Thread(new Runnable() {
            @Override
            public void run() {
                GetProfil uneGetProfil = new GetProfil();
                uneGetProfil.execute(mail_cli);

            }
        });
        unT.start();

        this.btEnregistrer.setOnClickListener(this);
        this.btAnnuler.setOnClickListener(this);
        Log.e("mail mon profil ", mail_cli);


    }

    @Override
    public void onClick(View v) {
        switch (v.getId())
        {
            case R.id.idAnnuler2 :
            {
                Intent unIntent = new Intent (this, Menu.class);
                unIntent.putExtra("mail_cli", this.mail_cli);
                startActivity(unIntent);
            }break;

            case R.id.idEnregistrer2 :
            {
                Intent unIntent = new Intent (this, Menu.class);
                startActivity(unIntent);
            }break;

        }

    }
    /*************GET PROFIL**********/
    class GetProfil extends AsyncTask<String, Void, Utilisateur>
    {

        @Override
        protected Utilisateur doInBackground(String... strings) {
            Utilisateur unUser = null;
            String email = strings[0];
            String url ="http://192.168.201.167/LM%202018/Alume/mon_profil.php" + "?mail_cli=" +email ;
            String resultat ="";
            try
            {
                URL uneUrl = new URL(url);
                HttpURLConnection uneConnexion = (HttpURLConnection)uneUrl.openConnection();
                uneConnexion.setRequestMethod("GET");
                uneConnexion.setConnectTimeout(15000);
                uneConnexion.setReadTimeout(10000);
                uneConnexion.setDoInput(true);
                uneConnexion.setDoOutput(true);
                uneConnexion.connect();

                InputStream is = uneConnexion.getInputStream();
                BufferedReader br = new BufferedReader(new InputStreamReader(is, "UTF-8"));
                StringBuilder sb = new StringBuilder();
                String ligne = "";
                while ((ligne = br.readLine())!=null)
                {
                    sb.append(ligne);
                }
                resultat = sb.toString();
                is.close();
                br.close();
            }

            catch (Exception exp)
            {
                Log.e("Erreur connexion : ", url);
            }
            //parsing json
            try{
                JSONArray tabJson = new JSONArray(resultat);
                JSONObject object = tabJson.getJSONObject(0);
                unUser = new Utilisateur(
                        object.getString("mail_cli"),
                        object.getString("mdp_cli"),
                        object.getString("nom_cli"),
                        object.getString("prenom_cli")

                );
            }

            catch (JSONException exp)
            {
                Log.e("impossible parsing : ", resultat);
            }
            return unUser;
        }

        @Override
        protected void onPostExecute(Utilisateur utilisateur) {
            setUnUserConnecte(utilisateur);
        }
    }
}
