import java.util.Date;
public class NBAObserver{

    private String name;

    public NBAObserver(String name){
        this.name = name;
    }

    public void closeNBADirectSeeding(Date date){
        System.out.println(name + ", 别看NBA了, 请继续工作!");
    }
}
