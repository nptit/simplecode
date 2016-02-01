public class ConcreteBuilder1 extends Builder{
    Product product = new Product();
    public void buildPartA(){
       product.add("partA"); 
    }
    public void buildPartB(){
        product.add("partB");
    }
    public Product getResult(){
        return product;
    }
}
