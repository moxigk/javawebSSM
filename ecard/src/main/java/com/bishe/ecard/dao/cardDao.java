package com.bishe.ecard.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.bishe.ecard.entity.card;

@Mapper
public interface cardDao {

	List<card> selectcardType(String cardType);

	List<card> selectcardAll();

	int deletecard(int i);

}
