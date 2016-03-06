/**
 * memento 备忘录
 */
public class RoleStateMemento{
    private String name;
    private int vitality;//血量
    private int attack;//攻击力
    private int defense;//防御力

    public RoleStateMemento(String name, int vitality, int attack, int defense){
        this.name = name;
        this.vitality = vitality;
        this.attack = attack;
        this.defense = defense;
    }

    public void setName(String name){
        this.name = name;
    }
    public String getName(){
        return name;
    }
    public void setVitality(int vitality){
        this.vitality = vitality;
    }
    public int getVitality(){
        return vitality;
    }
    public void setAttack(int attack){
        this.attack = attack;
    }
    public int getAttack(){
        return attack;
    }
    public void setDefense(int defense){
        this.defense = defense;
    }
    public int getDefense(){
        return defense;
    }

}
