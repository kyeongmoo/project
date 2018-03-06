package VO;

import java.util.Date;

public class FAQVO {
	
	private int FAQ_NO;
	private String FAQ_TITLE;
	private String FAQ_CONTENT;
	private int FAQ_VIEWS;
	private Date FAQ_CREATE_DATE;
	private Date FAQ_UPDATE_DATE;
	private Date FAQ_DELETE_DATE;
	private String M_ID;
	private char M_ADMIN;
	
	
	public int getFAQ_NO() {
		return FAQ_NO;
	}
	public void setFAQ_NO(int fAQ_NO) {
		FAQ_NO = fAQ_NO;
	}
	public String getFAQ_TITLE() {
		return FAQ_TITLE;
	}
	public void setFAQ_TITLE(String fAQ_TITLE) {
		FAQ_TITLE = fAQ_TITLE;
	}
	public String getFAQ_CONTENT() {
		return FAQ_CONTENT;
	}
	public void setFAQ_CONTENT(String fAQ_CONTENT) {
		FAQ_CONTENT = fAQ_CONTENT;
	}
	public int getFAQ_VIEW() {
		return FAQ_VIEWS;
	}
	public void setFAQ_VIEW(int fAQ_VIEW) {
		FAQ_VIEWS = fAQ_VIEW;
	}
	public Date getFAQ_CREATE_DATE() {
		return FAQ_CREATE_DATE;
	}
	public void setFAQ_DATE(Date fAQ_DATE) {
		FAQ_CREATE_DATE = fAQ_DATE;
	}
	public Date getFAQ_UPDATE_DATE() {
		return FAQ_UPDATE_DATE;
	}
	public void setFAQ_UPDATE_DATE(Date fAQ_UPDATE_DATE) {
		FAQ_UPDATE_DATE = fAQ_UPDATE_DATE;
	}
	public Date getFAQ_DELETE_DATE() {
		return FAQ_DELETE_DATE;
	}
	public void setFAQ_DELETE_DATE(Date fAQ_DELETE_DATE) {
		FAQ_DELETE_DATE = fAQ_DELETE_DATE;
	}
	public String getM_ID() {
		return M_ID;
	}
	public void setM_ID(String m_ID) {
		M_ID = m_ID;
	}
	public char getM_ADMIN() {
		return M_ADMIN;
	}
	public void setM_ADMIN(char m_ADMIN) {
		M_ADMIN = m_ADMIN;
	}
	@Override
	public String toString() {
		return "FAQVO [FAQ_NO=" + FAQ_NO + ", FAQ_TITLE=" + FAQ_TITLE + ", FAQ_CONTENT=" + FAQ_CONTENT + ", FAQ_VIEWS="
				+ FAQ_VIEWS + ", FAQ_CREATE_DATE=" + FAQ_CREATE_DATE + ", FAQ_UPDATE_DATE=" + FAQ_UPDATE_DATE + ", FAQ_DELETE_DATE="
				+ FAQ_DELETE_DATE + ", M_ID=" + M_ID + ", M_ADMIN=" + M_ADMIN + "]";
	}
	
	
	
	

}
