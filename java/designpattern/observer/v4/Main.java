import java.util.Date;
public class Main{
    public static void main (String[] args) {
        //小秘书
        Subject secretary = new Secretary();

        Subject boss = new Boss();

        StockObserver it1 = new StockObserver("李狗蛋");
        NBAObserver it2 = new NBAObserver("狗剩儿");
        GameObserver it3  = new GameObserver("三炮");

        secretary.attach(it1,"closeStockMarket",new Date());
        boss.attach(it2,"closeNBADirectSeeding", new Date());
        secretary.attach(it3, "closeGameWindow", new Date());

        //通知
        secretary.attentionTo();
        boss.attentionTo();
    }
}
