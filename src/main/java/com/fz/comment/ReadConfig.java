package com.fz.comment;

import com.fz.controller.LoginController;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class ReadConfig {
    public static Properties properties;
    private static ReadConfig instance = new ReadConfig();
    public static ReadConfig getInstance() {
        synchronized (LoginController.class){
            if(properties==null){
                synchronized (LoginController.class){
                    properties = new Properties();
                    InputStream fis = ReadConfig.class.getResourceAsStream("/config/computer.properties");
                    try {
                        properties.load(fis);
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
        return instance;
    }
    public static Integer getInteger(String key){
        return  Integer.parseInt(properties.getProperty(key));
    }
    public static String getString(String key){
        return  properties.getProperty(key);
    }
    public static Double getDouble(String key){
        return  Double.parseDouble(properties.getProperty(key));
    }
}
