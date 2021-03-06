/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MyHibernate;

import Models.UserData;
import Models.Supplies;
import Models.Fruits;
import Models.Inventory;
import Models.WareHouse;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

/**
 *
 * @author RAHIL
 */
public class HibernateUtil {
    private static final SessionFactory sessFact;
    private static final ServiceRegistry serviceReg;
    static {
        try{
            Configuration config=new Configuration().configure("/MyHibernate/hibernate.cfg.xml").addAnnotatedClass(WareHouse.class).addAnnotatedClass(Inventory.class).addAnnotatedClass(UserData.class).addAnnotatedClass(Supplies.class).addAnnotatedClass(Fruits.class);
            
            serviceReg=new StandardServiceRegistryBuilder().applySettings(config.getProperties()).build();
            
            sessFact=config.buildSessionFactory(serviceReg);
        }
        catch(Throwable ex){
            System.err.println("Initial SessionFactionry creation failed"+ex);
            throw new ExceptionInInitializerError(ex);
            
        }
    }
    
    public static SessionFactory getSessionFactory(){
        return sessFact;
    }
    public static void closeSessionFactory(){
        if(serviceReg != null){
            StandardServiceRegistryBuilder.destroy(serviceReg);
        }
    }
    
    public static Date convertDateToSqlDate(String formDate){
        Date dt=null;
        try{
            dt=new Date(
                    new SimpleDateFormat("yyyy-MM-dd").parse(formDate).getTime()
            );
        }
        catch(ParseException pe){
            System.out.println("date conversion error");
        }
        catch(NullPointerException e){
            System.out.println("date conversion error: null pointer exception\n");
        }
        return dt;
    }
}
