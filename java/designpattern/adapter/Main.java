public class Main{
    public static void main (String[] args) {
       //原始的请求方式
       Adaptee adaptee = new Adaptee();
       adaptee.specialRequest();

       //现在要修改一个请求的方法，但还要执行到原来的方法，并且不能修改原来的代码.
        Target target = new Adapter();
        target.request();
    }
}
