public class Main{
    public static void main (String[] args) {
        //小秘书
        Subject secretary = new Secretary();
        //设置提醒暗号
        secretary.setAction("Boss来了");

        Subject boss = new Boss();
        boss.setAction("我胡汉三回来了");

        //程序猿
        Observer it1 = new StockObserver("李狗蛋", secretary);
        Observer it2 = new NBAObserver("狗剩儿", boss);

        secretary.attach(it1);
        boss.attach(it2);

        //通知
        secretary.attentionTo();
        boss.attentionTo();
    }
}
