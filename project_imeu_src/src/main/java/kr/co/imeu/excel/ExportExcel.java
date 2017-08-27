package kr.co.imeu.excel;

import java.io.File;

import jxl.CellView;
import jxl.Workbook;
import jxl.format.Alignment;
import jxl.format.Border;
import jxl.format.BorderLineStyle;
import jxl.format.Colour;
import jxl.write.Label;
import jxl.write.WritableCellFormat;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;
import jxl.write.biff.ColumnsExceededException;

public class ExportExcel {

	public String ExportExcel(String tId) throws Exception{
		String filePath = "D:/PJW.XLS";
		File file = new File(filePath);
		
		//셀 스타일 정의	- 헤드	
		WritableCellFormat headerFormat = new WritableCellFormat();
		headerFormat.setAlignment(Alignment.CENTRE);
		headerFormat.setBackground(Colour.GRAY_25);
		headerFormat.setBorder(Border.ALL, BorderLineStyle.MEDIUM);
		//셀 스타일 정의	- 데이타	
		WritableCellFormat dataFormat = new WritableCellFormat();
		dataFormat.setBorder(Border.ALL, BorderLineStyle.THIN);
		
		//엑셀 생성
		WritableWorkbook workbook = Workbook.createWorkbook(file);
		workbook.createSheet("sheet1", 0);
		WritableSheet sheet = workbook.getSheet(0);
		
		Label label = null;
		for(int i=0; i<70; i++){
			if(i == 0){//헤더처리
				label = new Label(0, i, "템플릿 아이디", headerFormat);  sheet.addCell(label);
				label = new Label(1, i, "인스턴스 아이디", headerFormat); sheet.addCell(label);
				label = new Label(2, i, "타이틀", headerFormat);       sheet.addCell(label);
				label = new Label(3, i, "값", headerFormat);         sheet.addCell(label);
				label = new Label(4, i, "순번", headerFormat);        sheet.addCell(label);
			}else{//데이터처리
				label = new Label(0, i, "TID987654321", dataFormat);  sheet.addCell(label);
				label = new Label(1, i, "CID_" + i, dataFormat);      sheet.addCell(label);
				label = new Label(2, i, "Title " + i, dataFormat);    sheet.addCell(label);
				label = new Label(3, i, String.valueOf(i+10000), dataFormat);  sheet.addCell(label);
				label = new Label(4, i, String.valueOf(i), dataFormat);        sheet.addCell(label);
			}
		}
		
		//칼럼 오토사이즈
		/*
		CellView cellView = new CellView();
		cellView.setAutosize(Colu);
		
		for(int i=0; i<5; i++){
			sheet.setColumnView(i, cellView);
		}
		
		CellView cellView = null;
		for(int i=0; i<5; i++){
			cellView = sheet.getColumnView(i);
			cellView.setAutosize(true);
			sheet.setColumnView(i, cellView);
		}
		*/
		
		
		
		
		//닫기
		workbook.write();
		workbook.close();

		return filePath;
	}	
}