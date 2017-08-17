package com.favccxx.favsoft.util;

import org.apache.commons.text.RandomStringGenerator;

import com.favccxx.favsoft.constants.SysConstants;


public class SaltUtil {
	
	public static String getSalt() {
		RandomStringGenerator generator = new RandomStringGenerator.Builder()
			     .withinRange('a', 'z').build();
		String randomLetters = generator.generate(20);
		SessionUtil.getSession().setAttribute(SysConstants.USER_SALT_KEY, randomLetters);
		return randomLetters;
	}

}
