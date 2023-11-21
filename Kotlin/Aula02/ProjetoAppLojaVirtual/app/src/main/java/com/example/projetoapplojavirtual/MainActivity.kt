package com.example.projetoapplojavirtual

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.util.Log
import android.widget.Button
import android.widget.TextView
import kotlinx.coroutines.*

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_segunda_tela);

        findViewById<Button>(R.id.botaoSegundaTela)
        .setOnClickListener {
            println("Clicou no botao")

            setContentView(R.layout.activity_terceira_tela);
            //findViewById<TextView>(R.id.textView2).setText("clicou")



        }





    }
}