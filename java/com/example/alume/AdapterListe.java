package com.example.alume;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;

public class AdapterListe extends ArrayAdapter<String> {

        private Integer[] tab_images_pour_la_liste;

        @Override
        public View getView(int position, View convertView, ViewGroup parent) {
            LayoutInflater inflater = (LayoutInflater)
                    getContext().getSystemService(Context.LAYOUT_INFLATER_SERVICE);

            View rowView = inflater.inflate(R.layout.image_layout, parent, false);

            TextView textView = (TextView) rowView.findViewById(R.id.label);
            ImageView imageView = (ImageView) rowView.findViewById(R.id.icon);

            textView.setText(getItem(position));

            if(convertView == null )
                imageView.setImageResource(tab_images_pour_la_liste[position]);
            else
                rowView = (View)convertView;

            return rowView;
        }

        public AdapterListe(Context context, String[] values, Integer[] un_tab_images_pour_la_liste) {
            super(context, R.layout.image_layout, values);
            this.tab_images_pour_la_liste = un_tab_images_pour_la_liste;
        }

}
