package link.hiroshisprojects.jspdemo;

import java.util.*;

/*
 *	This is my Java "scrap work", because it's been a while since I Java'd. 
 */
public class Main {

	public static void main(String[] args) {
		List<String> list = new ArrayList<>();
		String s1 = "This is my first string";
		String s2 = "This is my second string";
		
		list.addAll(Arrays.asList(s1, s2));
		
		String cookie = list.toString().replace("[", "").replace("]", "");
//		System.out.println(cookie);
		
		List<String> cookieList = Arrays.asList(cookie.split(", "));
		
		for (String item : cookieList) {
			System.out.println(item);
		}
		
		
	}
}
