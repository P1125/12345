package oop;

import java.util.ArrayList;

/*
 * 다형성에서 가장중요한 특징
 * 1. 부모타입의 참조 변수가 자식 객체를 참조할 수 있다.
 * 2.메서드를 호출했을때 실행되는 메서드는 참조하는 객체의 메서드를 호출한다.
 * (실행결과가 다를 수 있다)
 */
public class OOPTest {

	public static void main(String[] args) {

		// 멤버를 선언하는건 다 담을 수 있다. 부모객체를 담은것.
		ArrayList<Member> list = new ArrayList<Member>();
		// 변수생성 부모클래스member의 참조변
		Member member;

		// 부모타입의 참조변수가 자식을 참조할수있다.
		member = new Prof();
		member.setName("김유신"); // 캡슐화 했다.
//		member.print(); //오버라이딩한것
//		member.sal();
		list.add(member);

		// 코드는 같지만 가르키는 대상에따라 실행되는게 다르다 - 다형성
		member = new Emp();
		member.setName("홍길동");
//		member.print(); // 상속받은것
//		member.sal();
		list.add(member);

		// 확장 for문
//		for(Member m : list) {
//			m.sal();
//			m.print();
//		}
//		
//		//일반 for문
//		for(int i=0; i < list.size(); i++ ) {
//			Member m = list.get(i);
//			m.sal();
//			m.print();
//			
//		}

//		long a = 10;
//		int b = (int)a;
		
		for (Member m : list) {
			m.sal();
			m.print();
			if (m instanceof Emp) {
				// 객체간의(class간의) 형변환은 부모 자식간에만 가능하다.
				((Emp)m).meth(); // 다운 캐스팅 (형변환) 
			}

		}

	}

}
