package com.flutter.widgets.flutter_widgets_app;

import android.os.Build;
import android.util.Base64;

import androidx.annotation.RequiresApi;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

@RequiresApi(api = Build.VERSION_CODES.KITKAT)
public class AESUtils {

    /**
     * 字符编码(用哪个都可以，要注意new String()默认使用UTF-8编码 getBytes()默认使用ISO8859-1编码)
     */
    private static final Charset CHARSET_UTF8 = StandardCharsets.UTF_8;

    /**
     * 加密算法
     */
    private static final String KEY_ALGORITHM = "AES";

    /**
     * 加解密算法/工作模式/填充方式
     */
    private static final String CIPHER_ALGORITHM = "AES/CBC/PKCS7";

    /**
     * AES 加密
     *
     * @param data      待加密内容
     * @param secretKey 加密密码，长度：16 或 32 个字符
     * @return 返回Base64转码后的加密数据
     */
    public static String encrypt(String data, byte[] secretKey) {
        try {
            //创建密码器
            Cipher cipher = Cipher.getInstance(CIPHER_ALGORITHM);
            //初始化为加密密码器
            IvParameterSpec iv = new IvParameterSpec(secretKey);
            cipher.init(Cipher.ENCRYPT_MODE, getSecretKey(secretKey), iv);
            byte[] encryptByte = cipher.doFinal(data.getBytes());
            // 将加密以后的数据进行 Base64 编码
            return base64Encode(encryptByte);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * AES 加密
     *
     * @param secretKey 加密密码，长度：16 或 32 个字符
     * @param data      待加密内容
     * @return 返回Base64转码后的加密数据
     */
    public static String encrypt(String data,String secretKey) {
        try {
            // 创建AES秘钥
            SecretKeySpec secretKeySpec = new SecretKeySpec(secretKey.getBytes(CHARSET_UTF8), KEY_ALGORITHM);
            // 创建密码器
            Cipher cipher = Cipher.getInstance(CIPHER_ALGORITHM);
            // 初始化加密器
            cipher.init(Cipher.ENCRYPT_MODE, secretKeySpec);
            byte[] encryptByte = cipher.doFinal(data.getBytes(CHARSET_UTF8));
            // 将加密以后的数据进行 Base64 编码
            return base64Encode(encryptByte);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * 将 字节数组 转换成 Base64 编码
     */
    public static String base64Encode(byte[] data) {
        return Base64.encodeToString(data, Base64.NO_WRAP);
    }

    /**
     * 使用密码获取 AES 秘钥
     */
    public static SecretKeySpec getSecretKey(byte[] secretKey) {
//        secretKey = toMakeKey(secretKey, SECRET_KEY_LENGTH, DEFAULT_VALUE);
        return new SecretKeySpec(secretKey, KEY_ALGORITHM);
    }

    /**
     * 如果 AES 的密钥小于 {@code length} 的长度，就对秘钥进行补位，保证秘钥安全。
     *
     * @param secretKey 密钥 key
     * @param length    密钥应有的长度
     * @param text      默认补的文本
     * @return 密钥
     */
    private static String toMakeKey(String secretKey, int length, String text) {
        // 获取密钥长度
        int strLen = secretKey.length();
        // 判断长度是否小于应有的长度
        if (strLen < length) {
            // 补全位数
            StringBuilder builder = new StringBuilder();
            // 将key添加至builder中
            builder.append(secretKey);
            // 遍历添加默认文本
            for (int i = 0; i < length - strLen; i++) {
                builder.append(text);
            }
            // 赋值
            secretKey = builder.toString();
        }
        return secretKey;
    }

}