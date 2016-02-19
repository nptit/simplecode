public class OracleFactory implements IFactory{
    public IUser createUser(){
        return new OracleUser();
    }
    public IDepartment createDepartment(){
        return new OracleDepartment();
    }
}
