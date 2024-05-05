using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class rpt2 : System.Web.UI.Page
{
   // string cnstr = @"Data1 Source=L1_52;Initial Catalog=db_Final;Integrated Security=True";
   // string cnstr = "Data Source=DESKTOP-NF603TU;Initial Catalog=db_final;Integrated Security=True";
    SqlConnection conn;
   
    protected void Page_Load(object sender, EventArgs e)
    {
        string cnstr = Session["cnstr"].ToString();
       String user_email = Request.QueryString["name1"];
       String condition = Request.QueryString["req"];
       String kp=Request.QueryString["k"];

        //String user_email = Request.QueryString["user_email"];

        conn = new SqlConnection(cnstr);
         conn.Open();
         string QRY;
       
       //Response.Write(name_querystring);

       if (condition.Equals("true"))
       {
           QRY = "UPDATE tbl_final_booking set acc_rej=1 , requested='Accepted' where email='" + user_email + "'";
           SqlCommand cmd1 = new SqlCommand(QRY, conn);
           cmd1.ExecuteNonQuery();
           Response.Write("done");
           Response.Write(kp);


           String qryinsert = "insert into tbl_order(o_id,u_name,cont,addre,requested,acc,time,a_id,email,u_date) (";
                  qryinsert += "(select user_id,user_name,contact,address,requested,acc_rej,time,area_id,email,u_date from tbl_final_booking where email='" + user_email + "')";
                  qryinsert += ")";
            
        SqlCommand cmd2 = new SqlCommand(qryinsert, conn);
           cmd2.ExecuteNonQuery();

            /****** Script for SelectTopNRows command from SSMS  ******/
            //SELECT TOP (1000) [id]
            //      ,[email]
            //      ,[time_period]
            //      ,[services]
            //      ,[price]
            //      ,[ppl_count]
            //      ,[room_count]
            //      ,[a_id]
            //  FROM [db_final].[dbo].[booking_count]

            //time_period,services,price,room_count,ppl_count= '"+Session["area"]+"'" ; email='" + user_email + "'";
            String qryadd = "update tbl_order set price =";
           qryadd += "(select price from booking_count where email='" + user_email + "'";
            qryadd += "), time_period =";
           qryadd += " (select time_period from booking_count where  email='" + user_email + "'";
            qryadd += "), services =";
           qryadd += " (select services from booking_count where  email='" + user_email + "'";
            qryadd += "), room_count =";
           qryadd += " (select room_count from booking_count where email='" + user_email + "'";
            qryadd += "), ppl_count =";
           qryadd += " (select ppl_count from booking_count where  email='" + user_email + "'";
            qryadd += ") where  email='" + user_email + "'";


            SqlCommand cmd3= new SqlCommand(qryadd, conn);
           
           cmd3.ExecuteNonQuery();


           String qrydel = "delete from tbl_final_booking where  email='" + user_email + "'";
            //SqlCommand cmd = new SqlCommand();'"+Session["email"]+"'"

            SqlCommand cmd4 = new SqlCommand(qrydel, conn);
           cmd4.ExecuteNonQuery();

           String qrydel2 = "delete from booking_count where  email='" + user_email + "'";
            SqlCommand cmd5 = new SqlCommand(qrydel2, conn);
           cmd5.ExecuteNonQuery();

            String qryadd2 = "update tbl_order set m_id =";
            qryadd2 += "(select id from tb_maid where maid_name='" + kp;
            qryadd2 += "') where email='" + user_email + "'";
            //, m_name='" + kp + "' where o_id= (select user_id from tbl_final_booking where email='" + user_email + "')";
            SqlCommand cmd8 = new SqlCommand(qryadd2, conn);
            cmd8.ExecuteNonQuery();



            Response.Redirect("maidsidedisplay.aspx");
        }

       else if (condition.Equals("false"))
       {
           //QRY = "UPDATE tbl_final_booking set acc_rej=0,requested='false' where user_name='" + name_querystring + "'";
           //SqlCommand cmd = new SqlCommand(QRY, conn);
           //cmd.ExecuteNonQuery();
           //Response.Write("not done");
           QRY = "UPDATE tbl_final_booking set acc_rej=0 , requested='Rejected' where  email='" + user_email + "'";
            SqlCommand cmd6 = new SqlCommand(QRY, conn);
           cmd6.ExecuteNonQuery();

            String qryinsert = "insert into tbl_order(o_id,u_name,cont,addre,requested,acc,time,a_id,email,u_date) (";
            qryinsert += "(select user_id,user_name,contact,address,requested,acc_rej,time,area_id,email,u_date from tbl_final_booking where email='" + user_email + "')";
            qryinsert += ")";

            SqlCommand cmd2 = new SqlCommand(qryinsert, conn);
            cmd2.ExecuteNonQuery();


            String qryadd = "update tbl_order set price =";
            qryadd += "(select price from booking_count where email='" + user_email + "'";
            qryadd += "), time_period =";
            qryadd += " (select time_period from booking_count where  email='" + user_email + "'";
            qryadd += "), services =";
            qryadd += " (select services from booking_count where  email='" + user_email + "'";
            qryadd += "), room_count =";
            qryadd += " (select room_count from booking_count where email='" + user_email + "'";
            qryadd += "), ppl_count =";
            qryadd += " (select ppl_count from booking_count where  email='" + user_email + "'";
            qryadd += ") where  email='" + user_email + "'";

            SqlCommand cmd3 = new SqlCommand(qryadd, conn);

            cmd3.ExecuteNonQuery();

            String qrydel2 = "delete from tbl_final_booking where email='" + user_email + "'";
            //SqlCommand cmd = new SqlCommand(); 
            SqlCommand cmd9 = new SqlCommand(qrydel2, conn);
           cmd9.ExecuteNonQuery();

            String qrydel3 = "delete from booking_count where  email='" + user_email + "'";
            SqlCommand cmd5 = new SqlCommand(qrydel3, conn);
            cmd5.ExecuteNonQuery();

           

            Response.Redirect("maidsidedisplay.aspx");
       }

       conn.Close();
       
    }
    
}
