package logic;

import java.util.ArrayList;
import java.util.List;

public class Cart {
	private List<ItemSet> itemSetList = new ArrayList<ItemSet>();
	public List<ItemSet> getItemSetList(){
		return itemSetList;
	}
	public void push(ItemSet itemSet) {
		for(ItemSet i : itemSetList) {
				Item item = i.getItem();  // ������ ������
				Item additem = itemSet.getItem(); // �߰��� ������
				int quantity = i.getQuantity(); // ������ �������� ����
				int addquantity = itemSet.getQuantity(); // �߰��� �������� ����
				if(item.getItemnum() == additem.getItemnum()) { // ���̵� ���� �� ������
					i.setQuantity(quantity + addquantity); // �ִ� ������ �߰��� ��ǰ�� ���� �߰�
					return;
				}
		}
		System.out.println(itemSet);
		itemSetList.add(itemSet);
	}
	public long getTotal() {
		long sum = 0;
		for(ItemSet i : itemSetList) {
			Item item = i.getItem();
			int cnt = i.getQuantity();
			sum += i.getPrice() * cnt;
		}
		return sum;
	}
}
