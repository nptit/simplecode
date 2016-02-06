/**
 * 所有观察者的父类
 * */
public class Observer{
    protected String name;
    protected Secretary secretary;

    public Observer(String name, Secretary secretary){
        this.name = name;
        this.secretary = secretary;
    }

    public void update(){

    }
}
