import java.io.*;
import java.text.SimpleDateFormat;
import java.util.*;
public class Magic{
    public static void main (String[] args) {
        //打开文件
        BufferedReader br = null;
        try {
            br = new BufferedReader(new FileReader("1.txt"));
        }catch(FileNotFoundException e){
            e.printStackTrace(); 
        }
        //读取内容形成list<map> [{张三:"xxx,xxx,xxx"},{李四:"xxx,xxx,xxx"}]
        List<Map<String,String>> lists = new ArrayList<Map<String,String>>();
        Magic magic = new Magic();
        try {
            magic.getAllData(lists,br);
        }catch(Exception e){
            e.printStackTrace(); 
        }
        //遍历map中的value，对日期排序
        List<String> dates = new ArrayList<String>();
        magic.getDateSort(dates,lists);
        //遍历日期形成新的显示形式  日期：xxx xxx xxx
        magic.magicFactory(lists,dates);
        try {
            br.close();
        }catch(Exception e){
            e.printStackTrace();
        }
    }

    void getAllData(List<Map<String,String>> lists,BufferedReader br) throws Exception{
        String s = "";
        String[] str = null;
        while ((s = br.readLine() )!=null) {
            Map<String,String> map = new HashMap<String,String>();
            str = s.split("\\ ");
            String value = "";
            for(int i = 1; i < str.length; i++){
            	value += str[i];
            	value += ",";
            }
            map.put("" + str[0],"" + value + "");
            lists.add(map);
        } 
    }

    void getDateSort(List<String> dates,List<Map<String,String>> lists){

        for(Map<String,String> map:lists){
            String[] strArr = null;
            for(String str:map.values()){
                strArr = str.split("\\,");
                for(String str1:strArr){
                    dates.add(str1.trim()); 
                }
            }
        }
        //去重
        this.duplicateRemoval(dates);
        //排序
        try {
            this.dateSort(dates);
        }catch(Exception e){
            e.printStackTrace(); 
        }
    }

    void dateSort(List<String> list) throws Exception{
        List<Date> dateList = new ArrayList<Date>(); 
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        for(String str:list){
            dateList.add(sdf.parse(str)); 
        }
        Collections.sort(dateList);
        list.clear();
        for(Date date:dateList){
            list.add(sdf.format(date)); 
        }
    }

    void duplicateRemoval(List<String> list){

        //        ArrayList<String> result = new ArrayList<String>();
        //
        //        for(String s: list){
        //            if(Collections.frequency(result, s) < 1) result.add(s);
        //        }
        HashSet<String> hs = new HashSet<String>(list);
        list.clear();
        list.addAll(hs);
        hs = null;
    }

    void magicFactory(List<Map<String,String>> datas,List<String> dates){

        Map<String,String> map = new HashMap<String,String>();
        for(String str:dates){
            String key = str; 
            StringBuilder value = new StringBuilder();
            value.append(" 加班到九点 加班人员：");
            List<String> overtimePerson = this.overtimePersonalINcurrentTime(datas,str);
            for(String person: overtimePerson){
                value.append(person + ", ");
            }
            map.put(key,value.toString());
        }
        try {
            this.writeToFile(map);
        }catch(Exception e){

        }
    }

    void writeToFile(Map<String,String> map) throws Exception{
        PrintWriter out = new PrintWriter(new BufferedWriter(new FileWriter("content.txt")));
        StringBuilder sb = new StringBuilder();
        sb.append("加班明细: + \n");
        Iterator it = map.entrySet().iterator();
        while(it.hasNext()){
            Map.Entry entry = (Map.Entry)it.next();
            sb.append(entry.getKey() + " |" + entry.getValue().toString().substring(0,entry.getValue().toString().length()) + "\n");
        }
        //System.out.println(sb);
        out.write(sb.toString());
        out.flush();
        out.close();
    }

    List<String> overtimePersonalINcurrentTime(List<Map<String,String>> datas,String date){
        List<String> person = new ArrayList<String>();
        for(Map<String,String> dates:datas){
            Iterator it = dates.entrySet().iterator();
            while(it.hasNext()){
                Map.Entry entry = (Map.Entry)it.next();
                if(entry.getValue().toString().contains(date)) person.add(entry.getKey().toString());
            }
        }
        return person;
    }
}
