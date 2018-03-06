package VO;

import java.util.Date;

public class ReviewVO {
	
	
	
	private int REV_NO;
	private String REV_TITLE;
	private String REV_CONTENT;
	private String REV_FILE;
	private String M_ID;
	private String REV_DESTINATION;
	private Date REV_START;
	private Date REV_END;
	private Date REV_CREATE_DATE;
	private int REV_REM_COUNT;
	private int REV_UNREM_COUNT;
	private int REV_VIEWS;
	private Date REV_UPDATE_DATE;
	private Date REV_DELETE_DATE;
	
	
	
	
	public ReviewVO() {
	}
	public ReviewVO(int rEV_NO) {
		REV_NO = rEV_NO;
	}
	
	
	public int getREV_NO() {
		return REV_NO;
	}
	public void setREV_NO(int rEV_NO) {
		REV_NO = rEV_NO;
	}
	public String getREV_TITLE() {
		return REV_TITLE;
	}
	public void setREV_TITLE(String rEV_TITLE) {
		REV_TITLE = rEV_TITLE;
	}
	public String getREV_CONTENT() {
		return REV_CONTENT;
	}
	public void setREV_CONTENT(String rEV_CONTENT) {
		REV_CONTENT = rEV_CONTENT;
	}
	public String getREV_FILE() {
		return REV_FILE;
	}
	public void setREV_FILE(String rEV_FILE) {
		REV_FILE = rEV_FILE;
	}
	public String getM_ID() {
		return M_ID;
	}
	public void setM_ID(String m_ID) {
		M_ID = m_ID;
	}
	public String getREV_DESTINATION() {
		return REV_DESTINATION;
	}
	public void setREV_DESTINATION(String rEV_DESTINATION) {
		REV_DESTINATION = rEV_DESTINATION;
	}
	public Date getREV_START() {
		return REV_START;
	}
	public void setREV_START(Date rEV_START) {
		REV_START = rEV_START;
	}
	public Date getREV_END() {
		return REV_END;
	}
	public void setREV_END(Date rEV_END) {
		REV_END = rEV_END;
	}
	public Date getREV_CREATE_DATE() {
		return REV_CREATE_DATE;
	}
	public void setREV_CREATE_DATE(Date rEV_CREATE_DATE) {
		REV_CREATE_DATE = rEV_CREATE_DATE;
	}
	public int getREV_REM_COUNT() {
		return REV_REM_COUNT;
	}
	public void setREV_REM_COUNT(int rEV_REM_COUNT) {
		REV_REM_COUNT = rEV_REM_COUNT;
	}
	public int getREV_UNREM_COUNT() {
		return REV_UNREM_COUNT;
	}
	public void setREV_UNREM_COUNT(int rEV_UNREM_COUNT) {
		REV_UNREM_COUNT = rEV_UNREM_COUNT;
	}
	public int getREV_VIEWS() {
		return REV_VIEWS;
	}
	public void setREV_VIEWS(int rEV_VIEWS) {
		REV_VIEWS = rEV_VIEWS;
	}
	public Date getREV_UPDATE_DATE() {
		return REV_UPDATE_DATE;
	}
	public void setREV_UPDATE_DATE(Date rEV_UPDATE_DATE) {
		REV_UPDATE_DATE = rEV_UPDATE_DATE;
	}
	public Date getREV_DELETE_DATE() {
		return REV_DELETE_DATE;
	}
	public void setREV_DELETE_DATE(Date rEV_DELETE_DATE) {
		REV_DELETE_DATE = rEV_DELETE_DATE;
	}
	@Override
	public String toString() {
		return "Review [REV_NO=" + REV_NO + ", REV_TITLE=" + REV_TITLE + ", REV_CONTENT=" + REV_CONTENT + ", REV_FILE="
				+ REV_FILE + ", M_ID=" + M_ID + ", REV_DESTINATION=" + REV_DESTINATION + ", REV_START=" + REV_START
				+ ", REV_END=" + REV_END + ", REV_CREATE_DATE=" + REV_CREATE_DATE + ", REV_REM_COUNT=" + REV_REM_COUNT
				+ ", REV_UNREM_COUNT=" + REV_UNREM_COUNT + ", REV_VIEWS=" + REV_VIEWS + ", REV_UPDATE_DATE="
				+ REV_UPDATE_DATE + ", REV_DELETE_DATE=" + REV_DELETE_DATE + "]";
	}
	
	
	
	
	
	
}
