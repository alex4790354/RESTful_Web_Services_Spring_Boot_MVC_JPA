package com.appsdeveloperblog.app.ws.ui.contoller;
 
import com.appsdeveloperblog.app.ws.ui.model.request.UserDetailsRequestModel;
import com.appsdeveloperblog.app.ws.ui.model.response.UserRest;
import org.springframework.web.bind.annotation.*;


@RestController
@RequestMapping("users") // http://localhost:8080/users
public class UserController {


	@GetMapping
	public String getUser()	{
		return "get user was called";
	}
	
	@PostMapping
	public UserRest createUser(@RequestBody UserDetailsRequestModel userDetails) 	{
		return new UserRest("uID", "Ivan", "Ivanov", "no Email");
	}
	
	@PutMapping
	public String updateUser() {
		return "Put = update user was called";
	}
	
	@DeleteMapping
	public String deleteUser() {
		return "delete user was called";
	}

}
