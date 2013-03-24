/**
 * 
 */
package deb.youtube;

import java.util.ArrayList;
import java.util.List;

import deb.youtube.model.YouTubeVideo;

/**
 * @author Deb
 * 
 */
public class YouTube {

	public List<String> getFunnyVideo(String textQuery) {
		List<String> urlList = new ArrayList<String>(50);
		int maxResults = 50;
		boolean filter = true;
		int timeout = 2000;
		
		YouTubeManager manager = new YouTubeManager(
				"173341856353.apps.googleusercontent.com");
		
		try {
			List<YouTubeVideo> videos = manager.retrieveVideos(textQuery, maxResults, filter, timeout);
			for (YouTubeVideo video : videos) {
				urlList.add(video.getEmbeddedWebPlayerUrl());
				/*System.out.println("embed "+ video.getEmbeddedWebPlayerUrl());
				System.out.println("emnormal "+ video.getWebPlayerUrl());
				System.out.println("normal "+video.getEmbeddedWebPlayerUrl().substring(0,video.getEmbeddedWebPlayerUrl().lastIndexOf("v/"))+"watch?v="+video.getEmbeddedWebPlayerUrl().substring(video.getEmbeddedWebPlayerUrl().lastIndexOf("/"),video.getEmbeddedWebPlayerUrl().length()));*/
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return urlList;
	}
}
