package GUI;
import java.awt.*;
public class TenButtons_me {
	public static void main(String[] args){
		
		Frame f = new Frame("TenButtons");		
		Button b1 = new Button("b1");
		Button b2 = new Button("b2");
		Button b3 = new Button("b3");
		Button b4 = new Button("b4");
		Button b5 = new Button("b5");
		Button b6 = new Button("b6");
		Button b7 = new Button("b7");
		Button b8 = new Button("b8");
		Button b9 = new Button("b9");
		Button b10 = new Button("b10");
		Panel p1 = new Panel(new GridLayout(2,2));
		Panel p2 = new Panel(new GridLayout(2,1));
		f.setLayout(new GridLayout(2,3));
		f.add(b1);
		f.add(p1);
		f.add(b4);
		f.add(b5);
		f.add(p2);
		f.add(b10);
		p1.add(b2);
		p1.add(b3);
		p2.add(b6);
		p2.add(b7);
		p2.add(b8);
		p2.add(b9);
		f.pack();
		f.setVisible(true);
	}
}

