package Data.Youtube;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Youtube {
    String channelId;
    String videoId ;
    private String url ;
    private String publishedAt;
    private String channelTitle;
    private String title;
    private String description;
    int checkVideoChannel;
}
