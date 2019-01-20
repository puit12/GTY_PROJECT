package Service.YoutubeService;

import Data.Youtube.Youtube;
import Data.Youtube.YoutubeData;
import Data.Youtube.YoutubeItem;
import lombok.Data;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

@Service
@Data
public class YoutubeParse {
    YoutubeService youtubeService;
    YoutubeData youtubeData;
    private Logger logger = LoggerFactory.getLogger(YoutubeParse.class);

    public Youtube[] parseYoutubeData(String data){
        youtubeData = youtubeService.searchToYoutube(data);
        YoutubeItem youtubeItems[] = youtubeData.getItems();

        Youtube youtubes[] = new Youtube[youtubeItems.length];
        for(int i = 0 ; i < youtubeItems.length; i++){
            youtubes[i] = new Youtube();
        }

        int index = 0;

        for (YoutubeItem item: youtubeItems) {
            if(item.getId().getChannelId() == null){
                youtubes[index].setVideoId(item.getId().getVideoId());
                youtubes[index].setCheckVideoChannel(0);
            }
            else {
                youtubes[index].setChannelId(item.getId().getChannelId());
                youtubes[index].setCheckVideoChannel(1);
            }
            youtubes[index].setChannelTitle(item.getSnippet().getChannelTitle());
            youtubes[index].setDescription(item.getSnippet().getDescription());
            youtubes[index].setPublishedAt(item.getSnippet().getPublishedAt());
            youtubes[index].setTitle(item.getSnippet().getTitle());
            youtubes[index].setUrl(item.getSnippet().getThumbnails().getMedium().getUrl());
            index++;

        }
        return youtubes;
    }

}
