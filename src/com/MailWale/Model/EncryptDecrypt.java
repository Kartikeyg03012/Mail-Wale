package com.MailWale.Model;

import java.security.Key;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

public class EncryptDecrypt {

	public String encrypt(String msg) {
		String data = null;
		try {

			String key = "Bar12345Bar12345";
			// Create key and cipher
			Key aesKey = new SecretKeySpec(key.getBytes(), "AES");
			Cipher cipher = Cipher.getInstance("AES");
			// encrypt the text
			cipher.init(Cipher.ENCRYPT_MODE, aesKey);
			byte[] encrypted = cipher.doFinal(msg.getBytes());
			data = (new String(encrypted));
			System.out.println(data);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return data;
	}

	public String decrypt(String msg) {
		String data = null;
		try {
			byte[] bytedata = msg.getBytes();
			String key = "Bar12345Bar12345"; // 128 bit key
			// Create key and cipher
			Key aesKey = new SecretKeySpec(key.getBytes(), "AES");
			Cipher cipher = Cipher.getInstance("AES");
			// decrypt the text
			cipher.init(Cipher.DECRYPT_MODE, aesKey);
			String decrypted = new String(cipher.doFinal(bytedata));
			data = decrypted;
			System.out.println(data);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return data;
	}

	// public static void main(String[] args) {
	// EncryptDecrypt app = new EncryptDecrypt();
	// app.encrypt("/kartikeyg77@gmail.com/78");
	// app.decrypt("Ó¶ÎBªóô§ `&(¼“©­ØëŒãì¯á:¼Rh");
	// }
}