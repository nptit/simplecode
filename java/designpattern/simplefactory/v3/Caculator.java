import java.util.Scanner;
public class Caculator{
    public static void main (String[] args) {
       Scanner sc = new Scanner(System.in);
       System.out.println("请输入操作数一:");
       double numberA = sc.nextDouble();
       System.out.println("请输入操作符:");
       String operator = sc.next();
       System.out.println("请输入操作数二:");
       double numberB = sc.nextDouble();
       Operator oper = OperatorFactory.createOperator(operator);
       oper.setNumberA(numberA);
       oper.setNumberB(numberB);
       double result = oper.getResult();
       System.out.println(result);

    }
}
