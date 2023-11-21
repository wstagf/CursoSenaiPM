package com.example.nossaloja

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)


        // será direcionado para a tela NossaTela
        var i = Intent(this, NossaTela::class.java)
        startActivity(i)


    }
}