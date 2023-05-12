package util;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(filterName = "FilterUTF-8" , value="/*")
public class FilterUTF8 implements Filter {
    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        HttpServletRequest request1 = (HttpServletRequest) request;
        String uri=request1.getRequestURI();
        HttpServletResponse response1 = (HttpServletResponse) response;
        HttpSession session = ((HttpServletRequest) request).getSession();
        if(uri.equals("/")
            ||uri.equals("/home")
            ||uri.equals("/login")
                ||session.getAttribute("userSession")!=null) {
            chain.doFilter(request1, response1);

        }else {
            request.getRequestDispatcher("/login").forward(request,response);
        }

    }
}
