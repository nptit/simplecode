public class AddFactory implements IFactory{
    public Operator createOperator(){
        return new OperatorAdd();
    }
}
