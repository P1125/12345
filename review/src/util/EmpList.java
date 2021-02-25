package util;

import java.util.ArrayList;


public class EmpList {
	ArrayList<Emp> list;
	public EmpList() {
		list = new ArrayList<>();
	}


//추가
	public void addEmp(Emp emp) {
		list.add(emp);
	}
//해당사원 이름조회 
	public String getName(int index) {
		String name = "";
		
		name = list.get(index).name;
		
		return name;
		
	}
//삭제
	public void delEmp(int index) {
		 list.remove(index);
	}
//전체 이름 출력
//	public void getNames() {
//		for(Emp e :list)
//			System.out.println(e.name); //확장 for문
		
	public void getNameStr(){
		String nameList = null;
		for(int i=0; i < list.size() ; i++) {
			nameList = list.get(i).name;
			System.out.println(nameList);
		}
	}

	//전체이름만 리턴  String받아서 출력 - 과제 

//	public String getNameStr() {
//
//		for(int i=1; i < list ; i++) {
//		}
//		return "names";
//	}
	
	//list 조회
	public ArrayList<Emp> getList(){
		
		return list;
		
	}
	
	
}


