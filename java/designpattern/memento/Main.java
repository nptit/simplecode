/**
 * 客户端
 */
public class Main{
    public static void main (String[] args) {
        GameRole role = new GameRole();
        role.initState();
        System.out.println("角色初始状态:");
        role.stateDisplay();

        //保存状态
        RoleStateCaretaker roleStateCaretaker = new RoleStateCaretaker();
        roleStateCaretaker.setRoleStateMemento(role.saveMemento());

        role.fightWithBoss();
        System.out.println("跟boss打架后那个惨啊:");
        role.stateDisplay();

        role.recoveryMemento(roleStateCaretaker.getRoleStateMemento());
        System.out.println("我胡汉三又回来了!!!");
        role.stateDisplay();
    }
}
