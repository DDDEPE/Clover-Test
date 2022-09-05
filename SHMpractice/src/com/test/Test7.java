package com.test;

import java.awt.*; //Frame
import javax.swing.*; //JFrame(스윙)

public class Test7 {
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//1. 창을 생성 -> JFRAME 생성
		JFrame f = new JFrame("창에 제목 출력");
		//2.창의 사이즈를 설정
		f.setLocation(500,500); //위치 설정
		f.setSize(1000,1000); //X,Y
		
		
		//3. 종료 처리
		f.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		//4. 창을 화면에 보여달라
		f.setVisible(true);
	}

}
