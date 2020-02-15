package com.bishe.ecard.entity;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class card {
	private String cardId;
	private String cardName;
	private String cardType;
	private String cardPath;
	@JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
	private Date cardTime;
	private int cardCount;
	public String getCardId() {
		return cardId;
	}
	public void setCardId(String cardId) {
		this.cardId = cardId;
	}
	public String getCardName() {
		return cardName;
	}
	public void setCardName(String cardName) {
		this.cardName = cardName;
	}
	public String getCardType() {
		return cardType;
	}
	public void setCardType(String cardType) {
		this.cardType = cardType;
	}
	public String getCardPath() {
		return cardPath;
	}
	public void setCardPath(String cardPath) {
		this.cardPath = cardPath;
	}
	public Date getCardTime() {
		return cardTime;
	}
	public void setCardTime(Date cardTime) {
		this.cardTime = cardTime;
	}
	public int getCardCount() {
		return cardCount;
	}
	public void setCardCount(int cardCount) {
		this.cardCount = cardCount;
	}
	@Override
	public String toString() {
		return "card [cardId=" + cardId + ", cardName=" + cardName + ", cardType=" + cardType + ", cardPath=" + cardPath
				+ ", cardTime=" + cardTime + ", cardCount=" + cardCount + "]";
	}
    
}
