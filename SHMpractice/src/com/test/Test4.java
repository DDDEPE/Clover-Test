package com.test;

public class Test4 {
	public static void main(String[] args) { // 문장 출력문
		
		byte byteNum = 10; //바이트 타입 변수에 10값을 저장
		int intNum = byteNum; // 인트 타입에 저장하면 인트로 자동변환
		System.out.println("intNum : " + intNum);
		
		intNum = 50; // 인트 타입 변수에 50값을 저장
		long longNum = intNum; // 롱 타입에 저장하면 롱으로 자동 변환
		System.out.println("longNum : " + longNum);	
		
		longNum = 100; // 롱에 100 저장
		float floatNum = longNum; // 플로우트 타입에 저장해서 플로우트 타입으로 자동 변환
		System.out.println("floatNum : " + floatNum);
		
		floatNum = 100.5F; // 플로우트값은 뒤에 F붙여줘야함
		double doubleNum = floatNum; // 플로우트값은 더블로 자동 변환
		System.out.println("doubleNum : " + doubleNum);
		
		byte x = 15;
		int y = x;
		System.out.println("y : " + y);
		
		int num1 = 10;
		byte num2 = (byte)num1; //int 값을 가지는 num1을 byte로 강제변환
		System.out.println("강제형변환 byte : " + num2);
		
		double num3 = 10.76;
		int num4 = (int)num3; // double 값을 가지는 num3을 int로 강제변환
		System.out.println("강제형변환 int : " + num4);
		
		double result1 = 1.6f + 3.4; //계산값을 double화 시킨다
        System.out.println("result1 : " + result1);
        
        int number1 = 20;
        double number2 = 5.5;
        
        double result2 = number1 + number2;
        
        int result3 = number1 + (int)number2; // number2를 int화 시킨다음 결과값(result3)를 int 형식으로 나타내준다.
        
        System.out.println("result2 : " + result2);
        System.out.println("result3 : " + result3);
        
        int x1 = 1;
		int y1 = 2;
		
		double result = x1/y1;
		//결과값을 0.5로 예상하겠지만
		//정수 x와 정수 y가 정수들끼리 연산하는 과정에서
		//이미 0이 되어버리고 그 값을 double 타입에 담는 거라서
		//결과값은 0.0이 된다
		
		System.out.println("result : " + result);
		
		System.exit(0);
	}

}