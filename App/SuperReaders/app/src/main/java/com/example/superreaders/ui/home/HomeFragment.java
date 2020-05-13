package com.example.superreaders.ui.home;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProviders;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.example.superreaders.R;
import com.example.superreaders.adapter.MyItemGroupAdapter;
import com.example.superreaders.retrofit.models.Content;
import com.example.superreaders.retrofit.models.TypeContentDetail;
import com.example.superreaders.ui.content.ContentViewModel;

import java.util.List;

public class HomeFragment extends Fragment {

    private ContentViewModel contentViewModel;
    private RecyclerView recyclerView;
    private MyItemGroupAdapter typeContentAdapter;
    public View onCreateView(@NonNull LayoutInflater inflater,
                             ViewGroup container, Bundle savedInstanceState) {
        View root = inflater.inflate(R.layout.fragment_home, container, false);
        return root;
    }

    @Override
    public void onViewCreated(@NonNull View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        recyclerView=view.findViewById(R.id.rv_content_type);
        ContentViewModel viewModel = ViewModelProviders.of(this).get(ContentViewModel.class);
        final Observer<List<TypeContentDetail>> observerTypeContent= type ->{
            if(type!=null){
                typeContentAdapter = new MyItemGroupAdapter(getContext(),type);
                recyclerView.setAdapter(typeContentAdapter);
                recyclerView.setHasFixedSize(true);
                recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
            }
        };
        viewModel.getContentByType();
        viewModel.getAllContentByType().observe(this.getActivity(),observerTypeContent);
    }
}
