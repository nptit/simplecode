import java.lang.reflect.Method;   
import java.util.Date;   

public class Event {

    // 要执行方法的对象   
    private Object object;   
    // 要执行的方法名称   
    private String methodName;   
    // 要执行方法的参数   
    private Object[] params;   
    // 要执行方法的参数类型   
    private Class[] paramTypes;   

    public Event(){


    }   
    public Event(Object object,String methodName,Object...args){

        this.object=object;   
        this.methodName=methodName;   
        this.params=args;   
        contractParamTypes(this.params);   
    }   
    // 根据参数数组生成参数类型数组   
    private void contractParamTypes(Object[] params){

        this.paramTypes=new Class[params.length];   
        for(int i=0;i<params.length;i++){

            this.paramTypes[i]=params[i].getClass();   
        }   
    }   

    public Object getObject() {

        return object;   
    }   

    public void setParamTypes(Class[] paramTypes) {

        this.paramTypes = paramTypes;   
    }   

    public String  getMethodName(){
        return this.methodName;
    }

    public Class[] getParamTypes(){
        return this.paramTypes;
    }

    public Object[] getParams(){
        return this.params;
    }
    // 事件执行
    public void invoke() throws Exception{

        Method method=object.getClass().getMethod(this.getMethodName(), this.getParamTypes());   
        if(null==method){
            return;   
        }   
        method.invoke(this.getObject(), this.getParams());   
    }   
}
