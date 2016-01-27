public class Main{
    public static void main (String[] args) {
        Resume r1 = new Resume("张三");
        r1.setPersonalInfo("男","25");
        r1.setWorkExperience("2016-1-1", "xx公司");
        r1.display();

        Resume r2 = r1;
        r2.setWorkExperience("2016-2-2", "yy公司");
        r2.display();

        Resume r3 = r1;
        r3.setWorkExperience("2016-3-3", "zz公司");
        r3.display();
    }
}
