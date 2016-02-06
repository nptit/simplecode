public class NBAObserver extends Observer{

    public NBAObserver(String name, Subject subject){
        super(name, subject);
    }

    public void update(){
        System.out.println(name + "," + subject.getAction() + ", 别看NBA了, 请继续工作!");
    }
}
