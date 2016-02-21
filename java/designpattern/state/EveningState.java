public class EveningState extends State{
    public void writeProgram(Work w){
        if(w.isFinish()){
            w.setState(new RestState());
            w.writeProgram();
        }else{
            if(w.getHour() < 21){
                System.out.println("当前时间:" + w.getHour() + "加班啊，累死大爷了");
            }else{
                w.setState(new SleepingState());
                w.writeProgram();
            }
        }
    }
}
