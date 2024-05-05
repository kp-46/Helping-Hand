using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;

public partial class demo : System.Web.UI.Page
{
    //String cs = @"Data1 Source=L1_52;Initial Catalog=db_Final;Integrated Security=True";
    SqlConnection con;
    SqlDataAdapter adapt;
    DataTable dt;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack) { /*Show_users(); load_order();*/ ShowData(); }
    }

    protected void ShowData()
    {
        string cs = Session["cnstr"].ToString();
        dt = new DataTable();
        con = new SqlConnection(cs);
        con.Open();
        adapt = new SqlDataAdapter("Select * from tb_maid", con);
        adapt.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        con.Close();
    }

    protected void GridView1_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
    {
        //NewEditIndex property used to determine the index of the row being edited.  
        GridView1.EditIndex = e.NewEditIndex;
        ShowData();
    }
    protected void GridView1_RowUpdating(object sender, System.Web.UI.WebControls.GridViewUpdateEventArgs e)
    {
        string cs = Session["cnstr"].ToString();
        //Finding the controls from Gridview for the row which is going to update  
        Label id = GridView1.Rows[e.RowIndex].FindControl("lbl_ID") as Label;
        TextBox name = GridView1.Rows[e.RowIndex].FindControl("txt_Name") as TextBox;
        TextBox city = GridView1.Rows[e.RowIndex].FindControl("txt_City") as TextBox;
        TextBox contact = GridView1.Rows[e.RowIndex].FindControl("txt_contact") as TextBox;
        TextBox aid = GridView1.Rows[e.RowIndex].FindControl("txt_aid") as TextBox;
        int kp = Convert.ToInt32(id.Text);
        con = new SqlConnection(cs);
        con.Open();
        //updating the record  
        SqlCommand cmd = new SqlCommand("Update tb_maid set maid_name='" + name.Text + "',maid_area='" + city.Text + "',maid_contact='" + contact.Text + "',a_id='" + aid.Text + "' where id=" + kp, con);
        cmd.ExecuteNonQuery();
        con.Close();
        //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
        GridView1.EditIndex = -1;
        //Call ShowData method for displaying updated data  
        ShowData();
    }
    protected void GridView1_RowCancelingEdit(object sender, System.Web.UI.WebControls.GridViewCancelEditEventArgs e)
    {
        //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
        GridView1.EditIndex = -1;
        ShowData();
    }

   
    protected void grd3_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        ShowData();
    }

    protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
    {
        string cs = Session["cnstr"].ToString();
       con = new SqlConnection(cs);
       Label id = GridView1.Rows[e.RowIndex].FindControl("lbl_ID") as Label;
      
       String Qry = "DELETE FROM tb_maid WHERE id = " + Convert.ToInt32(id.Text);
       SqlCommand comm = new SqlCommand(Qry, con);

       con.Open();
       comm.ExecuteNonQuery();
       con.Close();

      
        ShowData(); 
       
    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Session["email"] = null;
        Session["pass"] = null;

        Response.Redirect("index.aspx");
    }

}

