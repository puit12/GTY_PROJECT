package Data.Youtube;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.Data;

@Data
@JsonIgnoreProperties(ignoreUnknown = true)
public class YoutubeItem {
    YoutubeId id;
    YoutubeSnippet snippet;
}
