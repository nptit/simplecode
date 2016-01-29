public abstract class Paper{
    public void question1(){
        System.out.println("一滴水从万米高空下来会不会砸死人? a.不会　b.会　c.不知道");
        System.out.println("答案" + answer1());
    }
    public void question2(){
        System.out.println("蜈蚣有几条腿? a. 2条 b. 4条　c.6条　d.很多条");
        System.out.println("答案" + answer2());
    }
    public void question3(){
        System.out.println("人跳的有没有山高? a.有　b.没有　c.不知道");
        System.out.println("答案" + answer3());
    }
    public abstract String answer1();
    public abstract String answer2();
    public abstract String answer3();
}
