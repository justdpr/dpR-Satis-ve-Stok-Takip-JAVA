/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dprsatisprogrami;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author tayyi
 */
public class sqlbaglantisi {
    
    String kulad="root";
    String parola="";
    String db_name="petshop";
    String host="localhost";
    int port=3306;
    Connection conn=null;
    Statement statement=null;
    ResultSet rs=null;
    
    public sqlbaglantisi(){
    String url="jdbc:mysql://"+host+":"+port+"/"+db_name+"?CharacterEncoding=utf8";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn=DriverManager.getConnection(url,kulad,parola);
            System.out.println("Bağlantı Başarılı");
        } catch (ClassNotFoundException ex) {
            System.out.println("Driver Bulunamadı");
        } catch (SQLException ex) {  
            System.out.println("Bağlantı Hatası");
        }
    
    
    }
        public static void main(String[] args) {
        
        sqlbaglantisi baglan=new sqlbaglantisi();
        baglan.KullaniciGetir();
        }
        public void KullaniciGetir(){
        
        String sorgu="Select * from kullanici" ;
        try {
            statement=conn.createStatement();
            rs=statement.executeQuery(sorgu);

            String kullaniciadi,sifre;
            while (rs.next()) {
                kullaniciadi=rs.getString("kullanici");
                sifre=rs.getString("sifre");

                System.out.println("Kullanıcı Adı: "+kullaniciadi+"\nŞifre: "+sifre);
            }
            
            
        } catch (SQLException ex) {
            System.out.println("Kayıt Getirilemedi");
        }
        
        
    }
}
