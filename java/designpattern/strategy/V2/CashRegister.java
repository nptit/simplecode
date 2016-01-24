import java.util.Scanner;
public class CashRegister{
    public static void main (String[] args) {
        double total = 0.0d;
        Scanner sc = new Scanner(System.in);
        while(true){
            System.out.println("请输入quit退出输入:");
            if(sc.next().equals("quit")) break;
            System.out.println("请输入商品单价:");
            double singlePrice = sc.nextDouble();
            System.out.println("购买数量:");
            int number = sc.nextInt();
            System.out.println("请输入促销信息:");
            total = total + CashFactory.createCash(sc.next()).acceptCash(singlePrice * number);
        }
        System.out.println("商品总价:" + total);
    }
}
