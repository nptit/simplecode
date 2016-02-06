public class StockObserver{
    private String name;
    private Secretary secretary;

    public StockObserver(String name, Secretary secretary){
        this.name = name;
        this.secretary = secretary;
    }

    public void update(){
        System.out.println(name + "," + secretary.getAction() + ", 请继续工作!");
    }
}
