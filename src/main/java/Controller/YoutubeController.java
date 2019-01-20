package Controller;

import Service.YoutubeService.YoutubeParse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;


@Controller
@RequestMapping("/youtube")
public class YoutubeController {

    @Autowired
    private YoutubeParse youtubeParse;

    @RequestMapping("/search/")
    public String searchToYoutube(Model model, HttpServletRequest request){
        String data = request.getParameter("name");
        model.addAttribute("data", youtubeParse.parseYoutubeData(data));
        return "youtube";
    }

}
