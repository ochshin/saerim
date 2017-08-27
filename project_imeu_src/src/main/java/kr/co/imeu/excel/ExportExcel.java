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
		
		//�� ��Ÿ�� ����	- ���	
		WritableCellFormat headerFormat = new WritableCellFormat();
		headerFormat.setAlignment(Alignment.CENTRE);
		headerFormat.setBackground(Colour.GRAY_25);
		headerFormat.setBorder(Border.ALL, BorderLineStyle.MEDIUM);
		//�� ��Ÿ�� ����	- ����Ÿ	
		WritableCellFormat dataFormat = new WritableCellFormat();
		dataFormat.setBorder(Border.ALL, BorderLineStyle.THIN);
		
		//���� ����
		WritableWorkbook workbook = Workbook.createWorkbook(file);
		workbook.createSheet("sheet1", 0);
		WritableSheet sheet = workbook.getSheet(0);
		
		Label label = null;
		for(int i=0; i<70; i++){
			if(i == 0){//���ó��
				label = new Label(0, i, "���ø� ���̵�", headerFormat);  sheet.addCell(label);
				label = new Label(1, i, "�ν��Ͻ� ���̵�", headerFormat); sheet.addCell(label);
				label = new Label(2, i, "Ÿ��Ʋ", headerFormat);       sheet.addCell(label);
				label = new Label(3, i, "��", headerFormat);         sheet.addCell(label);
				label = new Label(4, i, "����", headerFormat);        sheet.addCell(label);
			}else{//������ó��
				label = new Label(0, i, "TID987654321", dataFormat);  sheet.addCell(label);
				label = new Label(1, i, "CID_" + i, dataFormat);      sheet.addCell(label);
				label = new Label(2, i, "Title " + i, dataFormat);    sheet.addCell(label);
				label = new Label(3, i, String.valueOf(i+10000), dataFormat);  sheet.addCell(label);
				label = new Label(4, i, String.valueOf(i), dataFormat);        sheet.addCell(label);
			}
		}
		
		//Į�� ���������
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
		
		
		
		
		//�ݱ�
		workbook.write();
		workbook.close();

		return filePath;
	}	
}