/**
 * 代理模式: 
*/
public class Main{
    public static void main (String[] args) {
        //有一个姑娘叫韩梅梅
        MM mm = new MM("韩梅梅");
        //有一个boy叫李雷
        Pursuit pursuit = new Pursuit("李雷");
        //李雷想追韩梅梅,but韩梅梅不认识李雷
        pursuit.setMM(mm);

        //so找一个代理，代理认识李雷和韩梅梅
        Proxy proxy = new Proxy(pursuit, mm);

        //托代理帮忙送东西
        proxy.giveDolls();
        proxy.giveFlowers();
    }
}
