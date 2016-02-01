public class ConcreteBuilder2 extends Builder{
    Product product = new Product();
    public void buildPartA(){
        product.add("partX");
    }
    public void buildPartB(){
        product.add("partY");
    }
    public Product getResult(){
        return product;
    }
}
