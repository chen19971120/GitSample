
public class MainApp {

	public static void main(String[] args) {
		System.out.println("1st Version");
		Math math = new Math();
		System.out.println(math.add(1, 2));
	}
}

class Math {
	public int add(int a, int b) {
		return a + b;
	}
}