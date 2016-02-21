public class SqlServerUser implements IUser{
    public void insert(User user){
        System.out.println("insert user with SqlServer");
    }
    public void getUser(int id){
        System.out.println("get user with SqlServer id = " + id);
    }
}
