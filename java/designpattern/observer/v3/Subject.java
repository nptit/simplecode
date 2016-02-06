/**
 * 抽象的通知者类
 * */
public interface Subject{
    void attach(Observer observer);
    void detach(Observer observer);
    void attentionTo();
    void setAction(String str);
    String getAction();
}
