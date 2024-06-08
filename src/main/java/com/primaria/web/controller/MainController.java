package com.primaria.web.controller;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {

        @GetMapping("/inicio")
        public ModelAndView index() {
            Authentication auth = SecurityContextHolder.getContext().getAuthentication();
            System.out.println(auth);
            return new ModelAndView("index");
        }

        @GetMapping("/login")
        public ModelAndView login() {
            return new ModelAndView("login");

        }

        @GetMapping("/logout")
        public ModelAndView logout(){
            return new ModelAndView("logout");
        }
}
