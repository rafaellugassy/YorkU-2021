package labA;

public class LabA2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int i = Integer.parseInt(args[0]);
		System.out.print("The hex output: "+ Integer.toHexString(i)
				+ "\nThe reverse input: " + Integer.toHexString(Integer.reverse(i))
				+ "\nThe reverse byte input: " + Integer.toHexString(Integer.reverseBytes(i)));

	}
}
