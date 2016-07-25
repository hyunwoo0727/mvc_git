/**
 * 
 */
package member;


import global.CommonService;

/**
 * @date   : 2016. 6. 17.
 * @author : HyunWoo Lee
 * @file   : StudentService.java 
 * @story  : 
*/
public interface MemberService extends CommonService{
	public int regist(MemberBean mBean);
	public int update(MemberBean mBean);
	public int delete(MemberBean mBean);
	public MemberBean findById(String id);
	public MemberBean login(MemberBean mBean);
}
