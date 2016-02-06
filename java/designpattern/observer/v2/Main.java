public class Main{
    public static void main (String[] args) {
        //小秘书
        Secretary secretary = new Secretary();
        //设置提醒暗号
        secretary.setAction("Boss来了");

        //程序猿
        Observer it1 = new StockObserver("李狗蛋", secretary);
        Observer it2 = new NBAObserver("狗剩儿", secretary);

        secretary.attach(it1);
        secretary.attach(it2);

        //通知
        secretary.attentionTo();
    }
}
