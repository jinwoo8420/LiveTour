package net.hyosun.love.service;

import net.hyosun.love.model.UserVO;
import net.hyosun.love.persistance.UserDao;

public interface UserService extends UserDao {
	public UserVO login(UserVO userVO);

	public int join(UserVO userVO);
	
	public int email(UserVO userVO);
}
