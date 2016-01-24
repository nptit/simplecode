public class OperatorFactory{
    public static Operator createOperator(String operator){
        Operator oper = null;
        switch(operator){
            case "+":
                oper = new OperatorAdd();
                break;
            case "-":
                oper = new OperatorSub();
                break;
            case "*":
                oper = new OperatorMul();
                break;
            case "/":
                oper = new OperatorDiv();
                break;
            default:
                System.out.println("暂不支持此运算!!");
        }
        return oper;
    }
}
