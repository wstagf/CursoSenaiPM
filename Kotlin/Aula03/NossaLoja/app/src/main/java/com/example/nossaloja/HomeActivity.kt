package com.example.nossaloja
import android.os.Bundle
import android.view.Menu
import com.google.android.material.snackbar.Snackbar
import com.google.android.material.navigation.NavigationView
import androidx.navigation.findNavController
import androidx.navigation.ui.AppBarConfiguration
import androidx.navigation.ui.navigateUp
import androidx.navigation.ui.setupActionBarWithNavController
import androidx.navigation.ui.setupWithNavController
import androidx.drawerlayout.widget.DrawerLayout
import androidx.appcompat.app.AppCompatActivity
import com.example.nossaloja.databinding.ActivityHomeBinding

class HomeActivity : AppCompatActivity() {


    // declara a variavel nome appBarConfiguration do tipo "AppBarConfiguration", para administrar a appbar
    private lateinit var appBarConfiguration: AppBarConfiguration


    // delcara a variavel nome binding do tipo "ActivityHomeBinding" , para administrar a pagina com um todo
    private lateinit var binding: ActivityHomeBinding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)


        // atribuição na variavel BINDING o resultado da função inflate
     binding = ActivityHomeBinding.inflate(layoutInflater)
     setContentView(binding.root)

        setSupportActionBar(binding.appBarHome.toolbar)


        // cria a função que vai ser chamada caso cliquemos no botao flutuante
        binding.appBarHome.fab.setOnClickListener { view ->
            Snackbar.make(view, "Exemplo de botão flutuante", Snackbar.LENGTH_LONG)
                    .setAction("Action", null).show()
        }


        // Cria o menu declarando variaveis de controle...
        val drawerLayout: DrawerLayout = binding.drawerLayout
        val navView: NavigationView = binding.navView
        val navController = findNavController(R.id.nav_host_fragment_content_home)



        // Passing each menu ID as a set of Ids because each
        // menu should be considered as top level destinations.
        appBarConfiguration = AppBarConfiguration(setOf(
            R.id.nav_home, R.id.nav_settings,), drawerLayout)
        setupActionBarWithNavController(navController, appBarConfiguration)
        navView.setupWithNavController(navController)
    }

    override fun onCreateOptionsMenu(menu: Menu): Boolean {
        // Inflate the menu; this adds items to the action bar if it is present.
        menuInflater.inflate(R.menu.home, menu)
        return true
    }

    override fun onSupportNavigateUp(): Boolean {
        val navController = findNavController(R.id.nav_host_fragment_content_home)
        return navController.navigateUp(appBarConfiguration) || super.onSupportNavigateUp()
    }
}