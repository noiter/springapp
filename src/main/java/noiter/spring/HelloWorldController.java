package noiter.spring;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloWorldController {

    @RequestMapping("/welcome.html")
    public String getContent() {
        return "Hello world";
    }
}
