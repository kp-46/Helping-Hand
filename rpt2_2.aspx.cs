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
   
    //string cnstr = @"Data1 Source=L1_52;Initial Catalog=db_Final;Integrated Security=True";
    SqlConnection conn;
   
    protected void Page_Load(object sender, EventArgs e)
    {
        string cnstr = Session["cnstr"].ToString();
       String name_querystring = Request.QueryString["name1"];
       String condition = Request.QueryString["req"];
       String kp=Request.QueryString["k"];
    
         conn = new SqlConnection(cnstr);
         conn.Open();
         string QRY;
       
       Response.Write(name_querystring);

       if (condition.Equals("true"))
       {
           QRY = "UPDATE tbl_final_booking set acc_rej=1 , requested='true' where user_name='" + name_querystring + "'";
           SqlCommand cmd = new SqlCommand(QRY, conn);
           cmd.ExecuteNonQuery();
           Response.Write("done");
           Response.Write(kp);


           String qryinsert = "insert into tbl_order(o_id,u_name,cont,addre,requested,acc) (";
           qryinsert += "(select user_id,user_name,contact,address,requested,acc_rej from tbl_final_booking where user_name='" + name_querystring + "')";
                  qryinsert += ")";
            cmd = new SqlCommand(qryinsert, conn);
           cmd.ExecuteNonQuery();

           String qryadd = "update tbl_order set m_id =";
           qryadd += "(select id from tb_maid where maid_name = '"+kp;
           qryadd += "'), maid_name = '" + kp + "', maid_img = (select maid_img from tb_maid where maid_name='" + kp + "') where o_id= (select user_id from tbl_final_booking where user_name='" + name_querystring + "')";
            
           cmd = new SqlCommand(qryadd, conn);
           cmd.ExecuteNonQuery();


           String qrydel = "delete from tbl_final_booking where user_name='" + name_querystring + "'";
           //SqlCommand cmd = new SqlCommand();
           cmd = new SqlCommand(qrydel, conn);
           cmd.ExecuteNonQuery();


           
     
            Response.Redirect("maidsidedisplay.aspx");
        }

       else if (condition.Equals("false"))
       {
           //QRY = "UPDATE tbl_final_booking set acc_rej=0,requested='false' where user_name='" + name_querystring + "'";
           //SqlCommand cmd = new SqlCommand(QRY, conn);
           //cmd.ExecuteNonQuery();
           //Response.Write("not done");
           QRY = "UPDATE tbl_final_booking set acc_rej=0 , requested='false' where user_name='" + name_querystring + "'";
           SqlCommand cmd = new SqlCommand(QRY, conn);
           cmd.ExecuteNonQuery();


           String qryinsert = "insert into tbl_order(o_id,u_name,cont,addre,acc,requested) (";
           qryinsert += "(select user_id,user_name,contact,adress,acc_rej,requested from tbl_final_booking where user_name='" + name_querystring + "')";
           qryinsert += ")";
           cmd = new SqlCommand(qryinsert, conn);
           cmd.ExecuteNonQuery();

           String qryadd = "update tbl_order set m_id =";
           qryadd += "(select maid_id from tbl_maid where maid_name='" + kp;
           qryadd += "'), m_name='" + kp + "' where o_id= (select user_id from tbl_final_booking where user_name='" + name_querystring + "')";
           cmd = new SqlCommand(qryadd, conn);
           cmd.ExecuteNonQuery();


           String qrydel = "delete from tbl_final_booking where user_name='" + name_querystring + "'";
           //SqlCommand cmd = new SqlCommand();
           cmd = new SqlCommand(qrydel, conn);
           cmd.ExecuteNonQuery();


           Response.Redirect("maidsidedisplay.aspx");
       }

       conn.Close();
       
    }
    
}
