using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{
    
    String cnstr = @"Data Source=ADMINRG-A67IJHT\SQLEXPRESS;Initial Catalog=db_Final;Integrated Security=True";
    SqlConnection conn;


    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    

    protected void btn_log_Click1(object sender, EventArgs e)
    {

        conn = new SqlConnection(cnstr);
        conn.Open();
        Session["cnstr"] = @"Data Source=ADMINRG-A67IJHT\SQLEXPRESS;Initial Catalog=db_Final;Integrated Security=True";
        String Qry = "SELECT contact,password FROM tb_reg_login WHERE contact='" + mail.Text + "' AND password='" + pass.Text + "'";
        SqlCommand comm = new SqlCommand(Qry, conn);
        //int i =  comm.ExecuteNonQuery();
        SqlDataAdapter DA = new SqlDataAdapter(comm);
        DataTable DT = new DataTable();
        DA.Fill(DT);
        comm.ExecuteNonQuery();
        //if (DT.Rows.Count > 0)

        if (DT.Rows.Count > 0)
        {
            
            Session["email"] = mail.Text;
            Session["pass"] = pass.Text;

            if (Session["email"].Equals("admin@admin.com") && Session["pass"].Equals("12345"))
            {
                Response.Redirect("admin_01.aspx");
            }
            else
            {

                Response.Write("User Login Done Sucessfully");
                Response.Redirect("index.aspx");

            }
            // lbl.Text = "Login Done Sucessfully";
            //lbl.ForeColor = System.Drawing.Color.Red; 

        }
        else
        {
            lbl.Text = "Your Details are Invalid";
            lbl.ForeColor = System.Drawing.Color.Red;

        }

    }
   protected void logout_Click(object sender, EventArgs e)
    { 
        Session["email"] = null;
        Session["pass"] = null;

        Response.Redirect("index.aspx");
    }

}
