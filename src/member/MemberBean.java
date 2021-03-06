/**
 * 
 */
package member;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @date : 2016. 6. 16.
 * @author : HyunWoo Lee
 * @file : Student.java
 * @story : 학생클라스
 */
public class MemberBean implements Serializable {
	private static final long serialVersionUID = 1L;
	private String id, pw, name, gender, regDate, ssn, proflieImg, email, birth;
	private int age;

	public MemberBean() {
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getId() {
		return id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getGender() {
		return gender;
	}

	public String getRegDate() {
		return regDate;
	}

	public String getSsn() {
		return ssn;
	}

	public int getage() {
		return age;
	}

	public String getName() {
		return name;
	}

	public void setSsn(String ssn) {
		int sCode = Integer.parseInt(ssn.split("-")[1]);
		this.gender = (sCode + 10) % 2 == 0 ? "여" : "남";
		int nowYear = Integer.parseInt(regDate.substring(0, 4));
		int ageYear = Integer.parseInt(ssn.substring(0, 2));
		switch (sCode) {
		case 1:	case 2:	case 5:	case 6:
			this.age = nowYear - (1900 + ageYear) + 1;
			break;
		case 9:	case 0:
			this.age = nowYear - (1800 + ageYear) + 1;
			break;
		default:
			this.age = nowYear - (2000 + ageYear) + 1;
			break;
		}
		this.birth = ssn.split("-")[0];
		this.ssn = ssn;
	}

	public String getProfileImg() {
		return proflieImg;
	}

	public void setProfileImg(String proflieImg) {
		this.proflieImg = proflieImg;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setRegDate() {
		this.regDate = new SimpleDateFormat("yyyy/MM/dd").format(new Date(System.currentTimeMillis()));
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getBirth() {
		return birth;
	}

	@Override
	public String toString() {
		return "MemberBean [id=" + id + ", pw=" + pw + ", name=" + name + ", gender=" + gender + ", regDate=" + regDate
				+ ", ssn=" + ssn + ", proflieImg=" + proflieImg + ", email=" + email + ", age=" + age + "]";
	}
}
