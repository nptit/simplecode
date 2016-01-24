public class CashReturn extends CashSuper{
    private double condition = 0.0d;
    private double returns = 0.0d;

    public CashReturn(double condition, double returns){
        this.condition = condition;
        this.returns = returns;
    }

    public double acceptCash(double money){
        if(money >= condition){
            return money * (condition - returns)/condition; 
        }
        return money;
    }
}
