package com.vasyilla.myboba.Adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.vasyilla.myboba.Model.DataModel;
import com.vasyilla.myboba.R;

import java.util.List;

public class
AdapterData extends RecyclerView.Adapter<AdapterData.HolderData>{
    private Context ctx;
    private List<DataModel> listData;

    public AdapterData(Context ctx, List<DataModel> listData) {
        this.ctx = ctx;
        this.listData = listData;
    }

    @NonNull
    @Override
    public HolderData onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View layout = LayoutInflater.from ( parent.getContext () ).inflate ( R.layout.card_item,parent,false );
        HolderData holder = new HolderData ( layout );
        return  holder;
    }

    @Override
    public void onBindViewHolder(@NonNull HolderData holder, int position) {
        DataModel dm = listData.get(position);

        holder.txtId.setText(String.valueOf( dm.getId ()) );
        holder.txtToko.setText ( dm.getToko () );
        holder.txtAlamat.setText ( dm.getAlamat () );
        holder.txtTelepon.setText ( dm.getTelepon () );

    }

    @Override
    public int getItemCount() {
        return listData.size ();
    }

    public  class HolderData extends RecyclerView.ViewHolder {

        TextView txtId, txtToko, txtAlamat, txtTelepon;

        public HolderData(@NonNull View itemView) {
            super ( itemView );

            txtId = itemView.findViewById ( R.id.txt_id );
            txtToko = itemView.findViewById ( R.id.txt_toko);
            txtAlamat = itemView.findViewById ( R.id.txt_alamat);
            txtTelepon = itemView.findViewById ( R.id.txt_telepon);
        }
    }
}