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

    val request = Request.Builder().url("http://192.168.1.71:3000/products").build();

    client.newCall(request).enqueue(object: Callback {
      override fun onResponse(call: Call, response: Response) {
        var str_response = response.body!!.string()
        println(str_response)
      }

      override fun onFailure(call: Call, e: IOException) {
        TODO("Not yet implemented")
        println(e)
      }
    })

    // atribui valores na lista.. é aqui que vamos carregar os dados vindo da api
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



     // declaramos um adapter
      val adapter =
          ArrayAdapter(requireContext(), R.layout.simple_list_item_1, listaProdutos)

//
//    // declaramos o custom  adapter
//    val adapter =
//      ProdutoAdapter(requireActivity(), listaProdutos )



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