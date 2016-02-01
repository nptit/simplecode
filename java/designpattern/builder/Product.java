import java.util.List;
import java.util.ArrayList;

public class Product{
    List<String> list = new ArrayList<String>();
    public void add(String part){
        list.add(part);
    }

    public void show(){
        System.out.println("构成它的部件有:");
        for(String str:list){
            System.out.print(" " + str);
        }
        System.out.println();
    }
}
