package com.example.alume;

import android.content.Intent;
import android.os.AsyncTask;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ImageView;
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

public class Articles extends AppCompatActivity implements OnClickListener {

    private Button btRetour3, btPlus;
    private ArrayList <ArticlesC> mesArticles = null;
    private ListView lvMesArticles;
    private String mail_cli;

    public ArrayList<ArticlesC> getMesArticles() {
        return mesArticles;
    }

    public void setMesArticles(ArrayList<ArticlesC> mesArticles) {
        this.mesArticles = mesArticles;
        remplirLV();
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_articles);

        this.lvMesArticles = (ListView) findViewById(R.id.idLvArticles);
        this.btRetour3 = (Button) findViewById(R.id.idRetour4);

        this.mail_cli = this.getIntent().getStringExtra("mail_cli");
        this.btRetour3.setOnClickListener(this);
        Thread unT = new Thread(new Runnable() {
            @Override
            public void run() {
                final BDDMesArticle uneBDDMesArticles = new BDDMesArticle();
                uneBDDMesArticles.execute(mail_cli);

            }
        });
        unT.start();

    }
    public int avoir (String chaine)
    {
        switch (chaine)
        {
            case "fen_1.jpg" : return R.drawable.fen_1;     case "pisc_1.jpg" : return R.drawable.pisc_1;
            case "fen_10.jpg" : return R.drawable.fen_10;   case "pisc_2.jpg" : return R.drawable.pisc_2;
            case "fen_11.jpg" : return R.drawable.fen_11;   case "pisc_3.jpg" : return R.drawable.pisc_3;
            case "fen_12.jpg" : return R.drawable.fen_12;   case "pisc_4.jpg" : return R.drawable.pisc_4;
            case "fen_13.jpg" : return R.drawable.fen_13;   case "pisc_5.jpg" : return R.drawable.pisc_5;
            case "fen_14.jpg" : return R.drawable.fen_14;   case "pisc_6.jpg" : return R.drawable.pisc_6;
            case "fen_15.jpg" : return R.drawable.fen_15;   case "pisc_7.jpg" : return R.drawable.pisc_7;
            case "fen_16.jpg" : return R.drawable.fen_16;   case "pisc_8.jpg" : return R.drawable.pisc_8;
            case "fen_17.jpg" : return R.drawable.fen_17;   case "pisc_9.jpg" : return R.drawable.pisc_9;
            case "fen_18.jpg" : return R.drawable.fen_18;   case "pisc_10.jpg" : return R.drawable.pisc_10;
            case "fen_19.jpg" : return R.drawable.fen_19;   case "pisc_11.jpg" : return R.drawable.pisc_11;
            case "fen_2.jpg" : return R.drawable.fen_2;     case "pisc_12.jpg" : return R.drawable.pisc_12;
            case "fen_20.jpg" : return R.drawable.fen_20;   case "pisc_13.jpg" : return R.drawable.pisc_13;
            case "fen_3.jpg" : return R.drawable.fen_3;     case "pisc_14.jpg" : return R.drawable.pisc_14;
            case "fen_4.jpg" : return R.drawable.fen_4;     case "pisc_15.jpg" : return R.drawable.pisc_15;
            case "fen_5.jpg" : return R.drawable.fen_5;     case "pisc_16.jpg" : return R.drawable.pisc_16;
            case "fen_6.jpg" : return R.drawable.fen_6;     case "pisc_17.jpg" : return R.drawable.pisc_17;
            case "fen_7.jpg" : return R.drawable.fen_7;     case "pisc_18.jpg" : return R.drawable.pisc_18;
            case "fen_8.jpg" : return R.drawable.fen_8;     case "pisc_19.jpg" : return R.drawable.pisc_19;
            case "fen_9.jpg" : return R.drawable.fen_9;     case "pisc_20.jpg" : return R.drawable.pisc_20;

        }
        return R.drawable.fen_17;
    }
    public void remplirLV() {
        //Remplissage de la Liste view
        ArrayList<String> mesArticlesString = new ArrayList<>();
        Integer[] tab = new Integer[mesArticles.size()] ;
        String[] values = new String[mesArticles.size()] ;
        int i=0;
        String t[];
            for (ArticlesC unArticle : mesArticles) {
                //mesArticlesString.add(unArticle.getImg_art() + " " + unArticle.getNom_art() + " "
                //   + unArticle.getPrix_art());
                values[i] = unArticle.getNom_art() + "  " + unArticle.getPrix_art();
                String img = unArticle.getImg_art();
                t = img.split("/");
                tab[i] = avoir(t[2]);
                i++;
        }

        AdapterListe unAdapter= new AdapterListe(this, values, tab);
       // ArrayAdapter unAdapter = new ArrayAdapter(Articles.this, R.layout.image_layout, mesArticlesString);
        lvMesArticles.setAdapter(unAdapter);
    }

    @Override
    public void onClick(View v) {
        if (R.id.idRetour4 == v.getId())
        {
            Intent unIntent = new Intent(this, Menu.class);
            unIntent.putExtra("mail_cli", this.mail_cli);
            this.startActivity(unIntent);
        }
    }

    class BDDMesArticle extends AsyncTask<String, Void, ArrayList<ArticlesC>> {

        @Override
        protected ArrayList<ArticlesC> doInBackground(String... strings) {
            ArrayList<ArticlesC> mesArticlesBDD = new ArrayList<ArticlesC>();
            String url = "http://192.168.201.167/LM%202018/Alume/les_articles.php" + "?mail_cli=" + strings[0];

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

                    String img_art = jo.getString("img_art");
                    String nom_art = jo.getString("nom_art");
                    int prix_art = jo.getInt("prix_art");
                    ArticlesC unArticle = new ArticlesC(nom_art, img_art , prix_art);
                    mesArticlesBDD.add(unArticle);

                }
            } catch (JSONException exp) {
                Log.e("Erreur de parsing json:", resultat);
            }
            return mesArticlesBDD;
        }

        //@Override
        protected void onPostExecute(ArrayList<ArticlesC> articlesCS) {
            setMesArticles(articlesCS);
        }

    }

}