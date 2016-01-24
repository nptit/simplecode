/*************************************************************************
    > File Name: Recursion.java
    > Author: ma6174
    > Mail: ma6174@163.com 
    > Created Time: Mon 23 Nov 2015 08:39:42 PM CST
 ************************************************************************/
public class Recursion{
	public static void main(String[] args){

		System.out.println(new Recursion().sum(3));
	}
	
	int sum(int n){
		if (n == 1 ){
			return 1;
		}
		
		return this.recursion(n) + sum(n -1);
	}

	int recursion(int n){
		if (n==1){
			return 1;
		}else
			return n * this.recursion(n-1);
	}
}
