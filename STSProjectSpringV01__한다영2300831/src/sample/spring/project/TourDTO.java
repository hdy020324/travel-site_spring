package sample.spring.project;

public class TourDTO {
	
	String mem_id;
	String mem_pwd;
	String mem_name;
	String mem_email;
	String mem_phone;
	String mem_birth;
	
	//----------------------------------
	
	public TourDTO() {
		super();
	}

	public TourDTO(String mem_id, String mem_pwd, String mem_name, String mem_email, String mem_phone,
			String mem_birth) {
		super();
		//System.out.println("test");
		this.mem_id = mem_id;
		this.mem_pwd = mem_pwd;
		this.mem_name = mem_name;
		this.mem_email = mem_email;
		this.mem_phone = mem_phone;
		this.mem_birth = mem_birth;
	}
	
	public TourDTO(String mem_id, String mem_pwd) {
		super();
		//System.out.println("test");
		this.mem_id = mem_id;
		this.mem_pwd = mem_pwd;
	}
	
	//----------------------------------


	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public String getMem_pwd() {
		return mem_pwd;
	}

	public void setMem_pwd(String mem_pwd) {
		this.mem_pwd = mem_pwd;
	}

	public String getMem_name() {
		return mem_name;
	}

	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}

	public String getMem_email() {
		return mem_email;
	}

	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}

	public String getMem_phone() {
		return mem_phone;
	}

	public void setMem_phone(String mem_phone) {
		this.mem_phone = mem_phone;
	}

	public String getMem_birth() {
		return mem_birth;
	}

	public void setMem_birth(String mem_birth) {
		this.mem_birth = mem_birth;
	}
	
	
}