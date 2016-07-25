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
	
	AccountService accService = AccountServiceImp.getInstance();
	
	private static MemberServiceImpl instance = new MemberServiceImpl();
	
	private MemberServiceImpl() {
		dao =  MemberDAO.getInstance();
	}
	public static MemberServiceImpl getInstance() {
		return instance;
	}
	@Override
	public MemberBean login(MemberBean mBean) {
		if(mBean.getId()==null || mBean.getPw()==null){
			return null;
		}
		if(this.checkLogin(mBean)){	
			this.map();
			accService.map();
			return map.get(mBean.getId());
		}
		return null;
	}
	@Override
	public Map<?, ?> map() {
		this.map = new HashMap<String,MemberBean>(); 
		map = dao.selectMap();
		return map;
	}
	@Override
	public int regist(MemberBean mBean) {
		if(dao.findByPK(mBean.getId())!=null){
			return dao.insert(mBean);
		}
		return 0;
	}
	@Override
	public int update(MemberBean mBean) {
		int result = dao.updatePw(mBean);
		if(result==1){
			this.map.replace(mBean.getId(), dao.findByPK(mBean.getId()));
		}
		return result;
	}
	@Override
	public int delete(MemberBean mBean) {
		int result = 0;
		MemberBean temp = (MemberBean) map.get(mBean.getId());
		if(temp.getPw().equals(mBean.getPw())){
			result = dao.deleteMember(mBean.getId());
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
			if(tempBean.getName().equals(word) || tempBean.getId().equals(word)){
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
	public boolean checkLogin(MemberBean mBean) {
		boolean loginOk = false;
		MemberBean m = dao.findByPK(mBean.getId());
		if(m!=null && m.getPw().equals(mBean.getPw())){
			loginOk = true;
		}
		return loginOk;
	}
}
