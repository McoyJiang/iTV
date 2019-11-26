package com.example.ai_tv.banner;

import android.app.Activity;
import android.content.Context;

import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MessageCodec;
import io.flutter.plugin.platform.PlatformView;
import io.flutter.plugin.platform.PlatformViewFactory;

public class BannerViewFactory extends PlatformViewFactory {

    private Activity activity;
    private BinaryMessenger messenger;

    public BannerViewFactory(MessageCodec<Object> createArgsCodec, Activity activity, BinaryMessenger messenger) {
        super(createArgsCodec);
        this.activity = activity;
        this.messenger = messenger;
    }

    @Override
    public PlatformView create(Context context, int id, Object o) {
        return new MyBannerView(activity, messenger, id);
    }

}
