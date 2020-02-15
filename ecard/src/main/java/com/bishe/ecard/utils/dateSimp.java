package com.bishe.ecard.utils;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class dateSimp {
	public static String formatDate1(String dateStr) {
		String[] aStrings = dateStr.split(" ");
		// 5
		if (aStrings[1].equals("Jan")) {
			aStrings[1] = "01";
		}
		if (aStrings[1].equals("Feb")) {
			aStrings[1] = "02";
		}
		if (aStrings[1].equals("Mar")) {
			aStrings[1] = "03";
		}
		if (aStrings[1].equals("Apr")) {
			aStrings[1] = "04";
		}
		if (aStrings[1].equals("May")) {
			aStrings[1] = "05";
		}
		if (aStrings[1].equals("Jun")) {
			aStrings[1] = "06";
		}
		if (aStrings[1].equals("Jul")) {
			aStrings[1] = "07";
		}
		if (aStrings[1].equals("Aug")) {
			aStrings[1] = "08";
		}
		if (aStrings[1].equals("Sep")) {
			aStrings[1] = "09";
		}
		if (aStrings[1].equals("Oct")) {
			aStrings[1] = "10";
		}
		if (aStrings[1].equals("Nov")) {
			aStrings[1] = "11";
		}
		if (aStrings[1].equals("Dec")) {
			aStrings[1] = "12";
		}
		return aStrings[5] + "-" + aStrings[1] + "-" + aStrings[2] + " " + aStrings[3];
	}

	/**
	 * 格式化为date类型的
	 */
	public static Date formatDate2(String dateStr) {
		String[] aStrings = dateStr.split(" ");
		// 5
		if (aStrings[1].equals("Jan")) {
			aStrings[1] = "01";
		}
		if (aStrings[1].equals("Feb")) {
			aStrings[1] = "02";
		}
		if (aStrings[1].equals("Mar")) {
			aStrings[1] = "03";
		}
		if (aStrings[1].equals("Apr")) {
			aStrings[1] = "04";
		}
		if (aStrings[1].equals("May")) {
			aStrings[1] = "05";
		}
		if (aStrings[1].equals("Jun")) {
			aStrings[1] = "06";
		}
		if (aStrings[1].equals("Jul")) {
			aStrings[1] = "07";
		}
		if (aStrings[1].equals("Aug")) {
			aStrings[1] = "08";
		}
		if (aStrings[1].equals("Sep")) {
			aStrings[1] = "09";
		}
		if (aStrings[1].equals("Oct")) {
			aStrings[1] = "10";
		}
		if (aStrings[1].equals("Nov")) {
			aStrings[1] = "11";
		}
		if (aStrings[1].equals("Dec")) {
			aStrings[1] = "12";
		}
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		String date = aStrings[5] + "-" + aStrings[1] + "-" + aStrings[2] + " " + aStrings[3];
		Date datetime = null;
		try {
			datetime = df.parse(date);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return datetime;
	}

}
