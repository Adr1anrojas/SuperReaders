package com.example.superreaders.adapter;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.util.Base64;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.RecyclerView;

import com.example.superreaders.R;
import com.example.superreaders.retrofit.models.Content;
import com.example.superreaders.retrofit.models.ContentDetail;
import com.example.superreaders.ui.content.ContentActivity;
import com.example.superreaders.ui.content.ContentViewModel;
import com.example.superreaders.ui.home.HomeActivity;

import java.util.List;
import java.util.Observable;

public class MyContentAdapter extends RecyclerView.Adapter<MyContentAdapter.MyViewHolder> {
    private Context context;
    private List<Content> dataContent;

    public MyContentAdapter(Context context, List<Content> dataContent) {
        this.context = context;
        this.dataContent = dataContent;
    }

    @NonNull
    @Override
    public MyViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.layout_item_content, parent, false);
        return new MyViewHolder(view);
    }

    @Override
    public void onBindViewHolder(@NonNull MyViewHolder holder, int position) {
        Content content = dataContent.get(position);
        holder.contentTitle.setText(content.getTitle());
        if (content.getImg()!=null) {
            byte[] decodedString = Base64.decode(content.getImg(), Base64.DEFAULT);
            Bitmap decodedByte = BitmapFactory.decodeByteArray(decodedString, 0, decodedString.length);
            holder.contentImg.setImageBitmap(decodedByte);
        }
        holder.content=content;
    }

    @Override
    public int getItemCount() {
        return (dataContent!=null?dataContent.size():0);
    }

    public class MyViewHolder extends RecyclerView.ViewHolder{
        TextView contentTitle;
        ImageView contentImg;
        Content content;
        public MyViewHolder(@NonNull View itemView) {
            super(itemView);
            contentTitle = itemView.findViewById(R.id.textViewContent);
            contentImg = itemView.findViewById(R.id.imageViewContent);
            itemView.setOnClickListener(e->
                    {

                        AppCompatActivity activity = (AppCompatActivity) itemView.getContext();
                        Intent intent = new Intent(itemView.getContext(), ContentActivity.class);
                        Bundle bundle = new Bundle();
                        bundle.putInt("idContent",content.getId());
                        bundle.putString("Title",content.getTitle());
                        intent.putExtras(bundle);
                        activity.startActivity(intent);
                    }
            );
        }
    }

}
