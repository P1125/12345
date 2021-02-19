package oopInterface;


public class Rect 
		extends Shape // 속성 상속, 메서드 / 단일상속
		implements Drawable, Movable// 추상 메서드 메서드 동작,기능 상속 / 다중상속 가능
		{
	
	
	@Override
	public void draw() {
		System.out.println("사각형 그리기");
	}

	@Override
	public void move() {
		System.out.println("사각형 이동");
	}
	
}
