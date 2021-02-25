package util;

public class EmpListTest {
	public static void main(String[] args) {
		EmpList emplist = new EmpList();
		emplist.addEmp(new Emp(1,"홍길동","인사"));
		emplist.addEmp(new Emp(2,"김기자","기획"));
		emplist.addEmp(new Emp(3,"김유신","개발"));
		//첫번째 사원의  이름을 알고싶을때
	//	System.out.println(emplist.getName(0));
		//첫번째 사원 삭제
	//	emplist.delEmp(0);
		
		//사원 이름만 출력
	//	emplist.getNames();
		emplist.getNameStr();
	
		
	//	System.out.println(emplist.getNames());
		//전체 리스트 출력
	//	System.out.println(emplist.getNameStr());
		
		
		//System.out.println(emplist.getList());
		
		
	//	System.out.println(emplist.getName(1));
		
		
	}
}
