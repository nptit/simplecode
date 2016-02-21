public class OracleUser implements IUser{

    public void insert(User user){
        System.out.println("insert user with Oracle");
    }
    public void getUser(int id){
        System.out.println("get user with Oracle id = " + id);
    }
}
