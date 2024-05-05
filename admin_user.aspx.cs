using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Data;
using System.Configuration;

public partial class admin_user : System.Web.UI.Page
{
   // String cnstr = @"Data1 Source=L1_52;Initial Catalog=db_Final;Integrated Security=True";
    SqlConnection conn; SqlDataAdapter da;
   
    protected void Page_Load(object sender, EventArgs e)
    {
        

        if (!IsPostBack) { /*Show_users(); load_order();*/ Show_users(); }

    }
    void Show_users()
    {
        string cnstr = Session["cnstr"].ToString();
        conn = new SqlConnection(cnstr);
        conn.Open();
        String Qry = "SELECT * FROM tb_reg_login";
        SqlDataAdapter DA = new SqlDataAdapter(Qry, conn);
        DataTable DT = new DataTable();
        DA.Fill(DT);
        
        
         if (DT.Rows.Count > 0)
        {
            grd1.DataSource = DT;
            grd1.DataBind();
        }

    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Session["email"] = null;
        Session["pass"] = null;

        Response.Redirect("index.aspx");
    }


}