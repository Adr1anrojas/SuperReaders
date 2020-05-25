package com.example.superreaders.adapter;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Base64;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.recyclerview.widget.RecyclerView;

import com.example.superreaders.R;
import com.example.superreaders.retrofit.models.TypeContent;

import java.io.ByteArrayOutputStream;
import java.util.ArrayList;


public class TypeContentAdapter extends RecyclerView.Adapter<TypeContentAdapter.ViewHolder> {

    private ArrayList<TypeContent> dataset;
    private Context context;
    public ArrayList<TypeContent> typeContentSelected;

    public TypeContentAdapter(Context context) {
        this.context = context;
        dataset = new ArrayList<>();
        typeContentSelected = new ArrayList<>();
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
        holder.pictureImageView.setImageBitmap(getImage(typeContent.getImg()));
        holder.checkBox.setOnClickListener( v->{
                if (holder.checkBox.isChecked()){
                    typeContentSelected.add(typeContent);
                }
                else if(!holder.checkBox.isChecked()){
                    typeContentSelected.remove(typeContent);
                }
            }
        );
    }

    @Override
    public int getItemCount() {
        return dataset.size();
    }
    public void addListTypeContent(ArrayList<TypeContent> listTypeContent) {
        dataset.removeAll(dataset);
        dataset.addAll(listTypeContent);
        notifyDataSetChanged();
    }


    public class ViewHolder extends RecyclerView.ViewHolder {

        private ImageView pictureImageView;
        private TextView nameTextView;
        private CheckBox checkBox;

        public ViewHolder(View itemView) {
            super(itemView);

            pictureImageView = (ImageView) itemView.findViewById(R.id.type_content_poster);
            nameTextView = (TextView) itemView.findViewById(R.id.nameTextView);
            checkBox = (CheckBox) itemView.findViewById(R.id.checkbox);
        }
    }
    private  final Bitmap DEFAULT_BITMAP= Bitmap.createBitmap(  1,1,Bitmap.Config.ARGB_8888);
    public Bitmap getImage(String base64img) {
        byte[] decodedString = Base64.decode((base64img != null) ? base64img : "", Base64.DEFAULT);
        Bitmap bitmap = BitmapFactory.decodeByteArray(decodedString, 0, decodedString.length);
        ByteArrayOutputStream bytes = new ByteArrayOutputStream();
        if(bitmap!=null) {
            bitmap.compress(Bitmap.CompressFormat.JPEG, 60, bytes);
            byte[] byteArray = bytes.toByteArray();
            return BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length);
        }
        return DEFAULT_BITMAP;

    }
}