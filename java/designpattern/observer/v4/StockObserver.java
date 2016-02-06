import java.util.Date;
public class StockObserver{

    private String name;

    public StockObserver(String name){
        this.name = name;
    }

    public void closeStockMarket(Date date){
        System.out.println(name + ", 别玩股票了, 请继续工作!");
    }
}
