/**
 *浅克隆，只能复制基本数据类型，如果是引用类型复制后指向的是同一个对象，修改会互相影响
 * */
public class Resume implements Cloneable{
    private String name;
    private String age;
    private String sex;
    private WorkExperience work;

    public Resume(String name){
        this.name = name;
        this.work = new WorkExperience();
    }

    //个人信息
    public void setPersonalInfo(String sex, String age){
        this.sex = sex;
        this.age = age;
    }

    //工作经历
    public void setWorkExperience(String timeArea, String company){
        work.setTimeArea(timeArea);
        work.setCompany(company);
    }

    //显示
    public void display(){
        System.out.println("姓名:" + name + " 性别: " + sex + " 年龄: " + age);
        System.out.println("工作经历: " + work.getTimeArea() + " " + work.getCompany());
    }

    public Resume clone() throws CloneNotSupportedException{
        Resume r =  (Resume)super.clone();
        r.work = work.clone();
        return r;
    }
}
