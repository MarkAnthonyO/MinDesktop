package Main;

import javax.swing.*;

import Restart.Restart;

import java.awt.*;

public class Main extends JFrame {

    JPanel base = new JPanel();
    Restart btnR = new Restart();

    public Main() {
	    setSize(100, 40);
	    setLocationRelativeTo(null);
	    setDefaultCloseOperation(EXIT_ON_CLOSE);

        base.setBackground(Color.darkGray);
        getContentPane().add(base);

        base.setLayout(null);
        base.add(btnR);
    }

    public static void main(String[] args) {
	    new Main().setVisible(true);
    }
}