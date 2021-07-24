package com.cgv.daoImpl.Admin;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.cgv.dao.Admin.AdminPostDao;
import com.cgv.models.Post;
@Repository
public class AdminPostDaoImpl implements AdminPostDao{
	public static final String GET_ALL="Select * From `post` ORDER BY id DESC";
	public static final String DELETE="Delete From `post` where id = ?";
	@Autowired
	public JdbcTemplate _jdbcTemplate;
	@Override
	public List<Post> getAll(){
		List<Post> list = new ArrayList<Post>();
		list = _jdbcTemplate.query(GET_ALL, new BeanPropertyRowMapper<>(Post.class));
		return list;
	}
	@Override
	public boolean insert(Post post) {
		return false;
	}
	@Override
	public boolean delete(int id) {
		int result = _jdbcTemplate.update(DELETE, id);
		if(result == 1) {
			return true;
		}
		return false;
	}
	@Override
	public boolean edit(Post id) {
		return false;
	}
}
