package com.primaria.serve;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

        @GetMapping("/inicio")
        public String index() {
            return "index";
        }
}
