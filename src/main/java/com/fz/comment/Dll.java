package com.fz.comment;

import com.sun.jna.Library;
import com.sun.jna.Native;
import com.sun.jna.Platform;
import com.sun.jna.win32.StdCallLibrary;
import org.xvolks.jnative.JNative;
import org.xvolks.jnative.Type;
import org.xvolks.jnative.exceptions.NativeException;

import java.util.Properties;

public class Dll {

    public interface CLibrary extends Library {
        CLibrary INSTANCE = (CLibrary)
                Native.loadLibrary( (Platform.isWindows() ? ReadConfig.getInstance().getString("path") : "c"),CLibrary.class);
        int MacIsOnLine(int c );

        int SetMachineIc_Bt(int no ,int card  ,short money);
    }
/*    public static void main(String[] args) {
        int a=macIsOnLine();
        System.out.println(a);
        int b=setMachineIc_Bt(2,100);
        System.out.println(b);
    }*/
    public static int setMachineIc_Bt(int card,int money) {
        return CLibrary.INSTANCE.SetMachineIc_Bt(1,card,(short)money);
    }
    public static int macIsOnLine(){
        return CLibrary.INSTANCE.MacIsOnLine(1);
    }
}
