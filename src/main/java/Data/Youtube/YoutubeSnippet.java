package Data.Youtube;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.Data;

@Data
@JsonIgnoreProperties(ignoreUnknown = true)
public class YoutubeSnippet {
    private String publishedAt;
    private String channelTitle;
    private String channelId;
    private String title;
    private String description;
    YoutubeThumbnail thumbnails;
}
