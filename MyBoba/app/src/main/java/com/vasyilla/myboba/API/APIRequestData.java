package com.vasyilla.myboba.API;

import com.vasyilla.myboba.Model.ResponseModel;

import retrofit2.Call;
import retrofit2.http.GET;

public interface APIRequestData {

    @GET("retrieve.php")
    Call<ResponseModel> ardRetrieveData();

}