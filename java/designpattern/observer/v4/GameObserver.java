import java.util.Date;
public class GameObserver{

    private String name;

    public GameObserver(String name){
        this.name = name;
    }

    public void closeGameWindow(Date date){
        System.out.println(name + ", 别打游戏了, 请继续工作!");
    }
}
