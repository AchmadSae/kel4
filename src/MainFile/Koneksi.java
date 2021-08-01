/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MainFile;
import java.sql.*;
/**
 *
 */
public class Koneksi {
    private Connection Koneksi;
    public Connection Connect(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Koneksi OK");
        } catch (ClassNotFoundException ex){
            System.out.println("Gagal Koneksi "+ex);
        }
        String url = "jdbc:mysql//localhost/db_ticketing";
        try{
            Koneksi = DriverManager.getConnection("jdbc:mysql://localhost/db_ticketing", "root","");
            System.out.println("Database Connected");
            }
        catch (SQLException ex){
            System.out.println("Database Not Connected "+ex);
        }
        return Koneksi;
    }
    
}
