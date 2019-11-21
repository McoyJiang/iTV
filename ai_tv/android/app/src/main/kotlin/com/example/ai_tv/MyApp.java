package com.example.ai_tv;

import android.util.Log;

import io.flutter.app.FlutterApplication;

public class MyApp extends FlutterApplication {

    @Override
    public void onCreate() {
        super.onCreate();
        Log.e("ABC", "MyApp onCreate");
    }
}
