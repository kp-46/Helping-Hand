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

public partial class add_maid : System.Web.UI.Page
{
    //String cnstr = @"Data1 Source=L1_52;Initial Catalog=db_Final;Integrated Security=True";
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_reg_Click(object sender, EventArgs e)
    {
        string cnstr = Session["cnstr"].ToString(); 
            string img = Path.GetFileName(maid_img.PostedFile.FileName);
            maid_img.SaveAs(Server.MapPath("~/images/" + img));

            string cer = Path.GetFileName(maid_vac.PostedFile.FileName);
            maid_img.SaveAs(Server.MapPath("~/images/" + cer));
            con = new SqlConnection(cnstr);
            con.Open();
            cmd = new SqlCommand("insert into tb_maid (maid_name,maid_area,maid_img,maid_vacc,a_id,maid_contact) values(@n,@a,@i,@v,@area,@c)", con);
            cmd.Parameters.AddWithValue("@n", txtname.Text);
            cmd.Parameters.AddWithValue("@a", txtarea.Text);
            cmd.Parameters.AddWithValue("@i", "images/" + img);
            cmd.Parameters.AddWithValue("@v", "images/" + cer);
            cmd.Parameters.AddWithValue("@area", txtaid.Text);
            cmd.Parameters.AddWithValue("@c", txtcont.Text);
             cmd.ExecuteNonQuery();
       // Session["area"] = txtaid.Text;
            con.Close();
            //ImageData();
       
    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Session["email"] = null;
        Session["pass"] = null;

        Response.Redirect("index.aspx");
    }

}

