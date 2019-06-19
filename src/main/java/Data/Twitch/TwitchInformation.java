package Data.Twitch;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class TwitchInformation {
    Twitch[] twitch;
    int startNum;
    int endNum;
}
