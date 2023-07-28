package utils;

import java.awt.Component;

import javax.swing.JOptionPane;
import javax.swing.JTextField;

public class CustomSwingTextUtil {
					//Frame클래스 안에 있을 땐 contentpane인데, 메서드를 따로 뺐으니까 Component추가.
	public static boolean isTextEmpty(Component targetComponent, String str) { 
		
		if(str != null) {
			if(!str.isBlank()) {
				return false; //null, blank 아니면
			}
		}
		//null or Blank 이면
		
		JOptionPane.showMessageDialog(targetComponent, "내용을 입력하세요.", "입력오류", JOptionPane.ERROR_MESSAGE );
		return true;
		
	}
	
	public static void clearTextField(JTextField textField) {
		textField.setText("");
	}

}
