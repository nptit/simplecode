public class Pursuit implements IGiveGift{
    private String name;
    MM mm = null;
    public Pursuit(String name){
        this.name = name;
    }
    public void setName(String name){
        this.name = name;
    }
    public String getName(){
        return this.name;
    }
    public void setMM(MM mm){
        this.mm = mm;
    }
    public void giveDolls(){
        System.out.println("I Love You " + this.mm.getName() + " ,送你洋娃娃");
    }
    public void giveFlowers(){
        System.out.println("I Love You " + this.mm.getName() + " ,送你花");
    }
}
