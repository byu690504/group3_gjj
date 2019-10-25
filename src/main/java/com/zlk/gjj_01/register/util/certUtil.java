package com.zlk.gjj_01.register.util;

/**
 * @author 张照伟
 * @version 1.0
 * @date 2019/10/25 9:16
 */
public class certUtil {
    public static String getAgentAuth(){
        String[] arr = {"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","0","1","2","3","4","5","6","7","8","9"};
        String agentAuth="";
        for(int j=0;j<16;j++){
            int i=(int)(Math.random()*36);
            agentAuth=agentAuth+arr[i];
        }
        return agentAuth;
    }
}
