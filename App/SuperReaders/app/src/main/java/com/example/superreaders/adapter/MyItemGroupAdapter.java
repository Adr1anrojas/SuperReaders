package com.example.superreaders.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.example.superreaders.R;
import com.example.superreaders.retrofit.models.Content;
import com.example.superreaders.retrofit.models.TypeContentDetail;
import com.example.superreaders.ui.content.TypeContentAdapter;

import java.util.List;

public class MyItemGroupAdapter extends RecyclerView.Adapter<MyItemGroupAdapter.MyViewHolder> {
    private Context context;

    public MyItemGroupAdapter(Context context, List<TypeContentDetail> dataList) {
        this.context = context;
        this.dataList = dataList;
    }

    private List<TypeContentDetail> dataList;
    @NonNull
    @Override
    public MyViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.layout_group, parent, false);
        return new MyViewHolder(view);
    }

    @Override
    public void onBindViewHolder(@NonNull MyViewHolder holder, int position) {
        holder.typeContent_title.setText(dataList.get(position).getName());
        List<Content> itemContent=dataList.get(position).getContents();
        MyContentAdapter itemListAdapter = new MyContentAdapter(context,itemContent);
        holder.recyclerView_content_list.setHasFixedSize(true);
        holder.recyclerView_content_list.setLayoutManager(new LinearLayoutManager(context, LinearLayoutManager.HORIZONTAL,false));
        holder.recyclerView_content_list.setAdapter(itemListAdapter);
        holder.recyclerView_content_list.setNestedScrollingEnabled(false);
    }

    @Override
    public int getItemCount() {
        return dataList!=null ?dataList.size():0;
    }

    public class MyViewHolder extends RecyclerView.ViewHolder{
        TextView typeContent_title;
        RecyclerView recyclerView_content_list;
        public MyViewHolder(@NonNull View itemView) {
            super(itemView);
            recyclerView_content_list=itemView.findViewById(R.id.rv_content_list);
            typeContent_title= itemView.findViewById(R.id.textViewTypeContentTitle);
        }
    }
}
