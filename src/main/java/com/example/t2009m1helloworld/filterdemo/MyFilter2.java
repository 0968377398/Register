package com.example.t2009m1helloworld.filterdemo;

import javax.servlet.*;
import java.io.IOException;

public class MyFilter2  implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        Filter.super.init(filterConfig);
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        
    }

    @Override
    public void destroy() {
        Filter.super.destroy();
    }
}
