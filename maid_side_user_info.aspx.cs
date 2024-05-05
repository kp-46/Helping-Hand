using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class maid_side_user_info : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    string cnstr = Session["cnstr"].ToString();
        SqlConnection conn = new SqlConnection(cnstr);
        conn.Open();
        //String name_querystring = Request.QueryString["name1"];
        //Response.Write(name_querystring);

        String Qry = "select * from tbl_order where a_id='"+ Session["area"]+"'";
        //String qry1 = "select * from tbl_final_booking where email='"+ Session["email"]+"'";
        
        //SqlCommand cmd = new SqlCommand(qry1, conn);
        //nt kp = cmd.ExecuteNonQuery();
        //DataTable dt = new DataTable();
        //SqlDataAdapter adt = new SqlDataAdapter(cmd);
        //adt.Fill(dt);


        //if (dt.Rows.Count>0)
        //{
        //rpt2.DataSource = dt;
        //DataBind();

        //conn.Close();
        //}
       
            SqlCommand cmd1 = new SqlCommand(Qry, conn);
            cmd1.ExecuteNonQuery();
            DataTable dt1 = new DataTable();
            SqlDataAdapter adt1 = new SqlDataAdapter(cmd1);
            adt1.Fill(dt1);
            rpt1.DataSource = dt1;
            DataBind();

            conn.Close();


        }
    

    protected void lnkmaid_Command(object sender, CommandEventArgs e)
    {
        
        string na1 = e.CommandArgument.ToString();
        if (na1=="")
            {
            //LinkButton jimin = rpt1.FindControl("lnkmaid") as LinkButton;
            //jimin.Enabled = false;
            Response.Redirect("confirmpagefinal.aspx");
        }
        else
        {
            int k = Convert.ToInt32(na1);
            Response.Redirect("maidview.aspx?name1=" + k); }
       
    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Session["email"] = null;
        Session["pass"] = null;

        Response.Redirect("index.aspx");
    }


}