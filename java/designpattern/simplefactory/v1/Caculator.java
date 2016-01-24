/**
 *
 * v1 普通面向过程方式实现计算器
 **/
import java.util.Scanner;
public class Caculator{
    public static void main (String[] args) {
       Scanner sc = new Scanner(System.in);
       System.out.println("请输入第一个数字:"); 
       int number1 = sc.nextInt(); 
       System.out.println("请输入运算符:");
       char operator = sc.next().charAt(0);//nextLine会溢出，怎么回事?
       System.out.println("请输入第二个数字:");
       int number2 = sc.nextInt();

       int result = 0;
       switch(operator){
           case '+':
            result = number1+number2;
            break;
           case '-':
            result = number1 - number2;
            break;
           case '*':
            result = number1 * number2;
            break;
           case '/':
            result = number1 / number2;
            break;
           default:
            System.out.println("暂不支持该运算符！");
       }

       System.out.println("计算结果为:" + result);
    }
}
