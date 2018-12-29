package Controller;

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
    @RequestMapping("/search/")
    public String searchToYoutube(Model model, HttpServletRequest request){
        TwitchService twitchService = new TwitchService();
        String data = request.getParameter("name");
        model.addAttribute("data",twitchService.searchToTwitch(data));
        return "twitch";
    }

}
