package com.example.util;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class Helper {
    public static boolean checkUser(HttpServletRequest request) {
        HttpSession session = request.getSession();
        return session.getAttribute("userSession") != null;
    }
}
