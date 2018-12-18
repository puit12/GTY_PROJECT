package Config;

import Data.Youtube.YoutubeData;
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
    public YoutubeService youtubeService(){
        return new YoutubeService();
    }

    @Bean
    public YoutubeData youtubeData(){
        return new YoutubeData();
    }
}
