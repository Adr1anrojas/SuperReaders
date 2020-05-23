package com.example.superreaders.ui.content;

import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RadioGroup;
import android.widget.TextView;
import android.widget.Toast;

import com.example.superreaders.R;
import com.example.superreaders.adapter.AnswersAdapter;
import com.example.superreaders.retrofit.models.Answer;
import com.example.superreaders.retrofit.models.Question;

import java.util.ArrayList;
import java.util.List;
import java.util.Queue;
import java.util.Stack;


public class AnswerActivity extends AppCompatActivity {

    private List<Question> questions;
    private Stack<Answer> answers;
    private int currentQuestion=0;
    RecyclerView recyclerView;
    TextView textViewQuestion;
    public static Answer selected;
    public static  int posAnswer;
    public static Stack<Integer> posSelected;
    private Button buttonNext,buttonBack;
    private AnswersAdapter adapter;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_answer);
        Bundle data = this.getIntent().getExtras();
        if(data!=null) {
            answers = new Stack<Answer>();
            posSelected = new Stack<Integer>();
            textViewQuestion = findViewById(R.id.textViewQuestion);
            questions = (List<Question>) data.getSerializable("Questions");
            setTitle(data.getString("Title"));
            recyclerView = findViewById(R.id.recyclerAnswer);
            recyclerView.setLayoutManager(new LinearLayoutManager(this,LinearLayoutManager.VERTICAL,false));
            changeQuestion(currentQuestion);
            buttonNext = findViewById(R.id.buttonNext);
            buttonBack = findViewById(R.id.buttonBack);
            buttonNext.setOnClickListener(e->buttonNextAction());
            buttonBack.setOnClickListener(e->buttonBackAction());
        }


    }

    private void buttonBackAction() {
        if(currentQuestion>0){
            currentQuestion--;
            changeQuestion(currentQuestion);
            selected=answers.pop();
            if (currentQuestion==0){
                buttonBack.setVisibility(View.INVISIBLE);
            }
            else  if(currentQuestion<questions.size()-1){
                buttonNext.setText("Siguiente");
                buttonNext.setOnClickListener(e->buttonNextAction());
            }
        }
    }

    private void buttonNextAction() {
        if(currentQuestion<questions.size()-1){
            if(selected!=null) {
                currentQuestion++;
                answers.add(selected);
                posSelected.add(posAnswer);
                changeQuestion(currentQuestion);
                if (currentQuestion > 0) {
                    buttonBack.setVisibility(View.VISIBLE);
                }
                if (currentQuestion == questions.size() - 1) {
                    buttonNext.setText("Terminar");
                    buttonNext.setOnClickListener(e -> finish());
                }
            }
            else{
                Toast.makeText(this,"Porfavor selecione una respuesta",Toast.LENGTH_SHORT).show();
            }
        }
    }

    public void changeQuestion(int pos){
        textViewQuestion.setText(questions.get(pos).getText());
        adapter= new AnswersAdapter(this,questions.get(pos).getAnswers());
        if(posSelected.size()>pos){
            adapter.mSelectedItem=posSelected.pop();
        }
        recyclerView.setAdapter(adapter);
        selected=null;
    }
}
