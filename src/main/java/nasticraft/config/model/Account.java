package nasticraft.config.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import nasticraft.config.util.Constants;

import javax.persistence.*;
import java.util.List;


@Entity
@Table(name = "Accounts")
public class Account {


	@Id
	@Column(unique = true, name = "id", nullable = false)
	@GeneratedValue(strategy = GenerationType.AUTO)
	Integer id;

	@Column(unique = true, nullable = false)
	private String username;

	@JsonIgnore
	@Column(nullable = false)
	private String password;

	@Enumerated
	private Constants.AccountStatus status;

	@Version
	@JsonIgnore
	private int version;

	@OneToMany(fetch = FetchType.EAGER, cascade = { CascadeType.ALL })
	@JoinColumn(name = "account_id")
	public List<Role> roles;

	@OneToOne( mappedBy = "account")
	public AccountPersonalDetails accpers;

	public AccountPersonalDetails getAccpers() {
		return accpers;
	}

	public void setAccpers(AccountPersonalDetails accpers) {
		this.accpers = accpers;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Constants.AccountStatus getStatus() {
		return status;
	}

	public void setStatus(Constants.AccountStatus status) {
		this.status = status;
	}

	public int getVersion() {
		return version;
	}

	public void setVersion(int version) {
		this.version = version;
	}

	public List<Role> getRoles() {
		return roles;
	}

	public void setRoles(List<Role> roles) {
		this.roles = roles;
	}

	@JsonIgnore
	public String[] getAuthorities() {
		String[] authorities = new String[this.roles.size()];
		for (int i = 0; i < this.roles.size(); i++) {
			authorities[i] = "ROLE_" + this.roles.get(i).getRole();
		}
		return authorities;
	}

	@Override
	public String toString() {
		return "Account{" +
				"id=" + id +
				", username='" + username + '\'' +
				", password='" + password + '\'' +
				", status=" + status +
				", version=" + version +
				", roles=" + roles +
				'}';
	}
}