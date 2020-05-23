package com.example.superreaders.ui.content;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.text.method.ScrollingMovementMethod;
import android.util.Base64;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;

import com.example.superreaders.R;
import com.example.superreaders.retrofit.models.ContentDetail;
import com.example.superreaders.retrofit.models.Page;

import java.util.List;

public class ContentActivity extends AppCompatActivity {
    private TextView pageText;
    private ImageView imageView;
    private List<Page> pages;
    private Button buttonNext;
    private Button buttonBack;
    private int currentpage=0;
    private String img;
    private byte[] decodedString;
    private Bitmap decodedByte;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_content);
        Bundle data = this.getIntent().getExtras();
        imageView = findViewById(R.id.contentImg);
        pageText = findViewById(R.id.textPage);
        buttonBack = findViewById(R.id.buttonBack);
        buttonNext = findViewById(R.id.buttonNext);
        if(data !=null){
            ContentDetail  contentDTO = (ContentDetail) data.getSerializable("content");
            setTitle(contentDTO.getContent().getTitle());
            pages=contentDTO.getPages();
            img= pages.get(currentpage).getImg();
            decodedString = Base64.decode((img!=null)?img:"", Base64.DEFAULT);
            decodedByte = BitmapFactory.decodeByteArray(decodedString, 0, decodedString.length);
            imageView.setImageBitmap(decodedByte);
            pageText.setText(pages.get(currentpage).getText());
            pageText.setMovementMethod(new ScrollingMovementMethod());

            if(currentpage+1==pages.size()){
                buttonNext.setText("Terminar");
                buttonNext.setOnClickListener(e->{
                    Intent intent = new Intent(this, TypeContentActivity.class);
                    startActivity(intent);
                });
                return;
            }
            buttonNext.setOnClickListener(e->{
                if(currentpage<pages.size())
                    currentpage++;
                if(currentpage>0)
                    buttonBack.setVisibility(View.VISIBLE);
                if(currentpage<pages.size()) {
                    img= pages.get(currentpage).getImg();
                    decodedString = Base64.decode((img!=null)?img:"", Base64.DEFAULT);
                    decodedByte = BitmapFactory.decodeByteArray(decodedString, 0, decodedString.length);
                    imageView.setImageBitmap(decodedByte);
                    pageText.setText(pages.get(currentpage).getText());
                }
                if(currentpage==pages.size()-1){
                    buttonNext.setText("Terminar");
                    buttonNext.setOnClickListener(x->{
                        Intent intent = new Intent(this, AnswerActivity.class);
                        startActivity(intent);
                    });
                }

            }
            );
            buttonBack.setOnClickListener( v->{
                if(currentpage>0) {
                    if(currentpage==pages.size())
                        buttonNext.setText("Siguiente");
                    currentpage--;
                    img= pages.get(currentpage).getImg();
                    decodedString = Base64.decode((img!=null)?img:" ", Base64.DEFAULT);
                    decodedByte = BitmapFactory.decodeByteArray(decodedString, 0, decodedString.length);
                    imageView.setImageBitmap(decodedByte);
                    pageText.setText(pages.get(currentpage).getText());
                    if (currentpage == 0) {
                        buttonBack.setVisibility(View.INVISIBLE);
                    }
                }
            }
            );
        }

    }
}
