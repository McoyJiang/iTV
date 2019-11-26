package com.example.ai_tv.banner;

import android.app.Activity;

import io.flutter.plugin.common.PluginRegistry;
import io.flutter.plugin.common.StandardMessageCodec;

public class BannerPlugin {
    public static void registerWith(PluginRegistry registry, Activity activity) {
        final String key = BannerPlugin.class.getCanonicalName();
        if (registry.hasPlugin(key)) return;

        PluginRegistry.Registrar registrar = registry.registrarFor(key);
        //这个banner就是flutter调用的依据
        registrar.platformViewRegistry().registerViewFactory("banner", new BannerViewFactory(new StandardMessageCodec(), activity, registrar.messenger()));
    }
}
