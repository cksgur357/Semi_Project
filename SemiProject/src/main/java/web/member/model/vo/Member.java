package web.member.model.vo;

import java.sql.Date;

public class Member {
	
	private static final long serialVersionUID = 1004L;
	
	// 1. 필드 변수 
	private String userId;
	private String userPwd;
	private String userName;
	private String nickname;
	private int age;
	private String email;
	private String phone;
	private String address;
	private Date enrollDate;
		
	// 2. 생성자
	public Member() { }
	
	public Member(String userId, String userPwd) {
		super();
		this.userId = userId;
		this.userPwd = userPwd;
	}

	public Member(String userId, String userPwd, String userName, String nickname, int age, String email, String phone,
			String address, Date enrollDate) {
		super();
		this.userId = userId;
		this.userPwd = userPwd;
		this.userName = userName;
		this.nickname = nickname;
		this.age = age;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.enrollDate = enrollDate;
	}

	// 3. 메소드
	// toString 재정의	
	@Override
	public String toString() {
		return "Member [userId=" + userId + ", userPwd=" + userPwd + ", userName=" + userName + ", nickname=" + nickname
				+ ", age=" + age + ", email=" + email + ", phone=" + phone + ", address=" + address + ", enrollDate="
				+ enrollDate + "]";
	}

	// getter, setter
	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public void setHobby(String hobby) {
		// TODO Auto-generated method stub
		
	}
	
	
	
}
