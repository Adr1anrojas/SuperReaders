package com.example.superreaders.ui.content;

import androidx.annotation.RequiresApi;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModel;

import android.annotation.SuppressLint;
import android.app.ActionBar;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.text.method.ScrollingMovementMethod;
import android.util.Base64;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;

import com.example.superreaders.R;
import com.example.superreaders.SessionManagement;
import com.example.superreaders.retrofit.models.ContentDetail;
import com.example.superreaders.retrofit.models.Page;
import com.example.superreaders.retrofit.models.StudentContent;

import java.io.ByteArrayOutputStream;
import java.io.Serializable;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

public class ContentActivity extends AppCompatActivity {
    private TextView pageText;
    private ImageView imageView;
    private List<Page> pages;
    private Button buttonNext;
    private Button buttonBack;
    private int currentpage = 0;
    private String base64img;
    private ProgressBar progressBar;
    private ContentDetail contentDTO;
    private StudentContent studentContent;
    private ScrollView scrollText;
    private ContentViewModel viewModel;
    private int timeLeft=0;
    private int colorBar;
    private Observer<StudentContent> observerStudenContent;
    private final CharSequence [] options={"Claro","En otro momento"};
    private String token;
    @Override
    protected void onResume() {
        super.onResume();
        if(viewModel!=null)
            updateTimer();
    }


    @Override
    protected void onPause() {
        super.onPause();
        if(timer!=null){
            timer.cancel();
            timer.purge();
        }
        updateTimeRead();

    }
    public void updateTimeRead(){
        if(studentContent!=null) {
            studentContent.setCurrentPage(currentpage);
            studentContent.setTimeReading(studentContent.getTimeReading()+timeLeft);
            viewModel.updateTimeReading(studentContent,token);
            timeLeft=0;
        }
    }
    Timer timer;
    public void updateTimer(){
        timer = new Timer();
        TimerTask tarea = new TimerTask() {
            @Override
            public void run() {
                if(timeLeft==60){
                    updateTimeRead();
                }
                timeLeft++;
            }
        };
        timer.schedule(tarea,0,1000);
    }
    @Override
    protected void onDestroy() {
        super.onDestroy();
        if(timer!=null){
            timer.cancel();
            timer.purge();
        }
        updateTimeRead();
    }

