package com.fz.comment;

import org.xvolks.jnative.JNative;
import org.xvolks.jnative.Type;
import org.xvolks.jnative.exceptions.NativeException;

import java.util.Properties;

public class ReadDll {
    public static String getStatusCode(){
        JNative.setLoggingEnabled(true);
        try {
            JNative getUrl = new JNative(ReadConfig.getInstance().getString("path"), ReadConfig.getInstance().getString("statusMethod"));
            getUrl.setRetVal(Type.STRING);//int IConnectType ,int Port ,String ITcpAddress ,long InBaud );
            getUrl.setParameter(0,1);
            getUrl.setParameter(1,0);
            getUrl.setParameter(2, ReadConfig.getString("ip"));
            getUrl.setParameter(3,5000);
            getUrl.invoke();
            //int statusCode =Integer.parseInt();
            return getUrl.getRetVal();
        } catch (Exception e) {
            e.printStackTrace();
            return  "-1";
        }
    }

    public static int answerCom(int money,String cardid){
        JNative.setLoggingEnabled(true);
        try {
            JNative getUrl = new JNative(ReadConfig.getInstance().getString("path"), ReadConfig.getInstance().getString("succOrFailMethod"));
            getUrl.setRetVal(Type.INT);
            getUrl.setParameter(0, ReadConfig.getInstance().getString("computerNo"));
            getUrl.setParameter(1, cardid);
            getUrl.setParameter(2, money*10);
            getUrl.invoke();
            int computer =Integer.parseInt(getUrl.getRetVal());
            return computer;
        } catch (Exception e) {
            e.printStackTrace();
            return  -1;
        }
    }
}
