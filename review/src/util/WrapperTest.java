package util;

import java.util.Date;

public class WrapperTest {

	public static void main(String[] args) {
//	1	int result = StringUtil.toInt("1234");
//		System.out.println(result);
//	2	String s = StringUtil.toStr(12345);
//		System.out.println(s);
		//파일명에서 확장자만 추출
//		String ext = StringUtil.getExt("a.b.hwp");
//		System.out.println(ext);
		
//		Date result = DateUtil.toDate("2021-02-10");
//		System.out.println(result);
//		
//		String str = DateUtil.toStr(new Date()); 
//		System.out.println(str);
		
		
		//중복정의 오버로딩
		//오버라이딩 상속받은걸 재정의
		// API 참고하기
		String  str2 = DateUtil.toStr(new Date(),"E-D"); //요일, 1년중 몇일째
		System.out.println(str2);
		
		//날짜 계산
		
//		Date today = new Date();
//		Date meetDay = DateUtil.addDay(today, 100);
//		System.out.println(DateUtil.toStr(meetDay));
//		
		
	}

}
