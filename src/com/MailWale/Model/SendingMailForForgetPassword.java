package com.MailWale.Model;

import java.util.Properties;

import java.util.SplittableRandom;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendingMailForForgetPassword {

	// public static String genrateOtp(int length) {
	// SplittableRandom sr = new SplittableRandom();
	// StringBuffer sb = new StringBuffer();
	// for (int i = 0; i < length; i++) {
	// sb.append(sr.nextInt(0, 10));
	//
	// }
	// return sb.toString();
	// }

	public static void sendingmail(String sender, String str) {
		String to = sender; // to address. It can be any like gmail, yahoo etc.
		final String from = ""; // from address. As this is using Gmail SMTP your from address
														// should be
		// gmail
		final String password = ""; // password for from gmail address that you have used in above line.

		Properties prop = new Properties();
		prop.put("mail.smtp.host", "smtp.gmail.com");
		prop.put("mail.smtp.port", "465");
		prop.put("mail.smtp.auth", "true");
		prop.put("mail.smtp.socketFactory.port", "465");
		prop.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");

		Session session = Session.getInstance(prop, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(from, password);
			}
		});

		try {

			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(from));
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
			message.setSubject("Mail Wale - Forgot Password");
			message.setText("Dear Client,\nThank you for connect with us. You Can Change Your Password By Clicking This Link Given Below:\n http://localhost:8080/Mail_Wale/updatePassword.jsp?data="
					+ str + "&id=" + sender
					+ " \n Please Don;t Share This Link To Anyone...\n\n\n\n\nThanks And Regards \n Mail Wale");

			Transport.send(message);

			System.out.println("Mail Sent...");

		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}
}
