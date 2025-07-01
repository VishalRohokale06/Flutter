class Client{
	static int i =0;
	public static void main(String[] args){
		Client client = new Client();
		for(int j=0;j<3;j++){
			//System.out.print(j+" ");
			client.m1();
		}
	}
		void m1(){
			int i = 0;
			System.out.println(i++);
		}
	}

