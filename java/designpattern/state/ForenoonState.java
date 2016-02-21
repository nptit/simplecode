public class ForenoonState extends State{
    public void writeProgram(Work w){
        if(w.getHour() < 12){
            System.out.println("当前时间:" + w.getHour() + "上午工作，精神百倍");
        }else{
            w.setState(new NoonState());
            w.writeProgram();
        }
    }
}
