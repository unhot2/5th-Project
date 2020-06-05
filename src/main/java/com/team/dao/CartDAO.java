package com.team.dao;

import java.util.List;
import com.team.dto.JoinDTO;
import com.team.dto.CartDTO;

public interface CartDAO {
	/* Cart 장바구니 */
	public int insertCart(CartDTO dto);
	/* 장바구니 목록 가져오기 */
	public List<JoinDTO> cartList(String userId);
	/* 장바구니 개별삭제 */
	public void cartDelete(CartDTO dto);
	/* 장바구니 전체 삭제 */
	public void cartDeleteAll(CartDTO dto);
	public void cntUp(CartDTO dto);
	public void cntDown(CartDTO dto);

	
	/*장바구니에있는 값들 주문 목록으로 불러오기 */
	public List<CartDTO> cartOrder(CartDTO dto);
	
	/* 장바구니에 기존 상품이 있는지 검사 */
	public int countCart(int product_id, String userId);
	
	public void updatCart(CartDTO dto);


}
