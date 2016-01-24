public class CashFactory{
    public static CashSuper createCash(String type){

        CashSuper cs = null;
        switch(type){
            case "正常收费": 
                cs = new CashNormal();
                break;
            case "打八折": 
                cs = new CashRebate(0.8);
                break;
            case "满300减100": 
                cs = new CashReturn(300.0,100.0);
                break;
            default:
                System.out.println();
        }
        return cs;
    }
}
