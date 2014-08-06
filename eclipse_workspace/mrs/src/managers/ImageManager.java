package managers;

import java.awt.Image;
import java.io.File;
import javax.swing.ImageIcon;

public class ImageManager {

	public static final int ADD_FILES = 0;
	public static final int DATE_PICKER = 1;
	public static final int LOGO = 2;
	public static final int REMOVE_FILES = 3;
	
	private static final String IMAGES_DIRECTORY = File.separator + "images";
	
	public static ImageIcon getImageIcon(int imageId) {
		String path = getPath(imageId);
		return new ImageIcon(ImageManager.class.getClassLoader().getResource(path));
	}
	
	public static ImageIcon getImageIcon(int imageId, int width, int height) {
		ImageIcon image = getImageIcon(imageId);
		return new ImageIcon(image.getImage().getScaledInstance(width, height, Image.SCALE_SMOOTH));
	}
	
	private static String getPath(int imageId) {
		String path = IMAGES_DIRECTORY + File.separator;
		
		switch (imageId) {
			case ADD_FILES : {
				path += "add_files.png";
				break;
			}
			
			case DATE_PICKER : {
				path += "date_picker.gif";
				break;
			}
			
			case LOGO : {
				path += "logo.png";
				break;
			}
			
			case REMOVE_FILES : {
				path += "remove_files.png";
				break;
			}
		}
		
		return path;
	}
	
}
