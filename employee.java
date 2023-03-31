/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */

/**
 *
 * @author DELL
 */
package ex10pack;
public class employee {
    public static void main(Sting args[])
    {
  System.out.println("hello");      
    }

private String name;
private String dept;
private int salary;
private int hiredate;


public employee() {
    
 

}


public employee(String name,String dept,int salary,int hiredate) {
       this.name = name;
this.name = name;
this.dept = dept;
this.salary=salary;
this.hiredate=hiredate;
}

public String getName()
        {
return name;
}

public void setName(String name)
        {
this.name = name;
}

public String getdept()
        {
return dept;
}

public void setsalary(int salary) {
this.salary = salary;
}

public int date(int hiredate) {
return hiredate;
}

public void setdate(int hiredate) {
this.hiredate = hiredate;
}

}