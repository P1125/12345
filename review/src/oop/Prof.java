package oop;
//교수
public class Prof extends Member {
	
	String dept;

	@Override  //상속받은 메서드를 재정의하는것. / Member에서 abstract사용해서 나에게 맞게 정의 
	public void sal() {
		System.out.println("교수급여");
	}

	@Override
	public void print() { // source -> implement에서 불러옴
		super.print();
		System.out.println("교수");
	}
	
	
	
	
}
