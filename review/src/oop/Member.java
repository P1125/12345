package oop;

public abstract class Member {

	//은닉화 , 캡슐화
	private String name;
	String id;

	
	//getter : read기능
	//setter : write

	
	
	public Member() {
		super();
	}

	public void setName(String name) {
		this.name = name;
	}

	public abstract void sal() ;  //추상클래스하나라도 들어가면 맨위에도 추가하기

	public void print() {
		System.out.println(name);
	}

}