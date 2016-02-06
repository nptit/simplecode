import java.util.ArrayList;
import java.util.List;
public class Secretary{
    //同事列表
    private List<Observer> observers = new ArrayList<Observer>();
    private String action;

    //增加观察者，就是那些需要盯着的同事.
    public void attach(Observer observer){
        observers.add(observer);
    }

    //通知注册进来的观察者
    public void attentionTo(){
        for (Observer temp : observers){
            temp.update();
        }
    }

    public void setAction(String action){
        this.action = action;
    }

    public String getAction(){
        return action;
    }
}
