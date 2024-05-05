using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Configuration;

public partial class Kreative_2_0_0_confirmpagefinal : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
   // string constr = @"Data1 Source=L1_52;Initial Catalog=db_Final;Integrated Security=True";



    protected void Page_Load(object sender, EventArgs e)
    {
        string constr = Session["cnstr"].ToString();
        
            string kp = Request.QueryString["name1"];
        int v = Convert.ToInt32(kp);

        // string constr = @"Data1 Source=L1_52;Initial Catalog=db_Final;Integrated Security=True";
        using (SqlConnection conn = new SqlConnection(constr))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM tb_maid where id='" + v +"'", conn))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                   
                     grid_maid.DataSource = dt;
                    grid_maid.DataBind();
                }
            }
        
    }


    protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
    {
        //if (e.Row.RowType == DataControlRowType.DataRow)
        //{
        //    DataRowView dr = (DataRowView)e.Row.DataItem;
        //    string imageUrl = "data:image/png;base64," + Convert.ToBase64String((byte[])dr["Data"]);

        //    (e.Row.FindControl("Image1") as Image).ImageUrl = imageUrl;
        //}
    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Session["email"] = null;
        Session["pass"] = null;

        Response.Redirect("index.aspx");
    }
}