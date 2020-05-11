package com.example.superreaders.views;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Base64;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.recyclerview.widget.RecyclerView;

import com.example.superreaders.R;
import com.example.superreaders.retrofit.models.TypeContent;

import java.util.ArrayList;


public class TypeContentAdapter extends RecyclerView.Adapter<TypeContentAdapter.ViewHolder> {

    private ArrayList<TypeContent> dataset;
    private Context context;

    public TypeContentAdapter(Context context) {
        this.context = context;
        dataset = new ArrayList<>();
    }

    @Override
    public ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_type_content, parent, false);
        return new ViewHolder(view);
    }

    @Override
    public void onBindViewHolder(ViewHolder holder, int position) {
        TypeContent typeContent = dataset.get(position);
        holder.nameTextView.setText(typeContent.getName());
        byte[] decodedString = Base64.decode(typeContent.getImg(), Base64.DEFAULT);
        Bitmap decodedByte = BitmapFactory.decodeByteArray(decodedString, 0, decodedString.length);
        holder.pictureImageView.setImageBitmap(decodedByte);
    }

    @Override
    public int getItemCount() {
        return dataset.size();
    }
    public void addListTypeContent(ArrayList<TypeContent> listTypeContent) {
        dataset.addAll(listTypeContent);
        notifyDataSetChanged();
    }


    public class ViewHolder extends RecyclerView.ViewHolder {

        private ImageView pictureImageView;
        private TextView nameTextView;

        public ViewHolder(View itemView) {
            super(itemView);

            pictureImageView = (ImageView) itemView.findViewById(R.id.type_content_poster);
            nameTextView = (TextView) itemView.findViewById(R.id.nameTextView);
        }
    }
}