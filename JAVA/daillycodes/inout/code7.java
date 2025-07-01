class InputDemo{
        void methodFun(){
                System.out.println("In fun function");
        }
        void methodGun(){
                System.out.println("In gun function");
        }

        void methodRun(){
		System.out.println("In run function");
	}

        public static void main(String[] args){
                System.out.println("In main method");
                methodFun();
		methodGun();
		methodRun();

        }
}
