package com.example.alume;

import android.content.Intent;
import android.os.AsyncTask;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import android.content.Intent;

public class MainActivity extends AppCompatActivity implements View.OnClickListener {

    private Button btSeConnecter, btAnnuler, btInscription;
    private EditText txtEmail, txtMdp;
    private Utilisateur unUser = null;


    public Utilisateur getUnUser() {
        return unUser;
    }

    public void setUnUser(Utilisateur unUser) {
        this.unUser = unUser;
        if (this.unUser == null) {
            Toast.makeText(this, "Veuillez vérifier vos identifiants", Toast.LENGTH_LONG).show();
        } else {
            Toast.makeText(this, "Bienvenue" + unUser.getNom_cli() + " " + unUser.getPrenom_cli(),
                    Toast.LENGTH_LONG).show();
            Intent unIntent = new Intent(this, Menu.class);
            unIntent.putExtra("mail_cli", this.unUser.getMail_cli());
            Log.e("mail client : MA : ",  this.unUser.getMail_cli());
            this.startActivity(unIntent);

        }
    }


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        this.btAnnuler = (Button) findViewById(R.id.idAnnuler);
        this.btSeConnecter = (Button) findViewById(R.id.idSeConnecter);
        this.txtEmail = (EditText) findViewById(R.id.idEmail);
        this.txtMdp = (EditText) findViewById(R.id.idMdp);
        this.btInscription = (Button) findViewById(R.id.idInscription);

        this.btSeConnecter.setOnClickListener(this);
        this.btAnnuler.setOnClickListener(this);
        this.btInscription.setOnClickListener(this);



    }

    @Override
    public void onClick(View v) {

        Intent unIntent = null;

        switch (v.getId()) {


            case R.id.idAnnuler:
            this.btAnnuler.setText("");
            this.btSeConnecter.setText("");

            case R.id.idInscription : unIntent = new Intent(this, Inscription.class);
                this.startActivity(unIntent);
                break;

            case R.id.idSeConnecter: {
                if (this.txtEmail.getText().toString().equals("")) {
                    Toast.makeText(this, "Veuillez saisir votre email", Toast.LENGTH_SHORT).show();
                } else if (this.txtEmail.getText().toString().equals("")) {
                    Toast.makeText(this, "Veuillez saisir votre Mot de passe", Toast.LENGTH_SHORT).show();
                } else {
                    //Verif BDD
                    final Utilisateur unUserC = new Utilisateur(this.txtEmail.getText().toString(),
                            this.txtMdp.getText().toString());
                    //creation d'un processus indépent pour la connexion http
                    final MainActivity ma = this;//
                    Thread unT = new Thread(new Runnable() {


                        @Override
                        public void run() {
                            //execution de la tache asynchrone
                            final Connexion uneConnexion = new Connexion();
                            runOnUiThread(new Runnable() {
                                @Override
                                public void run() {
                                    uneConnexion.execute(unUserC);


                                }
                            });

                        }
                    });

                    //lancement du processus
                    unT.start();


                }
            }
            break;
        }

    }

    /************************* la tache asynchrone**********/
    class Connexion extends AsyncTask<Utilisateur, Void, Utilisateur> {
        @Override
        protected Utilisateur doInBackground(Utilisateur... utilisateurs) {
            Utilisateur userBdd = null;
            Utilisateur userConnect = utilisateurs[0]; // user avec login et mdp
            String parametres = "?mail_cli=" + userConnect.getMail_cli() + "&mdp_cli=" + userConnect.getMdp_cli();
            String url = "http:/192.168.0.45/LM%202018/Alume/verif_connexione.php" + parametres;
            String resultat = "";
            try {
                URL uneUrl = new URL(url); //creation d'une URL en JAVA.net
                //ouverture d'une connexion HTTP via url choisie
                HttpURLConnection maConnexion = (HttpURLConnection) uneUrl.openConnection();
                //on fixe la methode d'envoi des données
                maConnexion.setRequestMethod("GET");
                //on fixe le temps d'attente
                maConnexion.setReadTimeout(15000);
                maConnexion.setConnectTimeout(20000);
                //ouverture des droits de lecture/ ecriture des données
                maConnexion.setDoInput(true);
                maConnexion.setDoOutput(true);
                //etablissement de la connexion
                maConnexion.connect();
                //envoi desd données email et mdp via une ecriture dans le fichier d'envoi
                OutputStream os = maConnexion.getOutputStream();

                //ecriture de la chaine parametres dans un buffer d'ecriture
                BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(os, "UTF-8"));
                bw.write(parametres);
                bw.flush();//vider le buffer
                bw.close();//fermer buffer
                os.close();//fermer le fichier
                Log.e("parametres", parametres);

                //lecture des données de la page php apres execution de la requete sgbd
                InputStream is = maConnexion.getInputStream();
                BufferedReader br = new BufferedReader(new InputStreamReader(is, "UTF-8"));
                StringBuilder sb = new StringBuilder();// chaine dynamique
                String ligne = "";
                while ((ligne = br.readLine()) != null) // tant que qu'il y a une chaine a lire dans la page php
                {
                    sb.append(ligne);//ajoute la ligne dans la chaine dynamique
                }
                resultat = sb.toString();// rendre la liste des chaines en seule chaine
                br.close();
                is.close();
                Log.e("Ligne lue", resultat);


            } catch (IOException exp) {

                exp.printStackTrace();
                Log.e("Erreur de connexion a :", url);
            }
            //parsing Json de la ligne...
            try {
                if (!resultat.equals("")) {
                    JSONArray tabJson = new JSONArray(resultat);
                    JSONObject objetJson = tabJson.getJSONObject(0);// on prend le premier element
                    int nb = objetJson.getInt("nb");
                    if (nb != 0) {
                        String nom = objetJson.getString("nom_cli");
                        String prenom = objetJson.getString("prenom_cli");
                        userBdd = new Utilisateur(userConnect.getMail_cli(), userConnect.getMdp_cli(), nom, prenom);
                    }
                }
            } catch (JSONException exp) {
                Log.e("Erreur", "Impossible de parser le json : " + resultat);

            }

            return userBdd;
        }

        @Override
        protected void onPostExecute(Utilisateur utilisateur) {

            setUnUser(utilisateur); // on stock l'utilisateur résultat dans le user private

        }


    }

}



