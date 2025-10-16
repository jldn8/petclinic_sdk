package org.springframework.samples.petclinic.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

public class LoginInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        String uri = request.getRequestURI();
        HttpSession session = request.getSession(false);

        // 로그인 페이지나 정적 리소스(css, js, 이미지)는 예외 처리
        if (uri.startsWith("/login") || uri.startsWith("/resources") || uri.startsWith("/css") || uri.startsWith("/images")) {
            return true;
        }

        // 로그인 안 된 경우 → 로그인 페이지로 리다이렉트
        if (session == null || session.getAttribute("loginUser") == null) {
            response.sendRedirect("/login");
            return false;
        }

        return true; // 로그인 되어 있으면 요청 진행
    }
}
