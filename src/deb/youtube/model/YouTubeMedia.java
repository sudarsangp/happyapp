package deb.youtube.model;

public class YouTubeMedia {
	private String location;
	private String type;

	
	public YouTubeMedia(String location, String type) {
		super();
		this.location = location;
		this.type = type;
	}


	public String getLocation() {
		return location;
	}


	public void setLocation(String location) {
		this.location = location;
	}


	public String getType() {
		return type;
	}


	public void setType(String type) {
		this.type = type;
	}


	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
