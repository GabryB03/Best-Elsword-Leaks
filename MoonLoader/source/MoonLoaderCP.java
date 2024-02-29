/*
 * Decompiled with CFR 0_123.
 */
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.io.RandomAccessFile;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.Scanner;
import java.util.regex.Pattern;

public class MoonLoaderCP {
    public static void main(String[] args) {
        String pass;
        boolean fromCmdLine;
        String user;
        Scanner inscan = new Scanner(System.in);
        System.out.println("Waiting for Elsword client...");
        RandomAccessFile pipe = null;
        while (pipe == null) {
            try {
                Thread.sleep(20);
                pipe = new RandomAccessFile("\\\\.\\pipe\\MoonLoaderCommandPipe", "rw");
            }
            catch (Exception exception) {
                // empty catch block
            }
        }
        System.out.println("\n\n");
        System.out.println("Please wait until Elsword shows the login screen.");
        System.out.println("Then enter your MoonLoader account data here.\n");
        boolean bl = fromCmdLine = args.length == 3;
        if (!fromCmdLine) {
            System.out.print("Username: ");
            System.out.print("Password: ");
        } else {
            user = args[0];
            pass = args[1];
            System.out.println("Logging in using account from command line:");
            System.out.println(user);
            System.out.println(pass);
        }
        String dir = System.getenv("SystemRoot");
        if (dir == null) {
            System.out.println("Unable to get system directory.");
            return;
        }
        String[] split = dir.split(Pattern.quote("\\"));
        try {
            int b;
            byte[] buf;
            Process p = Runtime.getRuntime().exec("mountvol " + split[0] + " /L");
            InputStream s = p.getInputStream();
            StringBuilder sb = new StringBuilder();
            while ((b = s.read()) != -1) {
                sb.append((char)b);
            }
            s.close();
            String mcid = sb.toString();
            user = "ferrums";
            pass = "ghuik785496";
            URL url = new URL("http://j-strobl.dyndns-free.com/ml_auth.lua?user=" + user + "&pass=" + pass + "&mcid=e548693d000000000000100000000000");
            HttpURLConnection con = (HttpURLConnection)url.openConnection();
            int response = con.getResponseCode();
            if (response != 200) {
                throw new Exception("Login failed.");
            }
            InputStream dstream = con.getInputStream();
            int bytesread = dstream.read(buf = new byte[192]);
            if (bytesread < 0) {
                throw new Exception("Login failed.");
            }
            pipe.write(buf, 0, bytesread);
            pipe.write((String.valueOf(user) + "-" + pass).getBytes());
            pipe.write((String.valueOf(split[0]) + "\\").getBytes());
        }
        catch (Exception e) {
            System.out.println(e.toString());
            return;
        }
        if (fromCmdLine) {
            String luaFile = MoonLoaderCP.readLuaFile(args[2]);
            if (luaFile == null) {
                System.out.println("Could not load Lua file");
            } else {
                try {
                    pipe.write(luaFile.getBytes());
                }
                catch (IOException e) {
                    System.out.println("Could not execute Lua file: " + e.toString());
                }
            }
            return;
        }
        ControlPanelUI ui = new ControlPanelUI();
        ui.setStatusString("Ready.");
        block17 : do {
            try {
                Thread.sleep(20);
            }
            catch (InterruptedException e) {
                // empty catch block
            }
            ControlPanelEvent e = ui.getNextEvent();
            switch (e.getEventType()) {
                case 1: {
                    ui.setStatusString("Reading file...");
                    String s = MoonLoaderCP.readLuaFile(e.getParam1());
                    if (s != null) {
                        ui.setLuaCode(s);
                        ui.setStatusString("File loaded!");
                        continue block17;
                    }
                    ui.setStatusString("Read error.");
                    continue block17;
                }
                case 2: {
                    ui.setStatusString("Writing file...");
                    if (MoonLoaderCP.writeLuaFile(e.getParam1(), e.getParam2())) {
                        ui.setStatusString("File saved!");
                        continue block17;
                    }
                    ui.setStatusString("Write error.");
                    continue block17;
                }
                case 3: {
                    ui.setStatusString("Executing...");
                    try {
                        pipe.write(e.getParam1().getBytes());
                        ui.setStatusString("Executed!");
                        continue block17;
                    }
                    catch (Exception ex) {
                        ui.setStatusString("Execution error.");
                    }
                }
            }
        } while (true);
    }

    private static String readLuaFile(String filename) {
        try {
            int b;
            FileInputStream stream = new FileInputStream(filename);
            StringBuilder sb = new StringBuilder();
            while ((b = stream.read()) != -1) {
                sb.append((char)b);
            }
            stream.close();
            return sb.toString();
        }
        catch (IOException e) {
            System.out.println("Read failed:");
            System.out.println(e.toString());
            return null;
        }
    }

    private static boolean writeLuaFile(String filename, String content) {
        try {
            FileOutputStream stream = new FileOutputStream(filename);
            stream.write(content.getBytes());
            stream.close();
            return true;
        }
        catch (IOException e) {
            System.out.println("Write failed:");
            System.out.println(e.toString());
            return false;
        }
    }
}

