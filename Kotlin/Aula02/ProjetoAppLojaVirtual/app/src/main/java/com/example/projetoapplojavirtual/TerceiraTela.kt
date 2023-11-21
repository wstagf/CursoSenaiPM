package com.example.projetoapplojavirtual

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button

class TerceiraTela : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_terceira_tela)

        findViewById<Button>(R.id.buttaoterceiratela).setOnClickListener{
            setContentView(R.layout.activity_segunda_tela)
        }

    }
}