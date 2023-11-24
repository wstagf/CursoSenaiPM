package com.example.nossaloja.ui.home

import android.R
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ArrayAdapter
import androidx.fragment.app.Fragment
import androidx.lifecycle.ViewModelProvider
import com.example.nossaloja.databinding.FragmentHomeBinding
import com.google.android.material.snackbar.Snackbar
import okhttp3.*
import org.json.JSONArray
import org.json.JSONObject
import java.io.IOException


class HomeFragment : Fragment() {

private var _binding: FragmentHomeBinding? = null
  // This property is only valid between onCreateView and
  // onDestroyView.
  private val binding get() = _binding!!

  override fun onCreateView(
    inflater: LayoutInflater,
    container: ViewGroup?,
    savedInstanceState: Bundle?
  ): View {
    val homeViewModel =
            ViewModelProvider(this).get(HomeViewModel::class.java)

    _binding = FragmentHomeBinding.inflate(inflater, container, false)
    val root: View = binding.root


    // decalrado a lista
      val listaProdutos = ArrayList<ProdutoModel>()


    val client = OkHttpClient()

    val request = Request.Builder().url("https://run.mocky.io/v3/e013bf96-a966-4b42-966c-2ece7b181917").build();

    client.newCall(request).enqueue(object: Callback {
      override fun onResponse(call: Call, response: Response) {
        var str_response = response.body!!.string()
        //creating json object
        val listaRetorno:JSONArray = JSONArray(str_response)
        var i:Int = 0
        var size:Int = listaRetorno.length()
        for (i in 0.. size-1) {
          var json_objectdetail:JSONObject=listaRetorno.getJSONObject(i)
          var produto:ProdutoModel = ProdutoModel();
          produto.id = json_objectdetail.getInt("id")
          produto.alt = json_objectdetail.getString("alt")
          produto.nome = json_objectdetail.getString("nome")
          produto.imageURL = json_objectdetail.getString("imagemURL")
          produto.tipo = json_objectdetail.getString("tipo")
          produto.preco = json_objectdetail.getDouble("preco")

          listaProdutos.add(produto)

        }


          // aqui vamos fazer atualizar a tela

      }

      override fun onFailure(call: Call, e: IOException) {
        TODO("Not yet implemented")
        println(e)
      }
    })



     //atribui valores na lista.. é aqui que vamos carregar os dados vindo da api
      listaProdutos.add(
          ProdutoModel(
            1,
            "Capacete",
            "Capacete 01",
            "texto alternativo",
            50.32,
            "imagem"
          )
      )



//
//    // declaramos o custom  adapter
//    val adapter =
//      ProdutoAdapter(requireActivity(), listaProdutos )


    // declaramos um adapter
    val adapter =
      ArrayAdapter(requireContext(), R.layout.simple_list_item_1, listaProdutos)


    // fazemos a conexao do adapter com o listview atravez do binding
    binding.listViewHome.adapter = adapter



    // para perceber o item que está sendo clicado..
    binding.listViewHome.setOnItemClickListener { parent, view, position, id ->
      Snackbar.make(view,
        "Clicou no item de posição " + position
                + " com o valor " + listaProdutos.get(position)
        , Snackbar.LENGTH_LONG)
        .setAction("Action", null).show()
    }



    return root
  }

override fun onDestroyView() {
        super.onDestroyView()
        _binding = null
    }
}