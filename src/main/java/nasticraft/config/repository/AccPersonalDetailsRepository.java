package nasticraft.config.repository;


import nasticraft.config.model.AccountPersonalDetails;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AccPersonalDetailsRepository extends JpaRepository<AccountPersonalDetails,Integer> {
	AccountPersonalDetails findByEmail(String email);

}