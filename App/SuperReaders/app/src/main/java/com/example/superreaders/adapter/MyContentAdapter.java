package com.example.superreaders.adapter;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Base64;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.example.superreaders.R;
import com.example.superreaders.retrofit.models.Content;

import java.util.List;

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
    }

    @Override
    public int getItemCount() {
        return (dataContent!=null?dataContent.size():0);
    }

    public class MyViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
        TextView contentTitle;
        ImageView contentImg;
        public MyViewHolder(@NonNull View itemView) {
            super(itemView);
            contentTitle = itemView.findViewById(R.id.textViewContent);
            contentImg = itemView.findViewById(R.id.imageViewContent);
            itemView.setOnClickListener(this);

        }
        @Override
        public void onClick(View v) {
            System.out.println("Olaaa");
        }
    }
}
