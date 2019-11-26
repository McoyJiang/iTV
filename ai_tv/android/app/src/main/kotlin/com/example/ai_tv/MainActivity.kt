package com.example.ai_tv

import android.os.Bundle
import com.example.ai_tv.banner.BannerPlugin

import io.flutter.app.FlutterActivity
import io.flutter.plugins.GeneratedPluginRegistrant

class MainActivity: FlutterActivity() {
  override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)
    GeneratedPluginRegistrant.registerWith(this)
    BannerPlugin.registerWith(this, this)
  }
}
