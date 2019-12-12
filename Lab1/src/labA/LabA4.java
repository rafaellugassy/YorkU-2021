package labA;

public class LabA4 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int x = Integer.parseInt(args[0]);
		int z1 = x << 1;    // logical left shift 
		int z2 = x >>> 1;   // logical right shift 
		int z3 = x >> 1;    // arithmetic right shift 
		System.out.print("x: " + Integer.toBinaryString(x)
				+ "\nz = x << 1: " + Integer.toBinaryString(z1)
				+ "\nz = x >>> 1: " + Integer.toBinaryString(z2)
				+ "\nz = x >> 1: " + Integer.toBinaryString(z3));

	}
}
