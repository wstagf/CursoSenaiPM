package com.example.nossaloja

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.example.nossaloja.ui.home.ProdutoModel

class HomeActivity : AppCompatActivity() {
    private val listaProdutos = ArrayList<ProdutoModel>()
    private lateinit var customAdapter: ProdutosAdapter

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


//        val client = OkHttpClient()
//
//        val request = Request.Builder().url("https://run.mocky.io/v3/e013bf96-a966-4b42-966c-2ece7b181917").build();
//
//        client.newCall(request).enqueue(object: Callback {
//            override fun onResponse(call: Call, response: Response) {
//                var str_response = response.body!!.string()
//                //creating json object
//                val listaRetorno:JSONArray = JSONArray(str_response)
//                var i:Int = 0
//                var size:Int = listaRetorno.length()
//                for (i in 0.. size-1) {
//                    var json_objectdetail:JSONObject=listaRetorno.getJSONObject(i)
//                    var produto:ProdutoModel = ProdutoModel();
//                    produto.id = json_objectdetail.getInt("id")
//                    produto.alt = json_objectdetail.getString("alt")
//                    produto.nome = json_objectdetail.getString("nome")
//                    produto.imageURL = json_objectdetail.getString("imagemURL")
//                    produto.tipo = json_objectdetail.getString("tipo")
//                    produto.preco = json_objectdetail.getDouble("preco")
//
//                    listaProdutos.add(produto)
//
//                }
//
//
//                // aqui vamos fazer atualizar a tela
//
//            }
//
//            override fun onFailure(call: Call, e: IOException) {
//                TODO("Not yet implemented")
//                println(e)
//            }
//        })



        //atribui valores na lista.. é aqui que vamos carregar os dados vindo da api
        listaProdutos.add(
            ProdutoModel(
                1,
                "Capacete",
                "Capacete 01",
                "texto alternativo",
                50.32,
                R.drawable.capacete01
            ),
        )
        listaProdutos.add(
            ProdutoModel(
                2,
                "Capacete",
                "Capacete 02",
                "texto alternativo",
                52.32,
                R.drawable.capacete02
            ),
        )

//        itemsList.add("Item 1")
//        itemsList.add("Item 2")
//        itemsList.add("Item 3")
//        itemsList.add("Item 4")
//        itemsList.add("Item 5")
//        itemsList.add("Item 6")
//        itemsList.add("Item 7")
//        itemsList.add("Item 8")
//        itemsList.add("Item 9")
//        itemsList.add("Item 10")
//        itemsList.add("Item 11")
//        itemsList.add("Item 12")
//        itemsList.add("Item 13")
        customAdapter.notifyDataSetChanged()
    }
}