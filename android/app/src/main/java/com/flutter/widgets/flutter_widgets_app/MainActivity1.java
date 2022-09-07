package com.flutter.widgets.flutter_widgets_app;

import android.os.Bundle;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import java.util.Map;

import io.flutter.Log;
import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;

public class MainActivity1 extends FlutterActivity {

    MethodChannel methodChannel ;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        FlutterEngine engine = this.getFlutterEngine();
        methodChannel  = new MethodChannel(engine.getDartExecutor().getBinaryMessenger(),"encrypt");
        methodChannel.setMethodCallHandler(new MethodChannel.MethodCallHandler() {
            @Override
            public void onMethodCall(@NonNull MethodCall call, @NonNull MethodChannel.Result result) {
                switch (call.method) {
                    case "AES128Encrypt":
                        Map map = (Map)call.arguments;
                        result.success(aes128(map.get("content").toString(),map.get("key").toString()));
                        break;
                }
            }
        });
    }

    private String aes128(String content,String key) {
        byte[] byteInfo = Md5Utils.hash16(key);
        byte[] byteInfo1 = new byte[16];
        for (int i = 0; i< byteInfo.length; i++) {
            byte b = byteInfo[i];
            int intValue = (int)byteInfo[i] + 256;
            byte byteValue = (byte)intValue;
            byteInfo1[i] = 80;
        }
        String encrypted =  AESUtils.encrypt(content,byteInfo);
        Log.i("AES","明文:" + content + ",密文:"+ encrypted);
        return  encrypted;
    }

}
