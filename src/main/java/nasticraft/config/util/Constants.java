package nasticraft.config.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Constants {
	
	public Constants() {}
	
	
	public enum AccountStatus{
		REQESTED,ONLINE,BLOCKED
	}
	
	public String currentDate() {
		Date date = new Date();
		SimpleDateFormat dt1 = new SimpleDateFormat("dd-MM-yyyy");
		return dt1.format(date);
	}
	
}