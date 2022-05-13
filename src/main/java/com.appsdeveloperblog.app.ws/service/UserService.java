package com.appsdeveloperblog.app.ws.service;


import com.appsdeveloperblog.app.ws.shared.dto.UserDto;
import org.springframework.stereotype.Service;


@Service
public interface UserService {
	UserDto createUser(UserDto user);

	/*UserDto getUser(String email);
	UserDto getUserByUserId(String userId);
	UserDto updateUser(String userId, UserDto user);
	void deleteUser(String userId);
	List<UserDto> getUsers(int page, int limit);*/
}
