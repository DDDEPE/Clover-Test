package com.test;

import java.awt.*; //Frame
import javax.swing.*; //JFrame(스윙)

//창 띄우기

public class Test9 extends JFrame {
	
	Test9(String s){
		setTitle(s); //프로그램의 이름 생성
		setBounds(400,100,600,300);
		
		setResizable(true); //프로그램 창 화면 크기 조정 On/Off 설정
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setVisible(true);
		
		getContentPane().setBackground(Color.CYAN);
	}
	
	public static void main(String[] args) {
		
	  Test9 f = new Test9("창에 제목 출력");
		
	}

}
