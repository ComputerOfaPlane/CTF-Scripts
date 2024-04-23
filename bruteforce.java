import java.util.*;
import java.io.*;
class bruteforce
{
	public static void main(String[] args) {
		String s="0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
		for (int i=0;i<s.length() ;i++ ) {
			char chi=s.charAt(i);

			for (int j=0;j<s.length() ;j++ ) {
				char chj=s.charAt(j);

				for (int k=0;k<s.length() ;k++ ) {
					char chk=s.charAt(k);

					for (int l=0;l<s.length() ;l++ ) {
						char chl=s.charAt(l);

						String tmp=""+chi+chj+chk+chl;
						System.out.println(tmp);
					}
				}
			}
		}
		System.out.println("done!!");
	}
}
// max time taken 2 mins 37 seconds