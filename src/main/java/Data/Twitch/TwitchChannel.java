package Data.Twitch;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.Data;

@Data
@JsonIgnoreProperties(ignoreUnknown = true)
public class TwitchChannel {
    String name;
    String display_name;
    int followers;
    String game;
    String logo;
    String status;
    String url;

}
