import java.text.SimpleDateFormat;
import java.util.Date;

public class DateTime {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
	// /*	Date date= new Date();
  //System.out.println(date.toString());
	//} */
	
	Date date = new Date();
	   //printing date and time
	  SimpleDateFormat ft = new SimpleDateFormat ("E yyyy.MM.dd 'at' hh:mm:ss a zzz");
	  
	  System.out.println(date);
	  //printing date
	  System.out.println("Current Date: " + ft.format(date));
	  
	  //commit 3
	  
	  //commit 4
	  
	  //commit 5
	  
	  //commit 10
	}
}

