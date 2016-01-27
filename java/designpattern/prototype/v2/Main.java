public class Main{
    public static void main (String[] args) throws CloneNotSupportedException{
        Resume r1 = new Resume("张三");
        r1.setPersonalInfo("男","25");
        r1.setWorkExperience("2016-1-1", "xx公司");

        Resume r2 = r1.clone();
        r2.setWorkExperience("2016-2-2", "yy公司");

        Resume r3 = r1.clone();
        r3.setWorkExperience("2016-3-3", "zz公司");
        r1.display();
        r2.display();
        r3.display();
    }
}
