package top.yjzloveyzh.common;

public class Constants {

    public static class User {
        public static final String SESSION_USER_KEY = "USER";
        public static final String USER_INFO = "userInfo";
    }

    public static class EquipmentController {
        public static final String KEY_REQUEST_BUY_EQUIPMENTS_JSON = "equipments";
        public static final String KEY_LABS= "labs";
    }

    public static class UserControllerUrl {
        public static final String USER_CONTROLLER_URL_LOGIN = "login";
        public static final String USER_CONTROLLER_URL_TO_LOGIN = "toLogin";
        public static final String USER_CONTROLLER_URL_REGISTER = "register";
        public static final String USER_CONTROLLER_LOGIN_PAGE_URL = "login/login";
    }

    public static class LabControllerUrl {
        public static final String LAB_CONTROLLER_URL_TO_CONTENT = "toContent";
        public static final String LAB_CONTROLLER_CONTENT_PAGE_URL = "lab/content";
    }

    public static final class ErrorCode {
        public static final String SUCCESS = "200";
        public static final String ERROR_USER_NOT_EXIST = "400";
        public static final String ERROR_PERMISSION_DENIED = "401";
        public static final String ERROR_PARAMETER_ILLEGAL = "403";
        public static final String ERROR_RESOURCE_NOT_FOUND = "404";
        public static final String ERROR_SERVER_DENIED = "405";
    }

    public static final class Code {
        public static final String BACK_CODE = "code";
        public static final String BACK_TIP = "tip";
    }
}