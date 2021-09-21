package prob;

import java.io.FileOutputStream;

import com.itextpdf.text.Document;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;

public class GenerationCv {
	

	 
	 
	public static void main(String args []) {
		
		
		
	
		      Document document = new Document(PageSize.A4);
			  document.addAuthor("Mourad Kmimech");
			  document.addTitle("CV");
		        try{
		            PdfWriter.getInstance(document, new FileOutputStream("hafedh.pdf"));
		            document.open();
		            Paragraph p1 = new Paragraph("Hello World!");
		            Paragraph p2 = new Paragraph("Examsmyantra.com is committed to provide you valuable information and tutorials on various technologies.");
						document.add(p1);
		            document.add(p2);
		        }
		        catch(Exception e){
		            System.out.println(e);
		        }
		        document.close();
		    }
}