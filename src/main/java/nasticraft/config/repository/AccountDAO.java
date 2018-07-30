package nasticraft.config.repository;


import nasticraft.config.model.Account;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AccountDAO extends JpaRepository<Account,Integer> {
	
	@Query("select acc from Account acc where username= :username")
	public Account findByUsername(@Param("username") String username);
	
	@Query("select acc from Account acc where username like CONCAT('%', :username, '%') ")
	public List<Account> findAllByUsername(@Param("username") String username);

}