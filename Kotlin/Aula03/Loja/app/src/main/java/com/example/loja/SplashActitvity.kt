package com.example.loja

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.os.Handler
import android.os.Looper

class SplashActitvity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_splash)



        Handler(Looper.getMainLooper()).postDelayed({
            var i = Intent(this, HomeActivity::class.java)
            startActivity(i)
            finish()
        }, 5000)
    }
}