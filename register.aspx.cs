using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class register : System.Web.UI.Page
{
    String cnstr = @"Data Source=ADMINRG-A67IJHT\SQLEXPRESS;Initial Catalog=db_Final;Integrated Security=True";
    SqlConnection conn;


    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_reg_Click(object sender, EventArgs e)
    {
        //string cnstr = Session["cnstr"].ToString();
        conn = new SqlConnection(cnstr);
        conn.Open();

        String Qry = "INSERT INTO tb_reg_login(fname,lname,contact,email,password) VALUES(";
        Qry +="'"+fname.Text+"', ";
        Qry += "'"+lname.Text + "', ";
        Qry += "'"+txtemail.Text+"', ";
        Qry += "'"+txtcont.Text+"', ";
        Qry += "'"+txtpass.Text+"'";
        Qry += ")";

        SqlCommand comm = new SqlCommand(Qry,conn);
        int i=comm.ExecuteNonQuery();
        if(i>0)
        {
            Response.Redirect("login.aspx");
        }

        conn.Close();
        fname.Text = "";
        lname.Text = "";
        txtemail.Text = "";
        txtcont.Text = "";
        txtpass.Text = "";
    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Session["email"] = null;
        Session["pass"] = null;

        Response.Redirect("index.aspx");
    }
}