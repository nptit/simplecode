public class Main{
    public static void main (String[] args) {
        User user = new User();
        IFactory factory = new AccessFactory();
        IUser iuser = factory.createUser();
        iuser.insert(user);
        iuser.getUser(1);

        Department department = new Department();
        IDepartment idepartment = factory.createDepartment();
        idepartment.insert(department);
        idepartment.getDepartment(1);
    }
}
