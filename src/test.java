import java.util.HashMap;
import java.util.Map;

import com.bysj.bean.VoteDetailBean;


public class test {
	
	public static void main(String[] args){
		VoteDetailBean voteDetail = new VoteDetailBean();
		System.out.println("percentage:"+voteDetail.getPercentage());
		
		Map<String,String> map = new HashMap<String,String>();
		map.put("1", null);
		map.put("2", null);
		map.put("3", null);
		map.put("4", "4");
		
			System.out.println(map.get("4"));
	}

}
