package com.test;

import java.awt.*;
import javax.swing.*;//JFrame(스윙)


//1.창을 띄우는 방법 -> 상속을 받아서 처리해주는 방법
public class Test8 extends JFrame{
	
	Test8(String s){

}
	
	public static void main(String[] args) {
		
		Test8 f = new Test8("창에 제목 출력"); //상속된 클래스로 인스턴스화
		f.setBounds(400,100,40,300);
		f.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		f.setVisible(true);
	}

}