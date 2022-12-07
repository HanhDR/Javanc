package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.khachhangbean;

public class thongtindao {
	public ArrayList<khachhangbean> getthongtin(int makh){
		   try {
			   ArrayList<khachhangbean> dsthongtin= new ArrayList<khachhangbean>();
//			   b1: ket noi vao csdl
			   CoSodao cs = new CoSodao();
			   cs.KetNoi();
//			   b2: Lay du lieu ve
			   String sql = "select * from KhachHang where makh=?";
			   PreparedStatement cmd = cs.cn.prepareStatement(sql);
			   cmd.setInt(1,makh);
			   ResultSet rs = cmd.executeQuery();
			   while(rs.next()) {
				   int mkh=rs.getInt("makh");
				   String hoten = rs.getString("hoten");
				   String diachi = rs.getString("diachi");
				   String email = rs.getString("email");
				   String sdt = rs.getString("sodt");
				   String TenDangNhap = rs.getString("tendn");
				   String MatKhau = rs.getString("pass");
				   dsthongtin.add(new khachhangbean(mkh, hoten, diachi, email, sdt, TenDangNhap, MatKhau));
			   }
			   
//			   b3: close rs, cn
			   rs.close();
			   cs.cn.close();
			   
			   return dsthongtin;
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
				return null;
			}

	}
}
