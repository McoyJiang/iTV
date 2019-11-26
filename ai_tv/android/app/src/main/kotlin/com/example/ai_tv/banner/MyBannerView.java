package com.example.ai_tv.banner;

import android.app.Activity;
import android.view.View;
import android.widget.LinearLayout;

import com.qq.e.ads.banner.ADSize;
import com.qq.e.ads.banner.BannerADListener;
import com.qq.e.ads.banner.BannerView;
import com.qq.e.comm.constants.ErrorCode;

import java.util.List;

import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.platform.PlatformView;

import static com.qq.e.ads.banner.ADSize.BANNER;

public class MyBannerView implements PlatformView, MethodChannel.MethodCallHandler{
    //private UnifiedBannerView bannerView;
    BannerView bannerView;
    private LinearLayout linearLayout;
    private Activity activity;

    MyBannerView(Activity activity, BinaryMessenger messenger, int id) {
        MethodChannel methodChannel = new MethodChannel(messenger, "banner_" + id);
        methodChannel.setMethodCallHandler(this);
        this.activity = activity;
        if (linearLayout == null) {
            linearLayout = new LinearLayout(activity);
        }
    }

    @Override
    public View getView() {
        return linearLayout;
    }

    @Override
    public void dispose() {
        if (bannerView != null)
            bannerView.destroy();
    }

    @Override
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        switch (methodCall.method) {
            case "setBannerId":
                setText(methodCall, result);
                break;
            default:
                result.notImplemented();
        }
    }

    private void setText(MethodCall methodCall, MethodChannel.Result result) {
        List<String> bannerId = (List<String>) methodCall.arguments;
        System.out.println(bannerId);

        if (bannerView == null){
            bannerView = new BannerView(activity, BANNER, "this is a banner", "this is a banner");
        }

        linearLayout.addView(bannerView);
        bannerView.loadAD();
        result.success(null);
    }
}
