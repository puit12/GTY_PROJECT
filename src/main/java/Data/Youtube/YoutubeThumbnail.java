package Data.Youtube;


import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.Data;
@Data
@JsonIgnoreProperties(ignoreUnknown = true)
public class YoutubeThumbnail {
    private YoutubeImageUrl medium;
}
