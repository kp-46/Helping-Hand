using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Try_services : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ddl1.SelectedValue = "no";
            MultiView1.Visible = false;
            wash.Visible = false;
            clean.Visible = false;
            cook1.Visible = false;
            cook2.Visible = false;
            cook3.Visible = false;
            mlv.Visible = false;
            //kay.Visible = false;

        }
        
    }
    protected void ddl1_SelectedIndexChanged(object sender, EventArgs e)
            {
                if (ddl1.SelectedValue == "cl")
                {

                    //Response.Write("Cleaning");
                    MultiView1.Visible = true;
                    mlv.Visible = true;
                    mlv.SetActiveView(chk1);
                    MultiView1.SetActiveView(cl_v);
                    //kay.Visible = true;



                }
                else if (ddl1.SelectedValue == "co")
                {
                    //Response.Write("Cooking");
                    //kay.Visible = false;
                    MultiView1.Visible = true;
                    MultiView1.SetActiveView(cook);
                    cook1.Visible = true;
                    cook2.Visible = true;
                    cook3.Visible = true;
                }
                else if (ddl1.SelectedValue == "w")
                {
            // trit.Visible = false;
            //Response.Write("Washing");
                     MultiView1.Visible = true;
                    mlv.Visible = true;
                    mlv.SetActiveView(chk2);
                    MultiView1.SetActiveView(wa_v);
                }
            }

    protected void wi_CheckedChanged(object sender, EventArgs e)
    {

        //if (sw.Checked)
        //{
        //    wi.Checked = false;
        //    cl.Checked = false;
        //    ut.Checked = false;
        //    clean.Visible = true;
        //    clean.SetActiveView(cl_sw);
        //}
        
            sw.Checked = false;
            cl.Checked = false;
            ut.Checked = false;
            clean.Visible = true;
            clean.SetActiveView(cl_wi);
  }

    protected void sw_CheckedChanged(object sender, EventArgs e)
    {
        if (sw.Checked)
        {
            wi.Checked = false;
            cl.Checked = false;
            ut.Checked = false;
            clean.Visible = true;
            clean.SetActiveView(cl_sw);
        }
        
    }

    protected void cl_CheckedChanged(object sender, EventArgs e)
    {
            sw.Checked = false;
            wi.Checked = false;
            ut.Checked = false;
            wash.Visible = true;
            wash.SetActiveView(wa_cl);

     
    }

    protected void ut_CheckedChanged(object sender, EventArgs e)
    {
            sw.Checked = false;
            wi.Checked = false;
            cl.Checked = false;
            wash.Visible = true;
            wash.SetActiveView(wa_ut);

     
    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Session["email"] = null;
        Session["pass"] = null;

        Response.Redirect("index.aspx");
    }
}

    