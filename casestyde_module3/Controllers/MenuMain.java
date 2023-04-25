package Controllers;

import java.util.Scanner;

public class MenuMain {
    public static void display() {
        Scanner scanner = new Scanner(System.in);
        boolean flag = true;
        do {
            System.out.println("Bạn có thể chọn chức năng : " +
                    "\n 1.Display List Customer " +
                    "\n 2.Add New Customer" +
                    "\n 3.Delete Customer " +
                    "\n 4.Edit customer " +
                    "\n 5.Return Menu");
            try {
                int choose = Integer.parseInt(scanner.nextLine());
                switch (choose) {
                    case 1:
                        System.out.println("Display List Customer");
                        break;
                    case 2:
                        System.out.println("2.Add New Customer");
                        break;
                    case 3:
                        System.out.println("3.Delete Customer ");
                        break;
                    case 4:
                        System.out.println("4.Edit customer");
                        break;
                    case 5:
                        System.out.println("5.Return Menu");
                        flag = false;
                        break;
                    default:
                        System.out.println("Bạn chọn số trong menu nha :D");
                }
            } catch (Exception e) {
                System.out.println("Warning !!!" + e);
            }
        }

        while (flag);

    }

}