    @RequiresApi(api = Build.VERSION_CODES.LOLLIPOP)
    @SuppressLint("WrongThread")
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        SessionManagement session = new SessionManagement(this);
        token = session.getCurrentUser().getToken();
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_content);
        Bundle data = this.getIntent().getExtras();
        imageView = findViewById(R.id.contentImg);
        pageText = findViewById(R.id.textPage);
        buttonBack = findViewById(R.id.buttonBack);
        buttonNext = findViewById(R.id.buttonNext);
        scrollText = findViewById(R.id.scrollText);
        LinearLayout ll = findViewById(R.id.contentlayout);
        progressBar = new ProgressBar(this, null, android.R.attr.progressBarStyleLarge);
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams( LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        progressBar.setLayoutParams(lp);
        progressBar.setIndeterminate(true);
        SessionManagement sessionManagement = new SessionManagement(this);
        ll.addView(progressBar);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        if (data != null) {
            colorBar = data.getInt("colorBar");
            if(getLuminance(colorBar)>210){
                colorBar = Color.rgb(117, 117, 117);
            }
            getSupportActionBar().setBackgroundDrawable(new ColorDrawable(colorBar));
            Window window = getWindow();
            window.clearFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS);
            window.addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS);
            window.setStatusBarColor(colorBar-8);
            buttonBack.setBackgroundColor(colorBar);
            buttonNext.setBackgroundColor(colorBar);
            int idContent = data.getInt("idContent");
            String title = data.getString("Title");
            setTitle(title);
            viewModel = new ContentViewModel();
            final Observer<String> observer = message -> {
                Toast.makeText(this, message, Toast.LENGTH_LONG).show();
            };
            observerStudenContent = studentContent -> {
                this.studentContent=studentContent;
                if(!studentContent.isIsFinish()) {
                    imageView.setVisibility(View.VISIBLE);
                    pageText.setVisibility(View.VISIBLE);
                    buttonNext.setVisibility(View.VISIBLE);
                    currentpage = studentContent.getCurrentPage() != null ? studentContent.getCurrentPage() : 0;
                    pages = contentDTO.getPages();
                    base64img = pages.get(currentpage).getImg();
                    imageView.setImageBitmap(getImage(base64img));
                    pageText.setText(pages.get(currentpage).getText().replace("\\n","\n"));
                    pageText.setMovementMethod(new ScrollingMovementMethod());
                    pageText.scrollTo(0, 0);
                    scrollText.scrollTo(0,0);
                    if (currentpage > 0) {
                        buttonBack.setVisibility(View.VISIBLE);
                    }
                    if (currentpage + 1 == pages.size()) {
                        buttonNext.setText("Terminar");
                        buttonNext.setOnClickListener(e -> finishButtonAction());
                        buttonBack.setOnClickListener(e -> backButtonAction());
                        return;
                    }
                    buttonNext.setOnClickListener(e -> nextButtonAction());
                    buttonBack.setOnClickListener(e -> backButtonAction());
                    viewModel.getContentStudent().removeObserver(observerStudenContent);
                    updateTimer();
                }else {
                    this.studentContent=null;
                    final AlertDialog.Builder alertOptions = new AlertDialog.Builder(this);
                    alertOptions.setTitle("¡Felicidades contenido leido! \n Te gustaria leerlo de nuevo?");
                    alertOptions.setItems(options, new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int i) {
                            if(options[i].equals("Claro")){
                                StudentContent studentContent = new StudentContent();
                                studentContent.setIdStudent(sessionManagement.getCurrentUser().getStudentId());
                                studentContent.setIdContent(contentDTO.getContent().getId());
                                studentContent.setReadAgain(true);
                                viewModel.saveContentStudent(studentContent,token);
                            } else{
                                finish();
                            }
                        }
                    });
                    alertOptions.show();
                }
            };
            final Observer<ContentDetail> observerContent = contentDTO -> {
                this.contentDTO=contentDTO;
                progressBar.setVisibility(View.INVISIBLE);
                StudentContent studentContent = new StudentContent();
                studentContent.setIdStudent(sessionManagement.getCurrentUser().getStudentId());
                studentContent.setIdContent(contentDTO.getContent().getId());
                studentContent.setReadAgain(false);
                viewModel.saveContentStudent(studentContent,token);
                viewModel.getContentStudent().observe(this,observerStudenContent);
            };
            viewModel.getContentById(idContent,token).observe(this, observerContent);
            viewModel.getMessage().observe(this, observer);
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
    public void nextButtonAction(){
        if (currentpage < pages.size())
            currentpage++;
        if (currentpage > 0)
            buttonBack.setVisibility(View.VISIBLE);
        if (currentpage < pages.size()) {
            base64img = pages.get(currentpage).getImg();
            imageView.setImageBitmap(getImage(base64img));
            pageText.setText(pages.get(currentpage).getText().replace("\\n","\n"));
            pageText.scrollTo(0,0);
            scrollText.scrollTo(0,0);
        }
        if (currentpage == pages.size() - 1) {
            buttonNext.setText("Terminar");
            buttonNext.setOnClickListener(e -> finishButtonAction());
        }

    }
    public void finishButtonAction(){
        if(contentDTO.getQuestions()!=null&&!(contentDTO.getQuestions().isEmpty())) {
            Intent intent = new Intent(this, AnswerActivity.class);
            Bundle bundle = new Bundle();
            viewModel.getContentStudent().removeObserver(observerStudenContent);
            viewModel.updateFinishContent(studentContent,token);
            bundle.putSerializable("Questions", (Serializable) contentDTO.getQuestions());
            bundle.putString("Title",contentDTO.getContent().getTitle());
            bundle.putInt("colorBar",colorBar);
            SessionManagement sessionManagement = new SessionManagement(this);
            bundle.putInt("idStudent",sessionManagement.getCurrentUser().getStudentId());
            intent.putExtras(bundle);
            startActivity(intent);
            finish();
        }else{
            finish();
        }
    }
    public void backButtonAction(){
        if (currentpage > 0) {
            if (currentpage == pages.size()-1) {
                buttonNext.setText("Siguiente");
                buttonNext.setOnClickListener(e->nextButtonAction());
            }
            currentpage--;
            base64img = pages.get(currentpage).getImg();
            imageView.setImageBitmap(getImage(base64img));
            pageText.setText(pages.get(currentpage).getText().replace("\\n","\n"));
            pageText.scrollTo(0,0);
            scrollText.scrollTo(0,0);
            if (currentpage == 0) {
                buttonBack.setVisibility(View.INVISIBLE);
            }
        }

    }
    public boolean onOptionsItemSelected(MenuItem item){
        finish();
        return true;
    }
    public static int getLuminance(int argb) {
        int lum= (   77  * ((argb>>16)&255)
                + 150 * ((argb>>8)&255)
                + 29  * ((argb)&255))>>8;
        return lum;
    }
}
