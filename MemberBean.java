package kr.gov.bean;

public class MemberBean {
	
	private String name;    //이름
	private String id;      //아이디
	private String pw;      //비밀번호
	private String age;     //나이
	private String email1;  //이메일 @ 앞부분
	private String email2;  //이메일 @ 뒷부분
	private String addr;    //주소
	
	//기본 생성자 생성
	public MemberBean() {
		
	}
	
	//setter, getter 메서드 셍성
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
