package labA;

public class LabA6 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int x = Integer.parseInt(args[0]);
		System.out.println("Before Change: " + Integer.toBinaryString(x));
		int mask1 = (int) Math.pow(2, 10);
		int mask2 = (int) Math.pow(2, 11);
		x = mask1 | x;
		x = x & ~mask2;
		System.out.print("After Change:  " + Integer.toBinaryString(x));
	}
}
