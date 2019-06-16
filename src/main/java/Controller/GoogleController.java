package Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/google")
public class GoogleController {
    @RequestMapping("/search/")
    public String searchToGoogle(Model model, HttpServletRequest request){
        String data = request.getParameter("name");
        model.addAttribute("data",data);
        return "google";
    }
}