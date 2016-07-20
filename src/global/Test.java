package global;

/**
 * @date   :2016. 7. 19.
 * @author :HyunWoo Lee
 * @file   :Test.java
 * @story  :
*/

public class Test {
	public static void main(String[] args) {
		String str = "/global/member/home.do";
		System.out.println();
		String path = str;
		
		String result = path.substring(path.lastIndexOf("/")+1, path.indexOf("."));
		System.out.println(result);
		path = path.substring(0, path.indexOf("/"+result));
		System.out.println(path);
	}
}
