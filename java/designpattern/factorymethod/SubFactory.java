public class SubFactory implements IFactory{
    public Operator createOperator(){
        return new OperatorSub();
    }
}
