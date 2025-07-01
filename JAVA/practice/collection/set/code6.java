import java.util.*;

class SortedSetDemo{
        public static void main(String[] args){

                TreeSet ss = new TreeSet();

                ss.add(50);
                ss.add(10);
                ss.add(40);
                ss.add(10);
                ss.add(20);
                ss.add(30);

                System.out.println(ss.descendingSet());
        }
}
