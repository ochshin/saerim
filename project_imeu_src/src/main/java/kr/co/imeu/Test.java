package kr.co.imeu;

import kr.co.imeu.excel.ExportExcel;

public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ExportExcel exportExcel = new ExportExcel();
		try {
			exportExcel.ExportExcel("");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
