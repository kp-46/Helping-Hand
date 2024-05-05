using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

//Registration,Login(2)

public partial class index : System.Web.UI.Page
{

   // System.Text.StringBuilder sb = new System.Text.StringBuilder();
   // String cnstr = @"Data1 Source=L1_52;Initial Catalog=db_Final;Integrated Security=True";
    //SqlConnection conn;
    

    protected void Page_Load(object sender, EventArgs e)
    {
        //string cnstr = Session["cnstr"].ToString();

            if (Session["email"] == null && Session["pass"] == null)
            {
            serv.Enabled = false;
             book.Enabled = false;
             //Linkbutton4.Enabled = false;
             abtus.Enabled = false;
             cntus.Enabled = false;
             logout.Enabled = false;
            logout.Visible= false;
            ords.Enabled = false;
            conf_ord.Visible = false;
            maid_ords.Visible = false;
            maid_ords.Enabled = false;
            conf_ord.Enabled = false;
            admin1.Enabled = false;
            admin2.Enabled = false;
             admin3.Enabled = false;
            admin1.Visible = false;
            admin2.Visible = false;
             admin3.Visible = false;
            ser.Visible = true;
        }
        else if (Session["email"].ToString() == "maid_ptc@gmail.com" && Session["pass"].ToString() == "maidisbest")
        {
            Session["area"]= 1;
           // Linkbutton1.Enabled = false;
            serv.Enabled = false;
            book.Enabled = false;
           // Linkbutton4.Enabled = false;
            abtus.Enabled = false;
            cntus.Enabled = false;
            logout.Enabled = true;
            serv.Visible = false;
            book.Visible = false;
            // Linkbutton4.Visible = true;
            abtus.Visible = true;
            logout.Visible = true;
            login.Visible = false;
            ords.Enabled = false;
            ords.Visible = false;
            maid_ords.Visible = true;
            conf_ord.Visible = true;
            admin1.Enabled = false;
            book.Visible = false;
            admin2.Enabled = false;
             admin3.Enabled = false;
            admin1.Visible = false;
            admin2.Visible = false;
             admin3.Visible = false;
            ser.Visible = true;
            abtus.Enabled = true;
            cntus.Enabled = true;
        }
        else if (Session["email"].ToString() == "maid_pac@gmail.com" && Session["pass"].ToString() == "maidisbest")
        {
            Session["area"] = 2;
            serv.Enabled = false;
            book.Enabled = false;
            //Linkbutton4.Enabled = false;
            abtus.Enabled = false;
            cntus.Enabled = false;
            logout.Enabled = true;
            serv.Visible = false;
            book.Visible = false;
            // Linkbutton4.Visible = true;
            abtus.Visible = true;
            logout.Visible = true;
            login.Visible = false;
            ords.Enabled = false;
            ords.Visible = false;
            maid_ords.Visible = true;
            conf_ord.Visible = true;
            admin1.Enabled = false;
            admin2.Enabled = false;
            book.Visible = false;
             admin3.Enabled = false;
            admin1.Visible = false;
            admin2.Visible = false;
             admin3.Visible = false;
            ser.Visible = true;
        }
        else if (Session["email"].ToString() == "maid_rp@gmail.com" && Session["pass"].ToString() == "maidisbest")
        {
            Session["area"] = 3;
            serv.Enabled = false;
            book.Enabled = false;
           // Linkbutton4.Enabled = false;
            abtus.Enabled = false;
            cntus.Enabled = false;
            logout.Enabled = true;
            serv.Visible = false;
            book.Visible = false;
            //Linkbutton4.Visible = true;
            abtus.Visible = true;
            book.Visible = false;
            logout.Visible = true;
            login.Visible = false;
            ords.Enabled = false;
            ords.Visible = false;
            maid_ords.Visible = true;
            conf_ord.Visible = true;
            admin1.Enabled = false;
            admin2.Enabled = false;
             admin3.Enabled = false;
            admin1.Visible = false;
            admin2.Visible = false;
             admin3.Visible = false;
            ser.Enabled = true;
        }
        else if (Session["email"].ToString() == "kkp@gmail.com" && Session["pass"].ToString() == "adminkkp")
        {


            lbl1.Text = Session["email"].ToString();
            maid_ords.Enabled = false;
            maid_ords.Visible = false;
            conf_ord.Visible = false;
            logout.Visible = true;
            logout.Enabled = true;
            login.Visible = false;
            admin1.Enabled = true;
            admin2.Enabled = true;
             admin3.Enabled = true;
            admin1.Visible = true;
            admin2.Visible = true;
            ords.Visible = false;
            book.Visible = false;
             admin3.Visible = true;
            
        }

        else
        { 
           lbl1.Text = Session["email"].ToString();
            maid_ords.Enabled = false;
            maid_ords.Visible = false;
            conf_ord.Visible = false;
            logout.Visible = true;
            login.Visible = false;
            login.Enabled = false;
            admin1.Enabled = false;
            admin2.Enabled = false;
             admin3.Enabled = false;
            admin1.Visible = false;
            admin2.Visible = false;
             admin3.Visible = false;
        }
    }
   protected void logout_Click(object sender, EventArgs e)
    {
        Session["email"] = null;
        Session["pass"] = null;

        Response.Redirect("index.aspx");
    }
    
}