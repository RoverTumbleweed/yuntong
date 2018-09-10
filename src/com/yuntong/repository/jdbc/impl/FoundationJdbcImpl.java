package com.yuntong.repository.jdbc.impl;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.yuntong.model.User;
import com.yuntong.repository.jdbc.FoundationJdbc;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;
import org.springframework.stereotype.Repository;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by mylover on 7/22/15.
 */
@Repository
public class FoundationJdbcImpl extends SqlMapClientDaoSupport implements FoundationJdbc {

	@SuppressWarnings("deprecation")
	@Autowired  
    public FoundationJdbcImpl(SqlMapClient sqlMapClient) {
        this.setSqlMapClient(sqlMapClient);
    }
//自动装配i的话那么客户端又是从哪里来装配的呢
	
	@SuppressWarnings({ "deprecation", "unchecked" })
	@Override
	public User findUserByUsername(String username) {
		User user = new User();
		List<User> userList = new ArrayList<User>();
			try {
				userList = this.getSqlMapClient()
						.queryForList("Foundation.findUserByUsername",username);
				if (userList.size() > 0)
					user = userList.get(0);
			} catch (SQLException e) {
				e.printStackTrace();
			}
	
		return user;
	}

	@SuppressWarnings("deprecation")
	@Override
	public void addOneUser(User addOne) {
		try {
			this.getSqlMapClient().insert("Foundation.addOne", addOne);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@SuppressWarnings("deprecation")
	@Override
	public List<User> findAllUsers() {
		List<User> userList = new ArrayList<User>();
		try {
			 userList = this.getSqlMapClient().queryForList("Foundation.findAllUsers");
		} catch (Exception e) {
			// TODO: handle exception
		}
		return userList;

	}

	@Override
	public Page<User> findUsers(Pageable pageable){
		List<User> users = this.getSqlMapClientTemplate().queryForList("Foundation.findUser");
		Long total = (Long) this.getSqlMapClientTemplate().queryForObject("Foundation.findUserCount");
		Page<User> usersPage = new PageImpl<User>(users, pageable, total);
		return usersPage;
	}

}
