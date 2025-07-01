import java.util.Scanner;

class InputDemo {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter your wing (char): ");
        char wing = sc.next().charAt(0); // Reads the first character of the next token

        System.out.println("Wing: " + wing);
    }
}

