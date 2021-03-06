package com.springmvcweb.security;

import com.springmvcweb.util.SecurityUtil;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Component
public class CustomSuccessHandler extends SimpleUrlAuthenticationSuccessHandler {

    private RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();

    @Override
    public void handle(HttpServletRequest request, HttpServletResponse response, Authentication authentication)
            throws IOException {
        String targetUrl = determineTargetUrl(authentication);
        if (response.isCommitted()) {
            return;
        }
        redirectStrategy.sendRedirect(request, response, targetUrl);
    }

    @Override
    public RedirectStrategy getRedirectStrategy() {
        return redirectStrategy;
    }

    @Override
    public void setRedirectStrategy(RedirectStrategy redirectStrategy) {
        this.redirectStrategy = redirectStrategy;
    }

    private String determineTargetUrl(Authentication authentication) {
        String url = "";
        List<String> roles = SecurityUtil.getAuthorities();
        if (isAdmin(roles) == true) {
            url = "/quan-tri/trang-chu";
        } else if (isUser(roles) == true) {
            url = "/trang-chu";
        }
        return url;
    }

    public boolean isAdmin(List<String> roles) {
        return roles.contains("ADMIN");
    }

    public boolean isUser(List<String> roles) {
        return roles.contains("USER");
    }
}
