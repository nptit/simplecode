public class Main{
    public static void main (String[] args) {
        System.out.println("student1answer:");
        Paper student1answer = new Student1Answer();
        student1answer.question1();
        student1answer.question2();
        student1answer.question3();

        System.out.println("student2answer:");
        Paper student2answer = new Student2Answer();
        student2answer.question1();
        student2answer.question2();
        student2answer.question3();
    }
}
