import java.util.ArrayList;
import java.util.List;
public class Secretary extends Subject{

    public void attach(Object object,String methodName,Object...args){
        this.getEventHandler().addEvent(object, methodName, args);
    }

    public void attentionTo(){
        System.out.println("secretary attentionTo:");
        try {
            this.getEventHandler().notifyX();
        }catch(Exception e){
            e.printStackTrace();
        }
    }
}
