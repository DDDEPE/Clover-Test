package com.test;

import java.awt.*;
import javax.swing.*;

import java.awt.event.*;

public class Test12 extends JFrame{
	
	Test12(){
		super("창의 이벤트 연습");
		setBounds(400,500,600,450);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setVisible(true);
	}
	
	public static void main(String[] args) {
		//TODO Auto-generated method stub
		System.out.println("WindowClosing");
		System.exit(0);
		new Test12();
	}

}
