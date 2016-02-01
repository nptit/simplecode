public class Main{
    public static void main (String[] args) {
        Director director = new Director();
        ConcreteBuilder1 concreteBuilder1 = new ConcreteBuilder1();
        ConcreteBuilder2 concreteBuilder2 = new ConcreteBuilder2();

        director.construct(concreteBuilder1);
        Product product1 = concreteBuilder1.getResult();
        product1.show();

        director.construct(concreteBuilder2);
        Product product2 = concreteBuilder2.getResult();
        product2.show();
    }
}
