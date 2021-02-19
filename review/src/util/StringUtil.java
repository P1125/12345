package util;

public class StringUtil {
	// 1.String -> int
//	public static int toInt(String s) {   // Integer -> int 
//		if (s == null)
//			return -1;
//		return Integer.parseInt(s);
//	}

//	//2. int ->string
//	public static String toStr(int s) {
//		
//		return Integer.toString(s);
// }//메소드만드는방법. 호출
	/**
	 * 파일명에서 확장자를 추출
	 * 
	 * @param pathname 파일명
	 * @return 확장자
	 */

	// 3. string -> 확장자 :LastindexOf, substr

//	public static String getExt(String pathname) {
//		String result ="";
//		//to do  . 다음부터 찾아야해서 +1
//			result = s.substring(s.lastIndexOf(".") + 1);
//		return result;
//	}

//	public static String getFilename(String pathname) {
//		String result = "";
//		return result;
//	}

	/**
	 * 파일명에서 확장자를 추출
	 * 
	 * @param pathname 경로명 "c:/img/item/p01.jpg
	 * @return 경로 c:/img/item
	 */
	// 4. string -> path, 파일명

	public static String getFileName(String s) {
		String result = "";
		if (s.lastIndexOf(".") != -1) {
			result = s.substring(s.lastIndexOf("/") + 1);
		} else {
			result = "파일 찾을수없음";
		}
		return result;
	}

	public static String getPath(String s) {
		String result = "";
		if (s.lastIndexOf(".") != -1) {
			result = s.substring(0, s.lastIndexOf("/"));
		} else {
			result = "경로 못찾음";
		}

		return result;
	}

}
