/**
 * 所有观察者的父类
 * */
public class Observer{
    protected String name;
    protected Subject subject;

    public Observer(String name, Subject subject){
        this.name = name;
        this.subject = subject;
    }

    public void update(){

    }
}
