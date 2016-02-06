public class StockObserver extends Observer{

    public StockObserver(String name, Subject subject){
        super(name, subject);
    }

    public void update(){
        System.out.println(name + "," + subject.getAction() + ", 别玩股票了, 请继续工作!");
    }
}
