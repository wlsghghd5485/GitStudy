package kr.gov.dto;

public class MemberDTO {
	private String name;
	private String id;
	private String pw;
	private String age;
	private String email1;
	private String email2;
	private String addr;
	
	public MemberDTO() {
		
	}

	public MemberDTO(String name, String id, String pw, String age, String email1, String email2, String addr) {
		super();
		this.name = name;
		this.id = id;
		this.pw = pw;
		this.age = age;
		this.email1 = email1;
		this.email2 = email2;
		this.addr = addr;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getEmail1() {
		return email1;
	}

	public void setEmail1(String email1) {
		this.email1 = email1;
	}

	public String getEmail2() {
		return email2;
	}

	public void setEmail2(String email2) {
		this.email2 = email2;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}
	
	
	
}
