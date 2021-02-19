package lamda;

public class ThreadTest {
	public static void main(String[] args) {
		// mulitask program
		
		Thread thread = new Thread(new Thread1());
		thread.start();//run 메서드 호출
		
		//무명클래스
		
		Thread thread2 = new Thread(new Runnable() {
			public void run() {
				for (int i = 2000; i < 2999; i++) {
					try {
						Thread.sleep(200);
					} catch (InterruptedException e) {
						e.printStackTrace();
					}
					System.out.println(i);
				}
			}} );
		thread2.start();
		
		//랃마식(클래스 선언과 객체 생성을 한번에) (== 무명클래스) 조건. 오버로딩메서드가 하나뿐일때만
		Thread thread3 = new Thread( // 넘겨줘야할 메서드값과 인수값
				() -> {
					for (int i = 3000; i < 3999; i++) {
						try {
							Thread.sleep(200);
						} catch (InterruptedException e) {
							e.printStackTrace();
						}
						System.out.println(i);
					}
				});
		thread3.start();
		
		
		
		
		for (int i = 1000; i < 1999; i++) {
			try {
				Thread.sleep(200);
			}catch (InterruptedException e) {
				e.printStackTrace();
			}
			System.out.println(i);
		}

	}

}
