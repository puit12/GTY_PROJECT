package Controller;

import Data.Twitch.Twitch;
import Service.TwitchService.TwitchParse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/twitch")
public class TwitchController {

    @Autowired
    TwitchParse twitchParse;

    @RequestMapping("/search/{name}/{page}")
    public String searchToYoutube(Model model,@PathVariable String name, @PathVariable int page){
        String data = name;
        int pageStart = page * 10;
        int pageEnd = pageStart + 9;
        Twitch[] resultData = twitchParse.parseTwitchData(data);
        model.addAttribute("data",resultData);
        model.addAttribute("dataNum",resultData.length);
        model.addAttribute("pageStart", pageStart);
        model.addAttribute("pageEnd", pageEnd);
        return "twitch";
    }

}
