/**
 * 抽象的通知者类不希望依赖与抽象观察者
 * */
public abstract class Subject{
    private EventHandler eventHandler=new EventHandler();   

    public EventHandler getEventHandler() {

        return eventHandler;   
    }   
    public void setEventHandler(EventHandler eventHandler) {

        this.eventHandler = eventHandler;   
    }   

    // 增加需要帮忙放哨的
    public abstract void attach(Object object,String methodName,Object...args);   

    // 告诉所有要帮忙放哨的学生：老师来了   
    public abstract void attentionTo();   
}
