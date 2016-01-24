/*************************************************************************
    > File Name: Copy.java
    > Author: ma6174
    > Mail: ma6174@163.com 
    > Created Time: Tue 24 Nov 2015 08:59:06 PM CST
 ************************************************************************/
import java.io.*;
public class Copy{
	public static void main(String[] args) throws Exception{

//		BufferedReader br = new BufferedReader(new FileReader("old"));
//		BufferedWriter bw = new BufferedWriter(new FileWriter("new"));	
//		String read = br.readLine();
//		while(read != null){
//			bw.write(read);
//			bw.newLine();
//			read = br.readLine();
//		}
//		bw.flush();
		InputStream bis = new BufferedInputStream(new FileInputStream("old"));
		byte[] b = new byte[bis.available()];
		bis.read(b);
		OutputStream bos = new BufferedOutputStream(new FileOutputStream("new"));
		bos.write(b);
		bos.flush();
		bis.close();
		bos.close();
//		for(byte bb:b){
//			System.out.print(bb);
//		}
	//	BufferedOutputStream bos = new BufferedOutputStream();
	}
}
