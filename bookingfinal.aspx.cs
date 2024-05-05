using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;



public partial class bookingfinal : System.Web.UI.Page
{

    //String cnstr = @"Data1 Source=L1_52;Initial Catalog=db_Final;Integrated Security=True";
    SqlConnection conn;

    protected void Page_Load(object sender, EventArgs e)
    {
        string cnstr = Session["cnstr"].ToString();
        if (!IsPostBack) { BindStates(); }
        cal1.Visible = false;

    }


    protected void cal1_SelectionChanged(object sender, EventArgs e)
    {
        Label1.Text = cal1.SelectedDate.ToString("dd/MM/yyyy");
        cal1.Visible = false;


    }

    protected void btn_Click(object sender, EventArgs e)
    {
        cal1.Visible = true;
    }
    protected void cal1_VisibleMonthChanged(object sender, MonthChangedEventArgs e)
    {
        Label1.Text = cal1.SelectedDate.ToString("dd/MM/yyyy");
        cal1.Visible = true;
    }
    


    void BindStates()
    {
        string cnstr = Session["cnstr"].ToString();
        conn = new SqlConnection(cnstr);
        SqlDataAdapter DA = new SqlDataAdapter("SELECT s_id,s_name FROM tbl_state", conn);
        DataTable DT = new DataTable();
        DA.Fill(DT);

        //ddl_State.Items.Clear();
        ddl_State.Items.Add("--SELECT STATE--");
        ddl_State.DataSource = DT;
        ddl_State.DataTextField = "s_name";
        ddl_State.DataValueField = "s_id";

        ddl_State.DataBind();
    }

    void BindCity()
    {
        string cnstr = Session["cnstr"].ToString();
        conn = new SqlConnection(cnstr);
        SqlDataAdapter DA = new SqlDataAdapter("SELECT c_id,c_name,s_id FROM tbl_city WHERE s_id=" + ddl_State.SelectedValue.ToString(), conn);
        DataTable DT = new DataTable();
        DA.Fill(DT);


        //ddl_city.Items.Clear();
        ddl_city.Items.Add("--SELECT CITY--");
        ddl_city.DataSource = DT;
        ddl_city.DataTextField = "c_name";
        ddl_city.DataValueField = "c_id";

        ddl_city.DataBind();
    }

    void BindArea()
    {
        string cnstr = Session["cnstr"].ToString();
       conn = new SqlConnection(cnstr);
        SqlDataAdapter DA = new SqlDataAdapter("SELECT a_id,a_name,c_id FROM tbl_area WHERE c_id=" + ddl_city.SelectedValue.ToString(), conn);
        DataTable DT = new DataTable();
        DA.Fill(DT);

        //ddl_area.Items.Clear();
        ddl_area.Items.Add("--SELECT AREA--");
        ddl_area.DataSource = DT;
        ddl_area.DataTextField = "a_name";
        Response.Write(ddl_city.SelectedIndex);
        //ddl_area.DataValueField = ddl_city.SelectedValue.ToString();
        ddl_area.DataValueField = "a_id";


        ddl_area.DataBind();
    }
    protected void ddl_State_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddl_city.Items.Clear();
        ddl_area.Items.Clear();
        ddl_city.ClearSelection();
        ddl_area.ClearSelection();
        BindCity();
    }
    protected void ddl_city_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddl_area.Items.Clear();
        ddl_area.ClearSelection();
        BindArea();
        ddl_area.DataValueField = "a_id";
    }



    
    protected void cal1_DayRender(object sender, DayRenderEventArgs e)
    {
        if (e.Day.Date.CompareTo(DateTime.Today) < 0)
        {
            e.Day.IsSelectable = false;
        }
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        string cnstr = Session["cnstr"].ToString();
            conn = new SqlConnection(cnstr);
            conn.Open();
        int pooja = Convert.ToInt32(ddl_area.SelectedValue);
        string kinnari = ddl_time.SelectedValue.ToString();

        String Qry = "insert into tbl_final_booking values ( '" + txtname.Text + "','" + txtadd.Text + "','" + kinnari + "','" + pooja + "','Pending',0,'" + Session["email"] + "','" + txtcont.Text + "','" + Label1.Text + "')";
        SqlCommand comm = new SqlCommand(Qry, conn);
        string qryup = "update booking_count set a_id="+pooja+" where email='"+Session["email"]+"'";
        SqlCommand comm2 = new SqlCommand(qryup, conn);
        comm2.ExecuteNonQuery();
        int result = comm.ExecuteNonQuery();
            if (result > 0)
            {
                Response.Write("Success");
                Response.Redirect("confirmpagefinal.aspx");
            }
            else
                Response.Write("Failed");

            if (FileUpload1.PostedFile.ContentType.Contains("/png"))
            {
                string name = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Uploads/") + name);
                Response.Write("<br/>FileName: " + name);
            }
            else
                Response.Write("GeT lost");
        }
    protected void logout_Click(object sender, EventArgs e)
    {
        Session["email"] = null;
        Session["pass"] = null;

        Response.Redirect("index.aspx");
    }

}