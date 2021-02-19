package oopInterface;

//모든게 상수구현이다. / 상수와 추상메서드
//개발표준 : 메서드(기능)
public interface Drawable {

	String color = "black";
	
	void draw(); // public abstract 생략 되어있다. 모든 interface는 추상이다 생략가능

}