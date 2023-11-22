package com.example.nossaloja.ui.home

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ArrayAdapter
import android.widget.ListView
import android.widget.TextView
import androidx.fragment.app.Fragment
import androidx.lifecycle.ViewModelProvider
import com.example.nossaloja.databinding.FragmentHomeBinding
import com.google.android.material.snackbar.Snackbar

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
      val listaNumeros = ArrayList<Int>()


    // atribui valores na lista.. é aqui que vamos carregar os dados vindo da api
      listaNumeros.add(1)
      listaNumeros.add(2)
      listaNumeros.add(6)
      listaNumeros.add(56)
      listaNumeros.add(123)
      listaNumeros.add(467)
      listaNumeros.add(26)
      listaNumeros.add(71)

     // declaramos um adapter
      val adapter =
          ArrayAdapter(requireContext(), android.R.layout.simple_list_item_1, listaNumeros)


    // fazemos a conexao do adapter com o listview atravez do binding
      binding.listViewHome.adapter = adapter



    // para perceber o item que está sendo clicado..
    binding.listViewHome.setOnItemClickListener { parent, view, position, id ->
      Snackbar.make(view,
        "Clicou no item de posição " + position
                + " com o valor " + listaNumeros.get(position)
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