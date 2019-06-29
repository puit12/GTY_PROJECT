package Service.YoutubeService;

import Data.Youtube.YoutubeData;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Service
public class YoutubeService {

    private RestTemplate restTemplate = new RestTemplate();
    private Logger logger = LoggerFactory.getLogger(YoutubeService.class);

    public YoutubeData searchToYoutube(String words){
        String uri = "https://www.googleapis.com/youtube/v3/search?part=snippet&maxResults=10&";
        String key = "";
        uri += "key=" + key;
        uri += "&q=" + words;
        ResponseEntity<YoutubeData> youtubeData = restTemplate.exchange(uri, HttpMethod.GET,null,YoutubeData.class);

        logger.info(youtubeData.getBody() +"");
        return youtubeData.getBody();
    }
}
