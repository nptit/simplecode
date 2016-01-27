public class DivFactory implements IFactory{
    public Operator createOperator(){
        return new OperatorDiv();
    }
}
