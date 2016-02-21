public class Work{
    private int hour;//当前工作时间
    private State current;
    public Work(){
        //上午九点开始上班.
        current = new ForenoonState();
    }
    public int getHour(){
        return this.hour;
    }
    public void setHour(int hour){
        this.hour = hour;
    }
    private boolean finish = false;
    public boolean isFinish(){
        return this.finish;
    }
    public void setFinish(boolean finish){
        this.finish = finish;
    }
    public void setState(State state){
        this.current = state;
    }
    public void writeProgram(){
        //一般的写法，在该方法中做分支判断，不同的时间对应不同工作状态.
        //if(hour < 12) print:精神百倍
        current.writeProgram(this);
    }
}
