class student{
	public static void main(String[] args){
		float marks = 85f;

		if(marks>85){
			System.out.println("medical");
		}
		else if(marks<=85 && marks>75){
			System.out.println("engineering");
		}
		else if(marks<=75 && marks>=65){
			System.out.println("pharmacy or bsc");
		}
		else {
			System.out.println("MPSC");
		}
	}
}


