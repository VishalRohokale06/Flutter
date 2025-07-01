import java.util.*;

class CustomString implements Comparable<CustomString>{

	String str = null;
	CustomString(String str){
		this.str = str;
	}

	public int compareTo(CustomString obj){
		return (str.compareTo(obj.str));
	}

	public String toString(){
		return str;
	}
}

class SortedDemo{
	public static void main(String[] args){

		TreeSet t = new TreeSet();

		t.add(new CustomString("Kanha"));
		t.add(new CustomString("Ram"));
		t.add(new CustomString("Vedant"));
		t.add(new CustomString("Andy"));
		
		System.out.println(t);
	}
}
