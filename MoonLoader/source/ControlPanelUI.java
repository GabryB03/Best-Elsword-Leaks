/*
 * Decompiled with CFR 0_123.
 */
import java.awt.Component;
import java.awt.Container;
import java.awt.Dimension;
import java.awt.LayoutManager;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import javax.swing.GroupLayout;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.LayoutStyle;

public class ControlPanelUI
extends JFrame {
    private final Queue<ControlPanelEvent> eventQueue = new ConcurrentLinkedQueue<ControlPanelEvent>();
    private JButton jButton1;
    private JButton jButton2;
    private JButton jButton3;
    private JLabel jLabel1;
    private JLabel jLabel2;
    private JLabel jLabel3;
    private JScrollPane jScrollPane1;
    private JTextArea jTextArea1;
    private JTextField jTextField1;

    public ControlPanelUI() {
        this.initComponents();
        this.setVisible(true);
    }

    private void initComponents() {
        this.jLabel1 = new JLabel();
        this.jButton1 = new JButton();
        this.jButton2 = new JButton();
        this.jButton3 = new JButton();
        this.jLabel2 = new JLabel();
        this.jScrollPane1 = new JScrollPane();
        this.jTextArea1 = new JTextArea();
        this.jLabel3 = new JLabel();
        this.jTextField1 = new JTextField();
        this.setDefaultCloseOperation(3);
        this.setTitle("MoonLoader Lua editor");
        this.setMinimumSize(new Dimension(450, 275));
        this.jLabel1.setText("Enter Lua code here:");
        this.jButton1.setText("Load");
        this.jButton1.addActionListener(new ActionListener(){

            @Override
            public void actionPerformed(ActionEvent evt) {
                ControlPanelUI.this.jButton1ActionPerformed(evt);
            }
        });
        this.jButton2.setText("Save");
        this.jButton2.addActionListener(new ActionListener(){

            @Override
            public void actionPerformed(ActionEvent evt) {
                ControlPanelUI.this.jButton2ActionPerformed(evt);
            }
        });
        this.jButton3.setText("Execute");
        this.jButton3.addActionListener(new ActionListener(){

            @Override
            public void actionPerformed(ActionEvent evt) {
                ControlPanelUI.this.jButton3ActionPerformed(evt);
            }
        });
        this.jLabel2.setText("Status: Ready");
        this.jTextArea1.setColumns(20);
        this.jTextArea1.setRows(5);
        this.jScrollPane1.setViewportView(this.jTextArea1);
        this.jLabel3.setText("Lua file name:");
        this.jTextField1.setText("untitled.lua");
        GroupLayout layout = new GroupLayout(this.getContentPane());
        this.getContentPane().setLayout(layout);
        layout.setHorizontalGroup(layout.createParallelGroup(GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addContainerGap().addGroup(layout.createParallelGroup(GroupLayout.Alignment.LEADING).addComponent(this.jScrollPane1).addComponent(this.jLabel1, -1, -1, 32767).addGroup(layout.createSequentialGroup().addComponent(this.jButton1).addPreferredGap(LayoutStyle.ComponentPlacement.RELATED).addComponent(this.jButton2).addPreferredGap(LayoutStyle.ComponentPlacement.RELATED).addComponent(this.jLabel2, -1, 158, 32767).addPreferredGap(LayoutStyle.ComponentPlacement.RELATED).addComponent(this.jButton3)).addGroup(layout.createSequentialGroup().addComponent(this.jLabel3).addPreferredGap(LayoutStyle.ComponentPlacement.RELATED).addComponent(this.jTextField1))).addContainerGap()));
        layout.setVerticalGroup(layout.createParallelGroup(GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addContainerGap().addComponent(this.jLabel1).addPreferredGap(LayoutStyle.ComponentPlacement.RELATED).addComponent(this.jScrollPane1).addPreferredGap(LayoutStyle.ComponentPlacement.RELATED).addGroup(layout.createParallelGroup(GroupLayout.Alignment.BASELINE).addComponent(this.jLabel3).addComponent(this.jTextField1, -2, -1, -2)).addPreferredGap(LayoutStyle.ComponentPlacement.UNRELATED).addGroup(layout.createParallelGroup(GroupLayout.Alignment.BASELINE).addComponent(this.jButton1).addComponent(this.jButton2).addComponent(this.jButton3).addComponent(this.jLabel2)).addContainerGap()));
        this.pack();
    }

    public void setStatusString(String status) {
        this.jLabel2.setText("Status: " + status);
    }

    public void setLuaCode(String code) {
        this.jTextArea1.setText(code);
    }

    public ControlPanelEvent getNextEvent() {
        ControlPanelEvent e = this.eventQueue.poll();
        return e == null ? new ControlPanelEvent(0) : e;
    }

    private void addEvent(ControlPanelEvent e) {
        this.eventQueue.add(e);
    }

    private void jButton1ActionPerformed(ActionEvent evt) {
        String filename = this.jTextField1.getText();
        this.addEvent(new ControlPanelEvent(1, filename));
    }

    private void jButton2ActionPerformed(ActionEvent evt) {
        String filename = this.jTextField1.getText();
        String data = this.jTextArea1.getText();
        this.addEvent(new ControlPanelEvent(2, filename, data));
    }

    private void jButton3ActionPerformed(ActionEvent evt) {
        String data = this.jTextArea1.getText();
        this.addEvent(new ControlPanelEvent(3, data));
    }

}

