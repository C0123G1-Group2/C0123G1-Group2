package com.example.util;
import com.example.model.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class Helper {
    public static boolean checkUser(HttpServletRequest request) {
        HttpSession session = request.getSession();
        return session.getAttribute("userSession") != null;
    }
    public static User getUserLogin(HttpServletRequest request) {
        HttpSession session = request.getSession();
        if(checkUser(request)){
            return (User) session.getAttribute("userSession");
        }
        return null;
    }
}
