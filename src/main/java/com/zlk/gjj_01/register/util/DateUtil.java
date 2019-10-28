package com.zlk.gjj_01.register.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author 芦凤祥
 * @version 1.0
 * @date 2019/10/25 9:16
 */
public class DateUtil {
    public static Date stringToDate(String str) throws ParseException {
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        return format.parse(str);
    }
}
