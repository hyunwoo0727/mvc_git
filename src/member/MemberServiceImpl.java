package member;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import bank.AccountService;
import bank.AccountServiceImp;

public class MemberServiceImpl implements MemberService{
	private Map<String,MemberBean> map;
	private MemberDAO dao;
	private MemberBean session;
	AccountService accService = AccountServiceImp.getInstance();
	
	private static MemberServiceImpl instance = new MemberServiceImpl();
	
	private MemberServiceImpl() {
		dao =  MemberDAO.getInstance();
	}
	public static MemberServiceImpl getInstance() {
		return instance;
	}
	@Override
	public String login(MemberBean mBean) {
		String result = null;
		if(mBean.getId()==null || mBean.getPw()==null){
			return null;
		}
		if(this.checkLogin(mBean)){	
			this.map();
			session = (MemberBean) map.get(mBean.getId());
			result = session.getName();
			accService.map();
		}
		return result;
	}
	@Override
	public Map<?, ?> map() {
		this.map = new HashMap<String,MemberBean>(); 
		map = dao.selectMap();
		return map;
	}
	@Override
	public int regist(MemberBean mBean) {
		return dao.insert(mBean);
	}
	@Override
	public int update(MemberBean mBean) {
		int result= dao.updatePw(mBean);
		if(result==1){
			this.session = dao.findByPK(mBean.getId());
			this.map.replace(session.getId(), session);
		}
		return result;
	}
	@Override
	public int delete(MemberBean mBean) {
		int result = 0;
		MemberBean temp = (MemberBean) map.get(mBean.getId());
		if(temp.getPw().equals(mBean.getPw())){
			result = dao.deleteMember(mBean.getId());
			if(result==1){
				session = null;
			}
		}
		return result;
	}
	@Override
	public int count() {
		return map.values().size();
	}
	@Override
	public MemberBean findById(String id) {
		return dao.findByPK(id);
	}
	@Override
	public List<MemberBean> findBy(String word) {
		List<MemberBean> findList = new ArrayList<MemberBean>();
		Set<?> keys = map.keySet();
		Iterator<?> it = keys.iterator();
		while(it.hasNext()){
			MemberBean tempBean = (MemberBean) map.get(it.next());
			if(tempBean.getName().equals(word)){
				findList.add(tempBean);
			}
		}
		return findList;
	}
	@Override
	public ArrayList<MemberBean> list() {
		ArrayList<MemberBean> allList = new ArrayList<MemberBean>();
		Set<?> keys = map.keySet();
		Iterator<?> it = keys.iterator();
		while(it.hasNext()){
			allList.add((MemberBean) this.map.get(it.next()));
		}
		
		return allList;
	}
	public MemberBean getSession() {
		return session;
	}
	public boolean checkLogin(MemberBean mBean) {
		boolean loginOk = false;
		MemberBean m = dao.findByPK(mBean.getId());
		if(m!=null && m.getPw().equals(mBean.getPw())){
			loginOk = true;
		}
		return loginOk;
	}
	@Override
	public void logOut(MemberBean mBean) {
		if(mBean.getId().equals(session.getId()) && mBean.getPw().equals(session.getPw())){
			this.session = null;
		}  
	}
}
