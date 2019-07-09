package domain;

public class User {
	private String id;
	private String name;
	private String alias;
	private String pw;
	private String phone;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAlias() {
		return alias;
	}
	public void setAlias(String alias) {
		this.alias = alias;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	//디버깅을 위한 메소드
	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", alias=" + alias + ", pw=" + pw + ", phone=" + phone + "]";
	}
	
	
}
