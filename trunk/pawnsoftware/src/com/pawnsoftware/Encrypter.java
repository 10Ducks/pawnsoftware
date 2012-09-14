package com.pawnsoftware;

import java.math.*;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;


public class Encrypter {

	public static String encrypt(String password) {
		MessageDigest md = null;
		try {
			md = MessageDigest.getInstance("SHA");
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		md.update(password.getBytes(),0,password.length());
		String md5 = new BigInteger(1,md.digest()).toString(16);
		return md5;
	}

}