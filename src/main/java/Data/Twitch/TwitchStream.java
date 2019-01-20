package Data.Twitch;


import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.Data;

@Data
@JsonIgnoreProperties(ignoreUnknown = true)
public class TwitchStream {
    TwitchChannel channel;
    TwitchPreview preview;
    int viewers;
}
