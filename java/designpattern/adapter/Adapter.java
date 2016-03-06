public class Adapter implements Target{
    //其实我也不清楚加这个接口有什么必要，难道是程序复杂时候比较灵活？
    private Adaptee adaptee = new Adaptee();
    public void request(){
        System.out.println("普通请求");
        //这里为什么不直接 new Adaptee().specialRequest();
        adaptee.specialRequest();
    }
}
