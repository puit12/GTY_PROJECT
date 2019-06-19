package Config;

import Data.Twitch.TwitchData;
import Data.Twitch.TwitchInformation;
import Data.Youtube.YoutubeData;
import Service.TwitchService.TwitchParse;
import Service.TwitchService.TwitchService;
import Service.YoutubeService.YoutubeParse;
import Service.YoutubeService.YoutubeService;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class AppConfig {

    @Bean
    public YoutubeParse youtubeParse(){
        YoutubeParse youtubeParse = new YoutubeParse();
        YoutubeService youtubeService = new YoutubeService();
        YoutubeData youtubeData = new YoutubeData();

        youtubeParse.setYoutubeService(youtubeService);
        youtubeParse.setYoutubeData(youtubeData);
        return youtubeParse;
    }

    @Bean
    public TwitchParse twitchParse(){
        TwitchParse twitchParse = new TwitchParse();
        TwitchService twitchService = new TwitchService();
        TwitchData twitchData = new TwitchData();
        TwitchInformation twitchInformation= new TwitchInformation();

        twitchParse.setTwitchService(twitchService);
        twitchParse.setTwitchData(twitchData);
        twitchParse.setTwitchInformation(twitchInformation);
        return twitchParse;
    }
}
