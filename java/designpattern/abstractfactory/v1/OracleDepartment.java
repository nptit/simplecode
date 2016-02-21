public class OracleDepartment implements IDepartment{
    public void insert(Department department){
        System.out.println("insert department with Oracle");
    }
    public void getDepartment(int id){
        System.out.println("get department with Oracle id = " + id);
    }
}
