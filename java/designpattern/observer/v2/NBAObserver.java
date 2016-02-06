public class NBAObserver extends Observer{

    public NBAObserver(String name, Secretary secretary){
        super(name, secretary);
    }

    public void update(){
        System.out.println(name + "," + secretary.getAction() + ", 别看NBA了, 请继续工作!");
    }
}
