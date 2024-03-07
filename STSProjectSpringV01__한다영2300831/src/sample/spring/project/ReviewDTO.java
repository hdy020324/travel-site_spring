package sample.spring.project;

public class ReviewDTO {
	
	String gue_no;
	String gue_id;
	String gue_pwd;
	String gue_subject;
	String gue_content;
	String gue_logtime;
	
	//----------------------------------
	
	public ReviewDTO() {
		super();
	}

	public ReviewDTO(String gue_no, String gue_id, String gue_pwd, String gue_subject, String gue_content,
			String gue_logtime) {
		super();
		this.gue_no = gue_no;
		this.gue_id = gue_id;
		this.gue_pwd = gue_pwd;
		this.gue_subject = gue_subject;
		this.gue_content = gue_content;
		this.gue_logtime = gue_logtime;
	}
	
	
	public ReviewDTO(String gue_id, String gue_pwd, String gue_subject, String gue_content) {
		super();
		this.gue_id = gue_id;
		this.gue_pwd = gue_pwd;
		this.gue_subject = gue_subject;
		this.gue_content = gue_content;
	}
	
	public ReviewDTO(String gue_subject, String gue_content) {
		super();
		this.gue_subject = gue_subject;
		this.gue_content = gue_content;
	}	
	
	public ReviewDTO(String gue_no, String gue_id, String gue_pwd) {
		super();
		this.gue_no = gue_no;
		this.gue_id = gue_id;
		this.gue_pwd = gue_pwd;
	}

	//--------------------------------
		

	public String getGue_no() {
		return gue_no;
	}

	public void setGue_no(String gue_no) {
		this.gue_no = gue_no;
	}

	public String getGue_id() {
		return gue_id;
	}

	public void setGue_id(String gue_id) {
		this.gue_id = gue_id;
	}

	public String getGue_pwd() {
		return gue_pwd;
	}

	public void setGue_pwd(String gue_pwd) {
		this.gue_pwd = gue_pwd;
	}

	public String getGue_subject() {
		return gue_subject;
	}

	public void setGue_subject(String gue_subject) {
		this.gue_subject = gue_subject;
	}

	public String getGue_content() {
		return gue_content;
	}

	public void setGue_content(String gue_content) {
		this.gue_content = gue_content;
	}

	public String getGue_logtime() {
		return gue_logtime;
	}

	public void setGue_logtime(String gue_logtime) {
		this.gue_logtime = gue_logtime;
	}

	
}