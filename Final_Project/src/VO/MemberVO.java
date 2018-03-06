package VO;

import java.util.Date;

public class MemberVO {

	private int M_NO;
	private String M_ID;
	private String M_PASSWORD;
	private String M_NAME;
	private char M_GENDER;
	private String M_AGE;
	private String M_PHONE;
	private String M_EMAIL;
	private String M_NATION;
	private String M_ADDRESS;
	private int M_RANK;
	private String M_PROFILE;
	private char M_PRIVATE;
	private char M_ADMIN;
	private Date M_CREATE_DATE;
	private Date M_UPDATE_DATE;
	private Date M_DELETE_DATE;

	public MemberVO() {

	}

	public MemberVO(int M_NO, String M_ID, String M_PASSWORD, String M_NAME, char M_GENDER, String M_AGE,
			String M_PHONE, String M_EMAIL, String M_NATION, String M_ADDRESS, int M_RANK, String M_PROFILE,
			char M_PRIVATE, char M_ADMIN, Date M_CREATE_DATE, Date M_UPDATE_DATE, Date M_DELETE_DATE) {
		this.M_NO = M_NO;
		this.M_ID = M_ID;
		this.M_PASSWORD = M_PASSWORD;
		this.M_NAME = M_NAME;
		this.M_GENDER = M_GENDER;
		this.M_AGE = M_AGE;
		this.M_PHONE = M_PHONE;
		this.M_EMAIL = M_EMAIL;
		this.M_NATION = M_NATION;
		this.M_ADDRESS = M_ADDRESS;
		this.M_RANK = M_RANK;
		this.M_PROFILE = M_PROFILE;
		this.M_PRIVATE = M_PRIVATE;
		this.M_ADMIN = M_ADMIN;
		this.M_CREATE_DATE = M_CREATE_DATE;
		this.M_UPDATE_DATE = M_UPDATE_DATE;
		this.M_DELETE_DATE = M_DELETE_DATE;
	}

	public MemberVO(String m_id, String m_password) {
		// TODO Auto-generated constructor stub
		this.M_ID=m_id;
		this.M_PASSWORD=m_password;
	}

	public MemberVO(String id) {
		// TODO Auto-generated constructor stub
		this.M_ID=id;
	}

	public String getM_id() {
		return M_ID;
	}

	public int getM_NO() {
		return M_NO;
	}

	public void setM_NO(int m_NO) {
		M_NO = m_NO;
	}

	public String getM_ID() {
		return M_ID;
	}

	public void setM_ID(String m_ID) {
		M_ID = m_ID;
	}

	public String getM_PASSWORD() {
		return M_PASSWORD;
	}

	public void setM_PASSWORD(String m_PASSWORD) {
		M_PASSWORD = m_PASSWORD;
	}

	public String getM_NAME() {
		return M_NAME;
	}

	public void setM_NAME(String m_NAME) {
		M_NAME = m_NAME;
	}

	public char getM_GENDER() {
		return M_GENDER;
	}

	public void setM_GENDER(char m_GENDER) {
		M_GENDER = m_GENDER;
	}

	public String getM_AGE() {
		return M_AGE;
	}

	public void setM_AGE(String m_AGE) {
		M_AGE = m_AGE;
	}

	public String getM_PHONE() {
		return M_PHONE;
	}

	public void setM_PHONE(String m_PHONE) {
		M_PHONE = m_PHONE;
	}

	public String getM_EMAIL() {
		return M_EMAIL;
	}

	public void setM_EMAIL(String m_EMAIL) {
		M_EMAIL = m_EMAIL;
	}

	public String getM_NATION() {
		return M_NATION;
	}

	public void setM_NATION(String m_NATION) {
		M_NATION = m_NATION;
	}

	public String getM_ADDRESS() {
		return M_ADDRESS;
	}

	public void setM_ADDRESS(String m_ADDRESS) {
		M_ADDRESS = m_ADDRESS;
	}

	public int getM_RANK() {
		return M_RANK;
	}

	public void setM_RANK(int m_RANK) {
		M_RANK = m_RANK;
	}

	public String getM_PROFILE() {
		return M_PROFILE;
	}

	public void setM_PROFILE(String m_PROFILE) {
		M_PROFILE = m_PROFILE;
	}

	public char getM_PRIVATE() {
		return M_PRIVATE;
	}

	public void setM_PRIVATE(char m_PRIVATE) {
		M_PRIVATE = m_PRIVATE;
	}

	public char getM_ADMIN() {
		return M_ADMIN;
	}

	public void setM_ADMIN(char m_ADMIN) {
		M_ADMIN = m_ADMIN;
	}

	public Date getM_CREATE_DATE() {
		return M_CREATE_DATE;
	}

	public void setM_CREATE_DATE(Date m_CREATE_DATE) {
		M_CREATE_DATE = m_CREATE_DATE;
	}

	public Date getM_UPDATE_DATE() {
		return M_UPDATE_DATE;
	}

	public void setM_UPDATE_DATE(Date m_UPDATE_DATE) {
		M_UPDATE_DATE = m_UPDATE_DATE;
	}

	public Date getM_DELETE_DATE() {
		return M_DELETE_DATE;
	}

	public void setM_DELETE_DATE(Date m_DELETE_DATE) {
		M_DELETE_DATE = m_DELETE_DATE;
	}

}
