package org.aigua.dao.impl.mock;

import java.util.List;
import java.util.ArrayList;
import org.aigua.domain.User;
import org.aigua.dao.UserDao;

public class QuickUserMockDaoImpl implements UserDao {

	private static final int MAX = 100;

	public User findById(int id){
		return getMockUsers(1).get(1);
	}
	
	public List<User> findAll(){
		return getMockUsers(MAX);
	}
	
	public List<User> findAllOffset(int max, int offset){
		return getMockUsers(max);
	}
	
	public List<User> search(String term){
		return getMockUsers(MAX);
	}
	
	public User save(User user){
		return getMockUsers(1).get(1);
	}
	
	public User update(User user){
		return getMockUsers(1).get(1);
	}
	
	public User delete(int id){
		return getMockUsers(1).get(1);
	}
	
	public int count(){
		return 10;
	}
	
	
	private List<User> getMockUsers(int numberOfUsers){
	
		if(numberOfUsers > MAX)numberOfUsers = MAX;
		List<User> users = new ArrayList<User>();
		
		for(int k = 0; k < numberOfUsers; k++){
			User mockUser = new User();
			mockUser.setId(k);
			mockUser.setEmail("mockuser" + k + "@email.com");
			mockUser.setUsername("mockuser" + k);
			mockUser.setPassword("password");
			mockUser.setFirstName("first" + k);
			mockUser.setLastName("last" + k);
			users.add(mockUser);
		}
		
		return users;
	}
	
	
}