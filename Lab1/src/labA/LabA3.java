package labA;

public class LabA3 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int x = Integer.parseInt(args[0]), y = Integer.parseInt(args[1]);
		int z1 = x & y ;  // and 
		int z2 = x | y  ; // or 
		int z3 = x ^ y ;  // xor 
		int z4 = ~x   ;   // not 
		System.out.print("x = " + Integer.toBinaryString(x)
				+ "\ny = " + Integer.toBinaryString(y)
				+ "\nz = x & y: " + z1
				+ "\nz = x | y: " + z2
				+ "\nz = x ^ y: " + z3
				+ "\nz = ~x: " + z4);

	}
}
