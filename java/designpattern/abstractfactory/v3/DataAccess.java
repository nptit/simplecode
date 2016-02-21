import com.offline.*;
import java.io.*;
import java.util.Properties;
public class DataAccess{
    //这里可以使用反射初始化db变量
    // public static final String db = "Oracle";
    public static String db = "";
    static {
        Properties prop = new Properties();
        InputStream in = DataAccess.class.getResourceAsStream("/db.properties");
        try{
            prop.load(in);
            db = prop.getProperty("db");
        }catch(Exception e){
            e.printStackTrace();
        }
    }

    public static IUser createUser(){
        IUser result = null;
        String className = "com.offline." + db + "User";
        //result = new OracleUser();
        try {
            result = (IUser)Class.forName(className).newInstance();
        }catch(Exception e){
            e.printStackTrace();
        }
        return result;
    }

    public static IDepartment createDepartment(){
        IDepartment result = null;
        String className = "com.offline." + db + "Department";
        try {
            result = (IDepartment)Class.forName(className).newInstance();
        }catch(Exception e){
            e.printStackTrace();
        }
        return result;
    }
}
