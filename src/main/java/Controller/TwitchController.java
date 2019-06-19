package Controller;

import Data.Twitch.Twitch;
import Data.Twitch.TwitchInformation;
import Service.TwitchService.TwitchParse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping("/twitch")
public class TwitchController {

    @Autowired
    TwitchParse twitchParse;

    @RequestMapping("/search/{name}/{page}")
    @ResponseBody
    public TwitchInformation searchToYoutube(Model model,@PathVariable String name, @PathVariable int page){
        String data = name;
        int pageStart = page * 10;
        int pageEnd = pageStart + 9;
        TwitchInformation resultData = twitchParse.parseTwitchData(data,pageStart,pageEnd);
        return resultData;
    }

}
