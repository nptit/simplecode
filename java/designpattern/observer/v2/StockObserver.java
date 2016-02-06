public class StockObserver extends Observer{

    public StockObserver(String name, Secretary secretary){
        super(name, secretary);
    }

    public void update(){
        System.out.println(name + "," + secretary.getAction() + ", 别玩股票了, 请继续工作!");
    }
}
