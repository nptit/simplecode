public class SleepingState extends State{
    public void writeProgram(Work w){
            System.out.println("当前时间:" + w.getHour() + "不行了，睡着了");
    }
}
