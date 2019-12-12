package labA;

public class LabA5 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int x = Integer.parseInt(args[0]);
		int z = x << 21;    // make bit #10 the MSb 
		z = z >>> 31;       // make bit #10 the LSb 
		
		int mask = 1024; 
		int y = x & mask; 
		y = y >> 10; 
		
		System.out.print("z: " + z
				+ "\ny: " + y);
		

	}
}
