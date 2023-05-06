package Restart;

import java.awt.*;
import java.awt.Image;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseListener;

import javax.swing.*;

public class Restart extends JButton implements ActionListener {
    public Restart() {
        
        setBounds(5, 5, 40, 40);
        setBorder(null);
        setBackground(null);

        Image img = new ImageIcon(getClass().getResource("/icons/restart.png")).getImage().getScaledInstance(getWidth(), getHeight(), Image.SCALE_DEFAULT);

        ImageIcon icon = new ImageIcon(img);
        setIcon(icon);

        addActionListener(this);
    }

    @Override
    public void actionPerformed(ActionEvent arg0) {
        try {
            Runtime.getRuntime().exec("reboot", null, null);
        } catch(Exception ex) {
            System.out.println(ex.getMessage());
        }
    }

    
}

//#424242