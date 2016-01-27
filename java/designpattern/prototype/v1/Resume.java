public class Resume{
    private String name;
    private String age;
    private String sex;
    private String timeArea;
    private String company;

    public Resume(String name){
        this.name = name;
    }

    //个人信息
    public void setPersonalInfo(String sex, String age){
        this.sex = sex;
        this.age = age;
    }

    //工作经历
    public void setWorkExperience(String timeArea, String company){
        this.timeArea = timeArea;
        this.company = company;
    }

    //显示
    public void display(){
        System.out.println("姓名:" + name + " 性别: " + sex + " 年龄: " + age);
        System.out.println("工作经历: " + timeArea + " " + company);
    }
}
