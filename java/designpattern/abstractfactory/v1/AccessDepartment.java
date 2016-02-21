public class AccessDepartment implements IDepartment{
    public void insert(Department department){
        System.out.println("insert department with Access");
    }
    public void getDepartment(int id){
        System.out.println("get department with Access id = " + id);
    }
}
