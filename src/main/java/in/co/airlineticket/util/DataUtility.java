package in.co.airlineticket.util;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

public class DataUtility {

	public static final String APP_DATE_FORMAT = "dd/MM/yyyy";

	private static final SimpleDateFormat formatter = new SimpleDateFormat(APP_DATE_FORMAT);

	public static int getInt(String val) {
		if (DataValidator.isInteger(val)) {
			return Integer.parseInt(val);
		} else {
			return 0;
		}
	}

	public static long getLong(String val) {
		if (DataValidator.isLong(val)) {
			return Long.parseLong(val);
		} else {
			return 0;
		}
	}

	public static Date getDate(String val) {
		Date date = null;
		try {
			date = formatter.parse(val);
		} catch (Exception e) {

		}
		return date;
	}

	public static String getDateString(Date date) {

		try {
			if (date != null) {
				return formatter.format(date);
			} else {
				return "";
			}
		} catch (Exception e) {
			return "";
		}

	}

	 public static String generatePassword() {
	      String capitalCaseLetters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	      String lowerCaseLetters = "abcdefghijklmnopqrstuvwxyz";
	      String specialCharacters = "!@#$";
	      String numbers = "1234567890";
	      String combinedChars = capitalCaseLetters + lowerCaseLetters + specialCharacters + numbers;
	      //String pass=null;
	      Random random = new Random();
	      int length=6;
	      char[] password = new char[length];

	      password[0] = lowerCaseLetters.charAt(random.nextInt(lowerCaseLetters.length()));
	      password[1] = capitalCaseLetters.charAt(random.nextInt(capitalCaseLetters.length()));
	      password[2] = specialCharacters.charAt(random.nextInt(specialCharacters.length()));
	      password[3] = numbers.charAt(random.nextInt(numbers.length()));
	   
	      for(int i = 4; i< length ; i++) {
	         password[i] = combinedChars.charAt(random.nextInt(combinedChars.length()));
	         
	      }
	      return String.copyValueOf(password);
	   }

	// Method to generate random Invoice number
	public static long getRandom() {
		Random rand = new Random();
		return rand.nextInt(100000);
	}
}
