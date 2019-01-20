package Data.Twitch;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Twitch {
    int _total;
    int viewers;
    String name;
    String display_name;
    int followers;
    String game;
    String logo;
    String status;
    String url;
    String medium;
}
