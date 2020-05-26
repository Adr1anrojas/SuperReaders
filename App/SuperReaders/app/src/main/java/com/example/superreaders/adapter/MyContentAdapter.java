package com.example.superreaders.adapter;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.util.Base64;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.cardview.widget.CardView;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.RecyclerView;

import com.example.superreaders.R;
import com.example.superreaders.retrofit.models.Content;
import com.example.superreaders.retrofit.models.ContentDetail;
import com.example.superreaders.ui.content.ContentActivity;
import com.example.superreaders.ui.content.ContentViewModel;
import com.example.superreaders.ui.home.HomeActivity;

import java.io.ByteArrayOutputStream;
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
            Bitmap img =getImage(content.getImg());
            holder.contentImg.setImageBitmap(img);
            holder.linearLayout.setBackgroundColor(getDominantColor(img));
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
        LinearLayout linearLayout;
        public MyViewHolder(@NonNull View itemView) {
            super(itemView);
            contentTitle = itemView.findViewById(R.id.textViewContent);
            contentImg = itemView.findViewById(R.id.imageViewContent);
            linearLayout = itemView.findViewById(R.id.layoutCardContent);
            itemView.setOnClickListener(e->
                    {

                        AppCompatActivity activity = (AppCompatActivity) itemView.getContext();
                        Intent intent = new Intent(itemView.getContext(), ContentActivity.class);
                        Bundle bundle = new Bundle();
                        bundle.putInt("idContent",content.getId());
                        bundle.putString("Title",content.getTitle());
                        bundle.putInt("colorBar",getDominantColor(getImage(content.getImg())));
                        intent.putExtras(bundle);
                        activity.startActivity(intent);
                    }
            );
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
    public static int getDominantColor(Bitmap bitmap) {
        if (null == bitmap) return Color.TRANSPARENT;

        int redBucket    = 0;
        int greenBucket  = 0;
        int blueBucket   = 0;
        int alphaBucket  = 0;

        boolean hasAlpha = bitmap.hasAlpha();
        int pixelCount   = bitmap.getWidth() * bitmap.getHeight();
        int[] pixels     = new int[pixelCount];

        bitmap.getPixels(
                pixels,
                0,
                bitmap.getWidth(),
                0,
                0,
                bitmap.getWidth(),
                bitmap.getHeight()
        );

        for (int y = 0, h = bitmap.getHeight(); y < h; y++){
            for (int x = 0, w = bitmap.getWidth(); x < w; x++){
                int color   =  pixels[x + y * w];            // x + y * width
                redBucket   += (color >> 16) & 0xFF;         // Color.red
                greenBucket += (color >> 8) & 0xFF;          // Color.greed
                blueBucket  += (color & 0xFF);               // Color.blue
                if (hasAlpha) alphaBucket += (color >>> 24); // Color.alpha
            }
        }

        return Color.argb(
                (hasAlpha) ? (alphaBucket / pixelCount) : 255,
                redBucket / pixelCount,
                greenBucket / pixelCount,
                blueBucket / pixelCount
        );
    }
}
