package kr.co.fkn.service.domain;

public class User {
	/// Field
	private int userNo;
	private String email;
	private String password; // 비밀번호
	private String nickname; // 닉네임
	private String name; // 이름
	private String gender; // 성별
	private int jumin; // 주민
	private String role; // 사용자, 관리자, 슈퍼유저

	public User() {
		super();
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getJumin() {
		return jumin;
	}

	public void setJumin(int jumin) {
		this.jumin = jumin;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	@Override
	public String toString() {
		return "User [userNo=" + userNo + ", email=" + email + ", password=" + password + ", nickname=" + nickname
				+ ", name=" + name + ", gender=" + gender + ", jumin=" + jumin + ", role=" + role + "]";
	}

}