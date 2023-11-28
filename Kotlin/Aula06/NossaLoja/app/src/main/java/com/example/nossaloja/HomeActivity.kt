package com.example.nossaloja

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.os.StrictMode
import android.os.StrictMode.ThreadPolicy
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

        val policy = ThreadPolicy.Builder().permitAll().build()
        StrictMode.setThreadPolicy(policy)

        prepararItens()
    }

    private fun prepararItens() {
        val recyclerView: RecyclerView = findViewById(R.id.rvProdutos)
        val layoutManager = LinearLayoutManager(applicationContext)


        val request = Request.Builder().url("https://run.mocky.io/v3/e013bf96-a966-4b42-966c-2ece7b181917").build();
        val call = client.newCall(request)
        val response = call.execute()

        if(response.code == 200) {
            ///

            var str_response = response.body!!.string()

            //creating json object
            val listaRetorno: JSONArray = JSONArray(str_response)
            var i:Int = 0
            var size:Int = listaRetorno.length()
            for (i in 0.. size-1) {
                var json_objectdetail:JSONObject=listaRetorno.getJSONObject(i)
                var produto:ProdutoModel = ProdutoModel();
                produto.id = json_objectdetail.getInt("id")
                produto.alt = json_objectdetail.getString("alt")
                produto.nome = json_objectdetail.getString("nome")
                produto.imageURL =  R.drawable.capacete01 //json_objectdetail.getString("imagemURL")
                produto.tipo = json_objectdetail.getString("tipo")
                produto.preco = json_objectdetail.getDouble("preco")
                listaProdutos.add(produto)
            }


        }

        customAdapter = ProdutosAdapter(listaProdutos)
        recyclerView.layoutManager = layoutManager
        recyclerView.adapter = customAdapter

        customAdapter.notifyDataSetChanged()
/*








                }

                customAdapter.notifyDataSetChanged()

            }

            override fun onFailure(call: Call, e: IOException) {
                TODO("Not yet implemented")
                println(e)
            }
        })
*/



    }
}