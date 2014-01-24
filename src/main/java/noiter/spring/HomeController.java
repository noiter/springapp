package noiter.spring;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/")
public class HomeController {

    @RequestMapping({"/", "/home"})
    public String getContent() {
        return "first-page";
    }

}