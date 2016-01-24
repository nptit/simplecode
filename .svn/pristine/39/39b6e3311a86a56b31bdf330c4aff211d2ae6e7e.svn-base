package GUI;
import java.awt.*;

public class TestMultiFrame {
    public static void main(String args[]) {
        MyFrame6 f1 = 
            new MyFrame6(100,100,200,200,Color.BLUE);
        MyFrame6 f2 = 
            new MyFrame6(300,100,200,200,Color.YELLOW);
        MyFrame6 f3 = 
            new MyFrame6(100,300,200,200,Color.GREEN);
        MyFrame6 f4 = 
            new MyFrame6(300,300,200,200,Color.MAGENTA);
    }
}




class MyFrame6 extends Frame{
    static int id = 0;
    MyFrame6(int x,int y,int w,int h,Color color){
        super("MyFrame " + (++id));
        setBackground(color);
        setLayout(null);
        setBounds(x,y,w,h);
        setVisible(true);
    }
}
