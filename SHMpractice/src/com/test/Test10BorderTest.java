package com.test;

//JFrame ->JPanel->JButton
//JTextField(입력, 채팅창)
//JTextArea(대화창)->JPanel->JFrame

import java.awt.*;
import javax.swing.*;

public class Test10BorderTest extends JFrame {
	
	JPanel panel;
	JButton b1,b2,b3,b4,b5;

	public Test10BorderTest() {
		super("창에 컴포넌츠 부착 시킴"); // JFrame의 생성자를 호출
		// setTitle("창에 컴포넌츠 부착 시킴");
		setBounds(500, 500, 600, 450);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		getContentPane().setBackground(Color.CYAN);
		// ----------컴포넌트 생성----------
		panel = new JPanel();
		b1 = new JButton("연습1");
		b2 = new JButton("연습2");
		b3 = new JButton("연습3");
		b4 = new JButton("연습4");
		setVisible(true);
		//부착
		//panel.add(b1);
		//panel.add(b2);
		//panel.add(b3);
		//panel.add(b4);
		//panel.add(b5);
		
		//this.add(b1,"WEST");
		//this.add(b2,"East");
		//this.add(b3,"Center");
		//this.add(b4,"North");
		//this.add(b5,"South");
		
		//this.getContentPane().add(panel);
		
		FlowLayout f1 = new FlowLayout();
		this.getContentPane().setLayout(f1);
		add(b1);add(b2);add(b3);add(b4);add(b5);
		

	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub.
		Test10BorderTest bt = new Test10BorderTest();
	}

}
