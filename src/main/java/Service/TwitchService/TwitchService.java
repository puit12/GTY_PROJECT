package Service.TwitchService;

import Data.Twitch.TwitchData;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Service
public class TwitchService {

    private RestTemplate restTemplate = new RestTemplate();
    private Logger logger = LoggerFactory.getLogger(TwitchService.class);

    public TwitchData searchToTwitch(String words){
        String uri = "https://api.twitch.tv/kraken/search/streams?query=";
        String game = words;
        uri += game;

        HttpHeaders header = new HttpHeaders();
        header.add("Client-ID","ID");
        logger.info(uri);
        ResponseEntity<TwitchData> twitchData = restTemplate.exchange(uri, HttpMethod.GET, new HttpEntity(header),TwitchData.class);
        logger.info(twitchData.getBody() +"");
        logger.info(twitchData +"");
        return twitchData.getBody();
    }
}
