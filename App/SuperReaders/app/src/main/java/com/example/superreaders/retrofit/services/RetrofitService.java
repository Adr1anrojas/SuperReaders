package com.example.superreaders.retrofit.services;


import com.example.superreaders.retrofit.Environment;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import java.util.concurrent.TimeUnit;

import okhttp3.OkHttpClient;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

public class RetrofitService {
    private static OkHttpClient okHttpClient = new OkHttpClient().newBuilder()
            .retryOnConnectionFailure(true)
            .connectTimeout(70, TimeUnit.SECONDS)
            .readTimeout(120, TimeUnit.SECONDS)
            .writeTimeout(120, TimeUnit.SECONDS)
            .build();
    private static Gson gson = new GsonBuilder()
            .setDateFormat("yyyy-MM-dd'T'HH:mm:ss")
            .create();

    private static Retrofit retrofit = new Retrofit.Builder()
            .client(okHttpClient)
            .baseUrl(Environment.API)
            .addConverterFactory(GsonConverterFactory.create(gson))
            .build();


    public static <S> S createService(Class<S> serviceClass) {
        return retrofit.create(serviceClass);
    }

}