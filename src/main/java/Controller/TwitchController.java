package Controller;

import Service.TwitchService.TwitchParse;
import Service.TwitchService.TwitchService;
import Service.YoutubeService.YoutubeParse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;


@Controller
@RequestMapping("/twitch")
public class TwitchController {

    @Autowired
    TwitchParse twitchParse;

    @RequestMapping("/search/")
    public String searchToYoutube(Model model, HttpServletRequest request){
        String data = request.getParameter("name");
        model.addAttribute("data",twitchParse.parseTwitchData(data));
        return "twitch";
    }

}
