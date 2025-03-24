import java.util.Scanner;

interface client
{
    void input();
    void output();
}

class raju implements client
{
    String name;
    double sal;
    
    public void input()
    {
        Scanner sc = new Scanner(System.in);
        System.out.println("enter name and salary");
        name = sc.next();
        sal = sc.nextDouble();
    }
    
    public void output()
    {
        System.out.println("name=" + name);
        System.out.println("salary=" + sal);
    }
}

// Add main class to run the program
public class interfernce {
    public static void main(String[] args) {
        raju r = new raju();
        r.input();
        r.output();
    }
} 