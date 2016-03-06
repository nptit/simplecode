/**
 * 原始的请求借口，客户端需要Adaptee对象才能请求这个方法
 */
public class Adaptee{
    public void specialRequest(){
        System.out.println("原来写好的请求方式！");
    }
}
