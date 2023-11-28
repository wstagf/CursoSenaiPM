package com.example.nossaloja

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.example.nossaloja.ui.home.ProdutoModel
import okhttp3.OkHttpClient
import okhttp3.Request
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ArrayAdapter
import androidx.fragment.app.Fragment
import androidx.lifecycle.ViewModelProvider
import com.google.android.material.snackbar.Snackbar
import okhttp3.*
import okhttp3.internal.notify
import org.json.JSONArray
import org.json.JSONObject
import java.io.IOException


class HomeActivity : AppCompatActivity() {
    private val listaProdutos = ArrayList<ProdutoModel>()
    private lateinit var customAdapter: ProdutosAdapter
    private val client = OkHttpClient()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_home)

        val recyclerView: RecyclerView = findViewById(R.id.rvProdutos)
        customAdapter = ProdutosAdapter(listaProdutos)

        val layoutManager = LinearLayoutManager(applicationContext)
        recyclerView.layoutManager = layoutManager
        recyclerView.adapter = customAdapter
        prepararItens()
    }

    private fun prepararItens() {

        val request = Request.Builder().url("https://run.mocky.io/v3/e013bf96-a966-4b42-966c-2ece7b181917").build();

        client.newCall(request).enqueue(object: Callback {
            override fun onResponse(call: Call, response: Response) {
                var str_response = response.body!!.string()
                //creating json object
                val listaRetorno: JSONArray = JSONArray(str_response)
                var i:Int = 0
                var size:Int = listaRetorno.length()
                var novaListaProdutos = ArrayList<ProdutoModel>();

                for (i in 0.. size-1) {
                    var json_objectdetail:JSONObject=listaRetorno.getJSONObject(i)
                    var produto:ProdutoModel = ProdutoModel();
                    produto.id = json_objectdetail.getInt("id")
                    produto.alt = json_objectdetail.getString("alt")
                    produto.nome = json_objectdetail.getString("nome")
                    produto.imageURL =  R.drawable.capacete01 //json_objectdetail.getString("imagemURL")
                    produto.tipo = json_objectdetail.getString("tipo")
                    produto.preco = json_objectdetail.getDouble("preco")

                    novaListaProdutos.add(produto)

                }

                customAdapter.updateReceiptsList(novaListaProdutos)

            }

            override fun onFailure(call: Call, e: IOException) {
                TODO("Not yet implemented")
                println(e)
            }
        })




        listaProdutos.add(
            ProdutoModel(
                1,
                "Capacete",
                "Capacete 01",
                "texto alternativo Capacete 01",
                11.32,
                R.drawable.capacete01
            ),
        )
        listaProdutos.add(
            ProdutoModel(
                2,
                "Capacete",
                "Capacete 02",
                "texto alternativo Capacete 0",
                22.32,
                R.drawable.capacete02
            ),
        )

        listaProdutos.add(
            ProdutoModel(
                3,
                "Capacete",
                "Capacete 03",
                "texto alternativo Capacete 03",
                33.32,
                R.drawable.capacete01
            ),
        )
        listaProdutos.add(
            ProdutoModel(
                4,
                "Blusa",
                "Blusao 01",
                "texto alternativo Blusao 01",
                44.32,
                R.drawable.blusa01
            ),
        )

        customAdapter.notifyDataSetChanged()
    }
}