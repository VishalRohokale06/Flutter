class LinkedList{
	Node head;

	class Node{
		String data;
		Node next;
		Node(String data){
			this.data = data;
			this.next = null;
		}
	}

	public void addFirst(String data){
		Node newNode = new Node(data);
		if(head==null){
			head = newNode;
			return;
		}

		newNode.next = head;
		head = newNode;
	}

	public void addLast(String data){
		Node newNode = new Node(data);

		if(head == null){
			head = newNode;
			return;
		}

		Node currNode = head;
		while(currNode.next != null){
			currNode = currNode.next;
		}
		currNode.next = newNode;
	}

	public void printList(){
		if(head == null){
                        System.out.println("list is empty");
                        return;
                }
		Node currNode = head;
		while(currNode != null){
                       System.out.print(currNode.data + "->");
		       currNode = currNode.next;
                }
                System.out.println("NULL");
	}


	public static void main(String[] args){
		LinkedList ll = new LinkedList();

		ll.addFirst("is");
		ll.addFirst("a");
		ll.printList();

		ll.addLast("null");
		ll.printList();
	}
}

/* list.addFirst(10);
 * list.addLast(10);
 * list.remoFirst/Lasr
 * list.getFirest/last
 * list.peekFirst/last
 * list.pollFirst/last
 */
