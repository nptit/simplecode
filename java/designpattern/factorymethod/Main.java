public class Main{
    public static void main (String[] args) {
        IFactory factory = new AddFactory();
        Operator oper = factory.createOperator();
        oper.setNumberA(10);
        oper.setNumberB(20);
        double dou = oper.getResult();
        System.out.println(dou);

    }
}
