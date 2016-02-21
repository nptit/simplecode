public class DataAccess{
    //这里可以使用反射初始化db变量
    public static final String db = "Oracle";

    public static IUser createUser(){
        IUser result = null;
        switch(db) {
            case "Oracle":
                result = new OracleUser();
                break;
            case "SqlServer":
                result = new SqlServerUser();
                break;
            case "Access":
                result = new AccessUser();
                break;
        }
        return result;
    }

    public static IDepartment createDepartment(){
        IDepartment result = null;
        switch(db) {
            case "Oracle":
                result = new OracleDepartment();
                break;
            case "SqlServer":
                result = new SqlServerDepartment();
                break;
            case "Access":
                result = new AccessDepartment();
                break;
        }
        return result;
    }
}
