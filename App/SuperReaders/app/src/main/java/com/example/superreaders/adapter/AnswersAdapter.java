package com.example.superreaders.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RadioButton;

import androidx.recyclerview.widget.RecyclerView;

import com.example.superreaders.R;
import com.example.superreaders.retrofit.models.Answer;
import com.example.superreaders.ui.content.AnswerActivity;

import java.util.List;

public class AnswersAdapter extends RecyclerView.Adapter<AnswersAdapter.ViewHolder> {
    public int mSelectedItem = -1;
    public List<Answer> mItems;
    private Context mContext;

    public AnswersAdapter(Context context, List<Answer> items) {
        mContext = context;
        mItems = items;
    }

    @Override
    public void onBindViewHolder(AnswersAdapter.ViewHolder viewHolder, final int i) {
        viewHolder.mRadio.setChecked(i == mSelectedItem);
        viewHolder.mRadio.setText(mItems.get(i).getText());
        viewHolder.answer=mItems.get(i);

    }

    @Override
    public int getItemCount() {
        return mItems.size();
    }

    @Override
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        LayoutInflater inflater = LayoutInflater.from(mContext);
        final View view = inflater.inflate(R.layout.item_answers, viewGroup, false);
        return new ViewHolder(view);
    }

    class ViewHolder extends RecyclerView.ViewHolder {

        public RadioButton mRadio;
        public Answer answer;
        public ViewHolder(final View inflate) {
            super(inflate);
            mRadio = inflate.findViewById(R.id.radioAnswer);
            View.OnClickListener clickListener = v -> {
                mSelectedItem = getAdapterPosition();
                AnswerActivity.selected=answer;
                AnswerActivity.posAnswer=mSelectedItem;
                notifyDataSetChanged();
            };
            itemView.setOnClickListener(clickListener);
            mRadio.setOnClickListener(clickListener);
        }
    }
}