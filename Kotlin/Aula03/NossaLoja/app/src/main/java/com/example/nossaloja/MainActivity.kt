package com.example.nossaloja

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.os.Handler
import android.os.Looper

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        Handler(Looper.getMainLooper()).postDelayed({
            // será direcionado para a tela HOME
            var i = Intent(this, HomeActivity::class.java)
            startActivity(i)
            finish()
        }, 5000)
    }
}