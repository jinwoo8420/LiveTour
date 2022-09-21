package net.hyosun.love.persistance;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.web.multipart.MultipartFile;

import net.hyosun.love.model.UserVO;

public interface UserDao {

	public List<UserVO> selectAll();

	public UserVO findById(String id);

	public int insert(UserVO vo);

	public int update(UserVO vo);

	public int delete(String id);

	public void create_user_table();

	public UserVO findByNickname(String nickname);

	public int update2(@Param("username") String id, @Param("nickname") String nickname);

	public int pwUpdate(@Param("username") String id, @Param("password") String password);

	public int fileUpLoad(@Param("username") String id, @Param("file") MultipartFile file);
	
	public int fileDelete(@Param("username") String id, @Param("file") String file);

	public int bg_UpLoad(@Param("username") String id, @Param("file") MultipartFile file);

	public int bg_Delete(@Param("username") String id, @Param("file") String filename);

}
