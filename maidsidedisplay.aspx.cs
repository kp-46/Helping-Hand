using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Kreative_2_0_0_maidsidedisplay : System.Web.UI.Page
{
    //string cnstr = @"Data1 Source=L1_52;Initial Catalog=db_Final;Integrated Security=True";


    protected void Page_Load(object sender, EventArgs e)
    {
        string cnstr = Session["cnstr"].ToString();
        SqlConnection conn = new SqlConnection(cnstr);
        conn.Open();


        //String Qry = "select *  from tbl_final_booking where area_id='" + Session["area"] +"' select * from booking_count where a_id='"+Session["area"]+"'";+ Session["area"] +"'
        String Qry = "select * from tbl_final_booking full outer join booking_count on tbl_final_booking.email = booking_count.email where area_id='" + Session["area"] + "'";
        SqlCommand cmd1 = new SqlCommand(Qry, conn);
        cmd1.ExecuteNonQuery();
        // +"select time_period,services,price,ppl_count,room_count from booking_count where ";
        //user_name,address,time,requested,acc_rej,email,contact,u_date
        DataTable dt1 = new DataTable();
        SqlDataAdapter adt = new SqlDataAdapter(cmd1);
        adt.Fill(dt1);
        rpt.DataSource = dt1;
        rpt.DataBind();

        conn.Close();
 
    }

    private DataTable GetData(string query)
    {

        //string constr = @"Data1 Source=L1_52;Initial Catalog=db_Final;Integrated Security=True";
        string constr = Session["cnstr"].ToString();
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    return dt;
                }
            }
        }
    }

    protected void lacc_Command(object sender, CommandEventArgs e)
    {
        string na1 = e.CommandArgument.ToString();
        string var = "true";
        RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;
        Label us_email = item.FindControl("email") as Label;
        DropDownList ddl_name = item.FindControl("ddl_maid") as DropDownList;
        int num = ddl_name.Items.IndexOf(ddl_name.SelectedItem);
        string jk = ddl_name.SelectedValue.ToString();
        string user_email = us_email.Text.ToString();

        Response.Write(jk);
        Response.Write(num);

        Response.Redirect("rpt2.aspx?name1=" + na1 + "&req=" + var + "&k=" + jk+"&user_email="+user_email);
    }
    protected void lrej_Command(object sender, CommandEventArgs e)
    {

        string na1 = e.CommandArgument.ToString();
        string var1 = "false";
        Response.Redirect("rpt2.aspx?name1=" + na1 + "&req=" + var1);

        
        

        
    }



    public void rpt_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            DropDownList ddl_name = (e.Item.FindControl("ddl_maid") as DropDownList);
            ddl_name.DataSource = this.GetData("SELECT maid_name FROM tb_maid where a_id='" + Session["area"] + "'");
            ddl_name.DataValueField = "maid_name";
            ddl_name.DataTextField = "maid_name";

          
            ddl_name.DataBind();
        }
    }

    protected void btnaccept_Click(object sender, EventArgs e)
    {
        String constr = Session["cnstr"].ToString();
        RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;
        DropDownList ddl_name = item.FindControl("ddl_maid") as DropDownList;

        SqlConnection conn = new SqlConnection(constr);

        ////String str = "insert into tbl_ano select * from tbl_maid where maid_name = " + ddl_name.SelectedValue;
        //SqlCommand cmd = new SqlCommand(str, conn);
        //cmd.ExecuteNonQuery();
        //Response.Write("selected");

            
    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Session["email"] = null;
        Session["pass"] = null;

        Response.Redirect("index.aspx");
    }
    protected void lnkmaid_Command(object sender, CommandEventArgs e)
    {

    }
}