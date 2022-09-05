package com.test;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.Font;

public class Test13 {
	
	public static void main(String[] args) {
		
		Dimension dim = new Dimension(400,100);
		
		JFrame frame = new JFrame("Morph's House");
		frame.setLocation(200, 400);
		frame.setPreferredSize(dim);
		
		GridLayout layout = new GridLayout(1,2);
		frame.setLayout(layout);
		
		JLabel label = new JLabel("0");
		frame.add(label);
		
		JButton button = new JButton("그냥 누르세요");
		button.setFont(new Font("궁서",Font.ITALIC,20));
		button.setBackground(Color.magenta);
		button.setToolTipText("이건 테스트 링크입니다.");
		System.out.println("getFont :"+button.getFont());
		frame.add(button);
		
		ActionListener listener = new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				//TODO Auto-generated method stub
				label.setText(String.valueOf(Integer.valueOf(label.getText()) + 1));
			}
		};
		button.addActionListener(listener);
		
		frame.add(button);
		frame.pack();
		frame.setVisible(true);
	}

}
