package dev.dcaraujo.addreactnativedemo

import android.content.Intent
import android.net.Uri
import android.os.Build
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.provider.Settings
import android.util.Log
import android.widget.Button

class MainActivity : AppCompatActivity() {
    companion object {
        const val OVERLAY_PERMISSION_REQ_CODE = 1994
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        bindButtonClickListener()
        requestDrawOverlayPermission()
    }

    private fun bindButtonClickListener() {
        val button = findViewById<Button>(R.id.show_react_native_screen_button)
        button.setOnClickListener { showReactNativeScreen() }
    }

    private fun requestDrawOverlayPermission() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
            if (Settings.canDrawOverlays(this)) {
                return
            }
            val intent = Intent(
                Settings.ACTION_MANAGE_OVERLAY_PERMISSION,
                Uri.parse("package: $packageName")
            )
            startActivityForResult(intent, OVERLAY_PERMISSION_REQ_CODE)
        }
    }

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        super.onActivityResult(requestCode, resultCode, data)
        if (requestCode == OVERLAY_PERMISSION_REQ_CODE) {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
                if (!Settings.canDrawOverlays(this)) {
                    Log.d("AddReactNativeDemo", "User did not grant permission")
                }
            }
        }
    }

    private fun showReactNativeScreen() {
        val intent = Intent(this, ReactNativeActivity::class.java)
        intent.putExtra("componentName", "SharedReactNativeComponent")
        startActivity(intent)
    }
}