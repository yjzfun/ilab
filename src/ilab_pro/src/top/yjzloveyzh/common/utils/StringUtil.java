package top.yjzloveyzh.common.utils;

public class StringUtil {
    public static boolean isEmpty(String param) {
        if (param == null || "".equals(param.trim())) {
            return true;
        } else {
            return false;
        }
    }

    public static boolean isNotEmpty(String param) {
        if (param != null && !"".equals(param.trim())) {
            return true;
        } else {
            return false;
        }
    }
}