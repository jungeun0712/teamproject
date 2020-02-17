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
				Item item = i.getItem();  // 기존의 아이템
				Item additem = itemSet.getItem(); // 추가한 아이템
				int quantity = i.getQuantity(); // 기존의 아이템의 수량
				int addquantity = itemSet.getQuantity(); // 추가한 아이템의 수량
				if(item.getItemnum() == additem.getItemnum()) { // 아이디가 같은 게 있으면
					i.setQuantity(quantity + addquantity); // 있는 수량에 추가한 상품의 수량 추가
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
