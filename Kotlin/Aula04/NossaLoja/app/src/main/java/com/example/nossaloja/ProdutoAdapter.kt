package com.example.nossaloja

import android.app.Activity
import com.example.nossaloja.ui.home.ProdutoModel
import android.view.View
import android.view.ViewGroup
import android.widget.*

class ProdutoAdapter(private val context: Activity, private val produtos: ArrayList<ProdutoModel>):
        ArrayAdapter<ProdutoModel>(context, R.layout.produto_adapter ) {

    override fun getView(position: Int, convertView: View?, parent: ViewGroup): View {
        val inflater = context.layoutInflater
        val rowView = inflater.inflate(R.layout.produto_adapter, null, true)

//        val nomeProduto = rowView.findViewById(R.id.nomeProduto) as TextView
//
//        nomeProduto.text = produtos[position].nome

        return rowView
    }

}