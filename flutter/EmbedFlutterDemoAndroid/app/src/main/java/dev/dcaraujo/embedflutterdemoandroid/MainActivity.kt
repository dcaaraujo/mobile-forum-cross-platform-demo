package dev.dcaraujo.embedflutterdemoandroid

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import android.widget.Button
import io.flutter.embedding.android.FlutterActivity


class MainActivity : AppCompatActivity() {

    private lateinit var showFlutterActivityButton: Button

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        showFlutterActivityButton = findViewById(R.id.show_flutter_activity_button)
        showFlutterActivityButton.setOnClickListener(::showFlutterActivity)
    }

    private fun showFlutterActivity(view: View) {
        val activity = FlutterActivity
            .withCachedEngine(SHARED_FLUTTER_ENGINE)
            .build(this)
        startActivity(activity)
    }
}