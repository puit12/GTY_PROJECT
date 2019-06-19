package Service.TwitchService;

import Data.Twitch.Twitch;
import Data.Twitch.TwitchData;
import Data.Twitch.TwitchInformation;
import Data.Twitch.TwitchStream;
import lombok.Data;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

@Service
@Data
public class TwitchParse {
    TwitchService twitchService;
    TwitchData twitchData;
    TwitchInformation twitchInformation;

    private Logger logger = LoggerFactory.getLogger(TwitchParse.class);

    public TwitchInformation parseTwitchData(String data, int pageStart, int pageEnd) {
        twitchData = twitchService.searchToTwitch(data);
        TwitchStream twitchStreams[] = twitchData.getStreams();
        Twitch twitches[] = new Twitch[25];

        int index = 0;

        for (TwitchStream stream : twitchStreams) {
            twitches[index] = new Twitch();
            twitches[index].setViewers(stream.getViewers());
            twitches[index].setMedium(stream.getPreview().getMedium());
            twitches[index].setName(stream.getChannel().getName());
            twitches[index].setDisplay_name(stream.getChannel().getDisplay_name());
            twitches[index].setFollowers(stream.getChannel().getFollowers());
            twitches[index].setGame(stream.getChannel().getGame());
            twitches[index].setLogo(stream.getChannel().getLogo());
            twitches[index].setStatus(stream.getChannel().getStatus());
            twitches[index].setUrl(stream.getChannel().getUrl());
            index++;
        }
        logger.info(index + "");
        twitchInformation.setTwitch(twitches);
        twitchInformation.setStartNum(pageStart);
        twitchInformation.setEndNum(pageEnd);
        return twitchInformation;
    }

}
