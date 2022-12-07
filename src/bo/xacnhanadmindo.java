package bo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.xacnhanadminbean;
import dao.CoSodao;
import dao.xacnhanadmindao;

public class xacnhanadmindo {
	 xacnhanadmindao xndao= new xacnhanadmindao();
	  public ArrayList<xacnhanadminbean> getdanhsach(){
		  return xndao.getdanhsach();
	  }
	  public ArrayList<xacnhanadminbean> getdsxn(){
		  return xndao.getdsxn();
	  }
public void xacnhan(long mct) {
	for(xacnhanadminbean ad:xndao.getdanhsach()) {
		if(ad.getMaChiTietHD()==(mct)) {
			xndao.xacnhan(mct);
		}
	}
}

}
