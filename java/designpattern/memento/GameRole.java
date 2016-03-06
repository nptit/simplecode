/**
 * Originator 发起人
 */
public class GameRole{
    private String name;
    private int vitality;//血量
    private int attack;//攻击力
    private int defense;//防御力

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

    public void stateDisplay(){
        System.out.println("名字:" + this.name);
        System.out.println("血量:" + this.vitality);
        System.out.println("攻击力:" + this.attack);
        System.out.println("防御力:" + this.defense);
    }

    public void fightWithBoss(){
        this.name = "打的妈都不认识了";
        this.vitality = 0;
        this.attack = 0;
        this.defense = 0;
    }

    public void initState(){
        this.name = "小菜";
        this.vitality = 100;
        this.attack = 100;
        this.defense = 100;
    }

    public RoleStateMemento saveMemento(){
        return new RoleStateMemento(this.name, this.vitality, this.attack, this.defense);
    }

    public void recoveryMemento(RoleStateMemento roleStateMemento){
        this.name = roleStateMemento.getName();
        this.vitality = roleStateMemento.getVitality();
        this.attack = roleStateMemento.getAttack();
        this.defense = roleStateMemento.getDefense();
    }
}
