package event;

import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;

import javax.swing.JOptionPane;
								//마우스리스너는 Interfaces. 
								//Adapter는 추상클래스 -> extends. ->필요한거만 오버라이드 하겠다.
//public class AddUserButtonMouseListener implements MouseListener{
public class AddUserButtonMouseListener extends MouseAdapter {

	
	//인터페이스 안에 있는 추상메서드를 모두 Override해줘야함.
	@Override
	public void mouseClicked(MouseEvent e) {
		// TODO Auto-generated method stub
	}

	@Override
	public void mousePressed(MouseEvent e) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void mouseReleased(MouseEvent e) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void mouseEntered(MouseEvent e) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void mouseExited(MouseEvent e) {
		// TODO Auto-generated method stub
		
	}

}
