package com.example.nossaloja

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import androidx.annotation .NonNull
import androidx.recyclerview.widget.RecyclerView
import com.example.nossaloja.ui.home.ProdutoModel


internal class ProdutosAdapter(  var itemsList: ArrayList<ProdutoModel>) :
        RecyclerView.Adapter<ProdutosAdapter.MyViewHolder>() {
        internal inner class MyViewHolder(view: View) : RecyclerView.ViewHolder(view) {
            var itemNomeProdutoTextView: TextView = view.findViewById(R.id.nomeProduto)
            var itemAltProdutoTextView: TextView = view.findViewById(R.id.altProdtuo)
            var itemPrecoProdutoTextView: TextView = view.findViewById(R.id.precoProduto)

            var itemImageProduto: ImageView = view.findViewById(R.id.imgProduto)
        }

        @NonNull
        override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): MyViewHolder {
            val itemView = LayoutInflater.from(parent.context)
                .inflate(R.layout.activity_item_produto, parent, false)
            return MyViewHolder(itemView)
        }

        override fun onBindViewHolder(holder: MyViewHolder, position: Int) {
            val item = itemsList[position]
            holder.itemNomeProdutoTextView.text = item.nome;

            holder.itemAltProdutoTextView.text = item.alt;

            holder.itemPrecoProdutoTextView.text = item.preco.toString();

            holder.itemImageProduto.setImageResource(item.imageURL)
        }

        override fun getItemCount(): Int {
            return itemsList.size
        }


    fun updateReceiptsList(newlist: ArrayList<ProdutoModel>) {
        itemsList.clear();
        for (item in newlist) {
            itemsList.add(item)
        }


        notifyDataSetChanged()
    }
}
