public class MulFactory implements IFactory{
    public Operator createOperator(){
        return new OperatorMul();
    }
}
