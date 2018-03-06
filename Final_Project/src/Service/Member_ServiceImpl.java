package Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.swing.text.html.HTMLEditorKit.InsertHTMLTextAction;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import Dao.MemberDao;
import VO.MemberVO;
import VO.MemberVO;
import VO.PhotoVO;

@Service
public class Member_ServiceImpl implements Member_Service{
	
	@Autowired
	public MemberDao mDao;
	
	@Override
	public boolean checkAdmin(MemberVO member) {
		
		if(mDao.selectOneMember(member).getM_ADMIN()=='Y')
			return true;	
		else return false;
	}

	@Override
	public int checkPw(MemberVO member) {
		
		if(mDao.selectOneMember(member)==null)
			return 2;
			else{
				if(mDao.selectOneMember(member).getM_PASSWORD().equals(member.getM_PASSWORD())){
				return 1;
		}else return 3;
			}
	}
	
	@Override
	public MemberVO selectAllMember(HashMap<String, Object> member) {
		mDao.selectAllMember(member);
		return null;
	}

	@Override
	public int updateMember(MemberVO member) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int changeRank(MemberVO member) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int changePrivate(MemberVO member) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public PhotoVO selectPhoto(MemberVO member, int page) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<PhotoVO> getPhotoList(MemberVO member, int page) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int likePhoto(PhotoVO photo, MemberVO member) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void join(MemberVO member) {
		mDao.insertMember(member);
		
	}

	@Override
	public  MemberVO selectOneMember(MemberVO member) {
		// TODO Auto-generated method stub
		return mDao.selectOneMember(member);
	}


	




}
