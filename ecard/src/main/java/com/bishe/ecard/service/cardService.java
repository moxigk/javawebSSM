package com.bishe.ecard.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bishe.ecard.dao.cardDao;
import com.bishe.ecard.entity.card;

@Service
public class cardService {

	@Autowired 
	private cardDao cDao;
	public List<card> selectcardType(String cardType) {
		
		return cDao.selectcardType(cardType);
	}
	public List<card> selectcardAll() {
		
		return cDao.selectcardAll();
	}
	public int deletecard(int i) {
		// TODO Auto-generated method stub
		return cDao.deletecard(i);
	}

}
