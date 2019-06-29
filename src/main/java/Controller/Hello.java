package Controller;

import Data.TestForm;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Hello {
    @RequestMapping(value = "/")
    public String home() {
        return "index";
    }

    @RequestMapping(value = "/result")
    public String result() {
        return "google";
    }

    @RequestMapping(value = "/test")
    public String test() {
        return "test";
    }

    @RequestMapping(value = "/formtest")
    public String test(TestForm testForm){
        return "testresult";
    }
}
