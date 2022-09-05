package com.test;

import javax.swing.*;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.*;

public class Test15 {
	
	public static void main(String[] args) {
		Dimension dim = new Dimension(400, 100);
		
		JFrame frame = new JFrame("현민 테스트 페이지");
		frame.setLocation(200, 400);
		frame.setPreferredSize(dim);
		
		JButton label1 = new JButton("북");
		label1.setHorizontalAlignment(SwingConstants.CENTER);
		label1.setVerticalAlignment(SwingConstants.CENTER);
		label1.setOpaque(true);
		label1.setBackground(Color.YELLOW);
		JLabel label2 = new JLabel("동");
		label2.setHorizontalAlignment(SwingConstants.CENTER);
		label2.setVerticalAlignment(SwingConstants.CENTER);
		label2.setOpaque(true);
		label2.setBackground(Color.CYAN);
		JLabel label3 = new JLabel("서");
		label3.setHorizontalAlignment(SwingConstants.CENTER);
		label3.setVerticalAlignment(SwingConstants.CENTER);
		label3.setOpaque(true);
		label3.setBackground(Color.RED);
		JLabel label4 = new JLabel("남");
		label4.setHorizontalAlignment(SwingConstants.CENTER);
		label4.setVerticalAlignment(SwingConstants.CENTER);
		label4.setOpaque(true);
		label4.setBackground(Color.WHITE);
		JLabel label5 = new JLabel("중앙");
		label5.setHorizontalAlignment(SwingConstants.CENTER);
		label5.setVerticalAlignment(SwingConstants.CENTER);
		label5.setOpaque(true);
		label5.setBackground(Color.LIGHT_GRAY);
		
		frame.add(label1, BorderLayout.NORTH);
		frame.add(label2, BorderLayout.EAST);
		frame.add(label3, BorderLayout.WEST);
		frame.add(label4, BorderLayout.SOUTH);
		frame.add(label5, BorderLayout.CENTER);
		
		frame.pack();
		frame.setVisible(true);
		
	}

}
