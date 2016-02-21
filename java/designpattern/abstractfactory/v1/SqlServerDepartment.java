public class SqlServerDepartment implements IDepartment{
    public void insert(Department department){
        System.out.println("insert department with SqlServer");
    }
    public void getDepartment(int id){
        System.out.println("get department with SqlServer id = " + id);
    }
}
