import com.offline.*;
public class Main{
    public static void main (String[] args){
        User user = new User();
        IUser iuser = DataAccess.createUser();
        iuser.insert(user);
        iuser.getUser(1);

        Department department = new Department();
        IDepartment idepartment = DataAccess.createDepartment();
        idepartment.insert(department);
        idepartment.getDepartment(1);
    }
}
