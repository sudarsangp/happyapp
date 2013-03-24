package com.deb.happiness;

import java.util.ArrayList;
import java.util.List;

import twitter4j.Paging;
import twitter4j.Query;
import twitter4j.QueryResult;
import twitter4j.Status;
import twitter4j.Twitter;
import twitter4j.TwitterException;
import twitter4j.TwitterFactory;
import twitter4j.conf.ConfigurationBuilder;

public class InPursuitOfHappiness {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		InPursuitOfHappiness happiness = new InPursuitOfHappiness();
		List<String> happyTweets = happiness.geTweets("Funny"); 
		System.out.println("======= Funny ======= ");
		for (String each: happyTweets) {
			System.out.println(each);
		}
		
		System.out.println("======= Happiness ======= ");
		happyTweets = happiness.geTweets("Happy quote"); 
		for (String each: happyTweets) {
			System.out.println(each);
		}

	}

	public List<String> geTweets(String topics) {
		ConfigurationBuilder cb = new ConfigurationBuilder();
		cb.setDebugEnabled(true)
		  .setOAuthConsumerKey("0B420KCSCevnrcDKcColQ")
		  .setOAuthConsumerSecret("72Cx3GrJAF3EOLcbHNpOxUBvOvanzMUanDF8MvKNIw")
		  .setOAuthAccessToken("89641332-v6wytyV7bQZrORT0rCjr0QCaxy9vI9Aqk156lWWLw")
		  .setOAuthAccessTokenSecret("k59GlmEom04TUeH0dftCwLrR7TyEIqfXLK6KNW2Hw");
		
		List<String> tweetList = new ArrayList<String>(800);
		
		Paging paging = new Paging();
		paging.setCount( 800 );
		
		Twitter twitter = new TwitterFactory(cb.build()).getInstance();
		
		
		Query query = new Query(topics);
		
		try {
			QueryResult result = twitter.search(query);
			
			List<Status> responseList = result.getTweets();
			for (Status eachStatus : responseList) {
				tweetList.add(eachStatus.getText());
			}
		} catch (TwitterException e) {
			e.printStackTrace();
		}
		return tweetList;
	}
}
