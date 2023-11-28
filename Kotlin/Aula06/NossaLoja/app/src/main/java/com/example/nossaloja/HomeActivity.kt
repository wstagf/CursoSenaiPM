package com.example.nossaloja

import android.R.attr.name
import android.content.res.Resources
import android.os.Bundle
import android.os.StrictMode
import android.os.StrictMode.ThreadPolicy
import androidx.appcompat.app.AppCompatActivity
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.example.nossaloja.ui.home.ProdutoModel
import okhttp3.*
import org.json.JSONObject


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


        val request = Request.Builder().url("http://192.168.15.12:1337/api/produtos/").build();
        val call = client.newCall(request)
        val response = call.execute()

        if(response.code == 200) {
            ///

            var str_response = response.body!!.string()

            //creating json object

            val jsonObj = JSONObject(str_response.substring(str_response.indexOf("{"), str_response.lastIndexOf("}") + 1))
            val data = jsonObj.getJSONArray("data")

            var i:Int = 0
            var size:Int = data.length()
            for (i in 0.. size-1) {
                var json_objectdetail:JSONObject=data.getJSONObject(i)
                println(json_objectdetail)

                var produto:ProdutoModel = ProdutoModel();
                produto.id = json_objectdetail.getInt("id")
                produto.alt = json_objectdetail.getJSONObject("attributes").getString("alt")
                produto.nome = json_objectdetail.getJSONObject("attributes").getString("nome")
                val imageURL = json_objectdetail.getJSONObject("attributes").getString("imagemURL")
                val resources: Resources = baseContext.getResources()
                val resourceId = resources.getIdentifier(
                    imageURL, "drawable",
                    baseContext.getPackageName()
                )

                produto.imageURL = resourceId //json_objectdetail.getString("imagemURL")
                produto.tipo = json_objectdetail.getJSONObject("attributes").getString("tipo")
                produto.preco = json_objectdetail.getJSONObject("attributes").getDouble("preco")
                listaProdutos.add(produto)
            }

            println(listaProdutos)


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