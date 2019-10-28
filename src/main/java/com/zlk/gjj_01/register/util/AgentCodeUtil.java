package com.zlk.gjj_01.register.util;

/**
 * @author 芦凤祥
 * @version 1.0
 * @date 2019/10/25 9:16
 */
public class AgentCodeUtil {
    public static String getAgentCode(){
        String[] arr = {"0","1","2","3","4","5","6","7","8","9"};
        String agentCode="";
        for(int j=0;j<10;j++){
            int i=(int)(Math.random()*10);
            agentCode=agentCode+arr[i];
        }
        return agentCode;
    }
}
