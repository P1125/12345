package util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {
	/**
	 * String -> Date SimpleDateFormat.parse
	 */
	public static Date toDate(String date) {
		Date result = null;

		return result;
	}

	/**
	 * Date -> String SimpleDateFormat.format
	 */

	public static String toStr(Date date) {
		String result = null;

		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM");
		result = dateFormat.format(date);

		return result;
	}

	/**
	 * Date를 주어진 포맷대로 스트링 변환 Date -> String SimpleDateFormat.format
	 */
	public static String toStr(Date date, String format) {
		String result = null;

		SimpleDateFormat dateFormat = new SimpleDateFormat(format);
		result = dateFormat.format(date);

		return result;
	}

}
