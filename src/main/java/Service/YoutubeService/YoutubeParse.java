package Service.YoutubeService;

import Data.Youtube.YoutubeData;
import Data.Youtube.YoutubeItem;
import lombok.Data;
import org.springframework.stereotype.Service;

@Service
@Data
public class YoutubeParse {
    YoutubeService youtubeService;
    YoutubeData youtubeData;

    public String[][] parseYoutubeData(String data){
        youtubeData = youtubeService.searchToYoutube(data);
        YoutubeItem youtubeItems[] = youtubeData.getItems();

        String dataArray[][] = new String[youtubeItems.length][6];
        int index = 0;

        for (YoutubeItem item: youtubeItems) {
            dataArray[index][0] = item.getSnippet().getChannelId();
            dataArray[index][1] = item.getSnippet().getChannelTitle();
            dataArray[index][2] = item.getSnippet().getDescription();
            dataArray[index][3] = item.getSnippet().getPublishedAt();
            dataArray[index][4] = item.getSnippet().getTitle();
            dataArray[index][5] = item.getSnippet().getThumbnails().getMedium().getUrl();
        }
        return dataArray;
    }

}
