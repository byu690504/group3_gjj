package com.zlk.gjj_01.register.util;

import java.util.Scanner;
import java.util.UUID;

/**
 * 计算缴存技术工具类
 */


public class DepositeBaseUtil {
    //存缴基数
    public static Integer mothod(){
        //输入工资(缴存基数)
        int num=900;
        int personal = 0;
        //缴存基数小于等于当年最低工资标准大于当年下岗职工最低生活费
        if(1000<num && num<=800){
            System.out.println("缴存基数低于当年最低工资，请检查");
        }else{
            personal= (int) (num * 0.12);
            //职工工资低于最低工资标准(职工工资≤最低工资标准)的个人月缴存额为零
            if(num<= 800){
              personal=0;
                //职工工资扣除公积金后低于最低工资标准的，以达到最低工资标准为限
            }else if(num-(num*0.12)<800){
                personal=num-800;
                //缴存基础低于当年下岗职工基本生活费
            }else if(num<1000){
                System.out.println("缴存基数低于当年最低生活保障线，请检查");
            }
        }
        int unit= (int) (num * 0.12);
        return personal;
    }
    //登录限制次数
    public static void login(){
        //判断剩余登录的机会
        int m=5;
        while (true){
            System.out.println("请输入员工姓名：");
            Scanner scan=new Scanner(System.in);
            String empName=scan.nextLine();
            System.out.println("请输入证件名字：");
            Scanner scan1=new Scanner(System.in);
            String empCardName=scan1.nextLine();
            System.out.println("请输入证件号：");
            Scanner scan2=new Scanner(System.in);
            String empCardNumber=scan2.nextLine();
            if(empName.equals("小华") && empCardName.equals("身份证") && empCardNumber.equals("41000000x")){
                System.out.println("登录成功");
                break;
            }else{
                if(m==1){
                    System.out.println("录入信息失败,单位需选择人工审核");
                    break;
                }
                System.out.println("输入错误，你还有\"+(m-1)+\"次机会！");
                m--;
            }
        }
    }
    //生成随机id
    public static String getUUID() {
        UUID uuid = UUID.randomUUID();
        String str = uuid.toString();
        String uuidStr = str.replace("-", "");
        return uuidStr;
    }
}
