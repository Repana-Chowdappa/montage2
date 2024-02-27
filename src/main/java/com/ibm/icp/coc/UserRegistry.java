package com.ibm.icp.coc;

import java.util.HashMap;
import java.util.Map;

public class UserRegistry {

	private static Map<String,User> _users = new HashMap<String,User>();
	
	static {
		User user = new User("bob", "Bob", "Builder");
		user.setAddress("123 Main St.");
		user.setCity("Philadelphia");
		user.setState("PA");
		user.setZip("19102");
		user.setEmployer("IBM");
		user.setYears(15);
		_users.put("bob", user);
		
		user = new User("deb", "Deb", "Developer");
		user.setAddress("542 W. 15th Street");
		user.setCity("Austin");
		user.setState("TX");
		user.setZip("78758");
		user.setEmployer("IBM");
		user.setYears(7);
		_users.put("deb", user );
	}
	
	public static boolean hasUser(String id) {
		return _users.containsKey(id);
	}
	
	public static User getUser(String id) {
		return _users.get(id);
	}
}
