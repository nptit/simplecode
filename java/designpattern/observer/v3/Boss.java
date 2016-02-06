import java.util.ArrayList;
import java.util.List;
public class Boss implements Subject{

    private List<Observer> observers = new ArrayList<Observer>();
    private String action;

    public void attach(Observer observer){
        observers.add(observer);
    }

    public void detach(Observer observer){
        observers.remove(observer);
    }

    public void setAction(String action){
        this.action = action;
    }

    public String getAction(){
        return action;
    }

    public void attentionTo(){
        for(Observer temp: observers){
            temp.update();
        }
    }
}
