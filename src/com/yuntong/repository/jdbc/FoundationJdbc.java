package com.yuntong.repository.jdbc;

import com.yuntong.model.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by mylover on 7/22/15.
 */
@Repository
public interface FoundationJdbc {

    public User findUserByUsername(String username);
    
    public void addOneUser(User addOneUser);
    
    public List<User> findAllUsers();

    Page<User> findUsers(Pageable pageable);
}
