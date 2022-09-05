package test01;
import java.awt.Graphics;
import java.awt.Image;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;

public class Test11BorderTest extends JFrame{
	/*버튼생성*/
	static JButton b1=new JButton("버튼1");
	/*그려주기*/
	private ImageIcon btImage = new ImageIcon(Test11BorderTest.class.getResource("../image/exitButtonP.png"));//나가기버튼 눌렀을 때 이미지
	private Image background=new ImageIcon(Test11BorderTest.class.getResource("../image/background.png")).getImage();//배경이미지
	/*생성자*/
	public Test11BorderTest() {
		homeframe();
		btn();
	}
	/*프레임 생성 함수*/
	public void homeframe() {
		setTitle("1");//타이틀
		setSize(400,600);//프레임의 크기
		setResizable(false);//창의 크기를 변경하지 못하게
		setLocationRelativeTo(null);//창이 가운데 나오게
		setLayout(null);//레이아웃을 내맘대로 설정가능하게 해줌.
		setVisible(true);//창이 보이게
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);//JFrame이 정상적으로 종료되게
	}
	/*버튼설정*/
	public void btn() {
		b1.setLayout(null);//레이아웃
		b1.setBounds(0, 0, 100, 100);//위치,크기
		add(b1);//프레임에 추가
		b1.setIcon(btImage);//버튼의 아이콘 설정
	}
	public void paint(Graphics g) {//그리는 함수
		g.drawImage(background, 0, 0, null);//background를 그려줌
		//paintComponents(g);//add로 추가해준부분을 그려줌
	}
	/*메인함수*/
	public static void Test11BorderTest(String[] args){
		new Test11BorderTest();
	}
}