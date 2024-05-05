using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class form_user : System.Web.UI.Page
{
    //String cnstr = @"Data1 Source=L1_52;Initial Catalog=db_Final;Integrated Security=True";
    SqlConnection conn;

    protected void Page_Load(object sender, EventArgs e)
    {
        string cnstr = Session["cnstr"].ToString();
        lblqry.Visible = false;
        v.Visible = false;
        if (chk_Services.Checked == true || CheckBox3.Checked == true || CheckBox4.Checked == true)
        {
            Number1.Visible = true;
            lbl_person.Visible = true;

        }

        if (CheckBox1.Checked == true || CheckBox2.Checked == true)
        {
            Number2.Visible = true;
            lbl_room.Visible = true;

        }
        
        else
        {

            Number1.Visible = false;
            Number2.Visible = false;
            lbl_person.Visible = false;
            lbl_room.Visible = false;
        }
    }
    
    protected void btn_Click(object sender, EventArgs e)
    {
        //lbl.Text = no1.Value.ToString();
       // lbl.Text = no1.Value.ToString();

        if (ddl_time.SelectedValue == "1")
        {
            Response.Write("1 day Selected");
        }
        else
            Response.Write("Get lost");

    }
    protected void chk_Services_CheckedChanged(object sender, EventArgs e)
    {
        
        
         if (CheckBox1.Checked == true || CheckBox2.Checked==true)
        {
            Number2.Visible = true;
            lbl_room.Visible = true;
            
        }
        else if(chk_Services.Checked==true||CheckBox3.Checked==true || CheckBox4.Checked==true)
             {
                 Number1.Visible = true;
                 lbl_person.Visible = true;
 }
    }
    
    protected void bts_Click(object sender, EventArgs e)
    {

        // string number = Number2.Value.ToString();
        //string person = Number1.Value.ToString();
        //int totroom = Convert.ToInt32(Number1);
        //int totper = Convert.ToInt32(Number2);
        int totroom = Convert.ToInt32(Number2.Text);
        int totper = Convert.ToInt32(Number1.Text);
        //Response.Write(totper);
        int cook_or_1 = 199;
        int cl_or_1 = 189;
        int ut_or_1 = 149;
        int sw_or_1 = 89;
        int mo_or_1 = 149;

        int cook_or_2 = 699;
        int cl_or_2 = 599;
        int ut_or_2 = 599;
        int sw_or_2 = 199;
        int mo_or_2 = 399;

        int cook_or_3 = 4499;
        int cl_or_3 = 3699;
        int ut_or_3 = 3699;
        int sw_or_3 = 1599;
        int mo_or_3 = 2599;
        //One Day!!!------------------------------------------------------------------------------------------------------------
        if (ddl_time.SelectedValue == "1")
        {
            int cooking = 0;

            if (chk_Services.Checked == true)
            {
                if (totper == 4)
                {
                    cooking = cook_or_1;
                    Response.Write(cook_or_1);
                }

                else if (totper > 4)
                {
                    int sub = totper - 4;
                    int mul = sub * 49;
                    cooking = cook_or_1 + mul;
                    Response.Write("\ncooking : " + cooking);
                }

            }
            int clothes = 0;
            if (CheckBox3.Checked == true)
            {
                if (totper == 4)
                {
                    clothes = cl_or_1;
                    Response.Write(cl_or_1);
                }
                else if (totper > 4)
                {
                    int sub = totper - 4;
                    int mul = sub * 49;
                    clothes = cl_or_1 + mul;
                    Response.Write("\n clothes: " + clothes);
                }
            }
            int utensils = 0;
            if (CheckBox4.Checked == true)
            {
                if (totper == 4)
                {
                    utensils = ut_or_1;
                    Response.Write(ut_or_1);
                }
                else if (totper > 4)
                {
                    int sub = totper - 4;
                    int mul = sub * 49;
                    utensils = ut_or_1 + mul;
                    Response.Write("\n utensils : " + utensils);
                }
            }
            int sweep = 0;
            if (CheckBox1.Checked == true)
            {
                if (totroom == 2)
                {
                    sweep = sw_or_1;
                    Response.Write(sw_or_1);
                }
                else if (totroom > 2)
                {
                    int sub = totroom - 2;
                    int mul = sub * 49;
                    sweep = sw_or_1 + mul;
                    Response.Write("\n sweeping : " + sweep);
                }
            }
            int mop = 0;
            if (CheckBox2.Checked == true)
            {
                if (totroom == 2)
                {
                    mop = mo_or_1;
                    Response.Write(mo_or_1);
                }
                else if (totroom > 2)
                {
                    int sub = totroom - 2;
                    int mul = sub * 69;
                    mop = mo_or_1 + mul;
                    Response.Write("\n mopping : " + mop);
                }
            }
            int final = cooking + clothes + utensils + sweep + mop;
            //Response.Write("\nfinal:"+final);
            tot.Text = final.ToString();

        }
        //One Month ---------------------------------------------------------------------------------------------------
        else if (ddl_time.SelectedValue == "2")
        {
            int cooking = 0;

            if (chk_Services.Checked == true)
            {
                if (totper == 4)
                {
                    cooking = cook_or_2;
                    Response.Write(cook_or_2);
                }

                else if (totper > 4)
                {
                    int sub = totper - 4;
                    int mul = sub * 169;
                    //  int month_tot=mul*30;
                    cooking = cook_or_2 + mul;
                    Response.Write("\ncooking : " + cooking);
                }

            }
            int clothes = 0;
            if (CheckBox3.Checked == true)
            {
                if (totper == 4)
                {
                    clothes = cl_or_2;
                    Response.Write(cl_or_2);
                }
                else if (totper > 4)
                {
                    int sub = totper - 4;
                    int mul = sub * 129;
                    // int month_tot = mul*30;
                    clothes = cl_or_2 + mul;
                    Response.Write("\n clothes: " + clothes);
                }
            }
            int utensils = 0;
            if (CheckBox4.Checked == true)
            {
                if (totper == 4)
                {
                    utensils = ut_or_2;
                    Response.Write(ut_or_2);
                }
                else if (totper > 4)
                {
                    int sub = totper - 4;
                    int mul = sub * 129;
                    //  int month_tot = mul * 30;
                    utensils = ut_or_2 + mul;
                    Response.Write("\n utensils : " + utensils);
                }
            }
            int sweep = 0;
            if (CheckBox1.Checked == true)
            {
                if (totroom == 2)
                {
                    sweep = sw_or_2;
                    Response.Write(sw_or_2);
                }
                else if (totroom > 2)
                {
                    int sub = totroom - 2;
                    int mul = sub * 99;
                    sweep = sw_or_2 + mul;
                    Response.Write("\n sweeping : " + sweep);
                }
            }
            int mop = 0;
            if (CheckBox2.Checked == true)
            {
                if (totroom == 2)
                {
                    mop = mo_or_2;
                   // Response.Write(mo_or_2);
                }
                else if (totroom > 2)
                {
                    int sub = totroom - 2;
                    int mul = sub * 149;
                    mop = mo_or_2 + mul;
                    //Response.Write("\n mopping : " + mop);
                }
            }
            int final = cooking + clothes + utensils + sweep + mop;
            //Response.Write("\nfinal:"+final);
            tot.Text = final.ToString();

        }
        //-----------------6 months -----------------------------------------
        else if (ddl_time.SelectedValue == "3")
        {
            int cooking = 0;

            if (chk_Services.Checked == true)
            {
                if (totper == 4)
                {
                    cooking = cook_or_3;
                    Response.Write(cook_or_3);
                }

                else if (totper > 4)
                {
                    int sub = totper - 4;
                    int mul = sub * 1099;
                    //  int month_tot=mul*30;
                    cooking = cook_or_3 + mul;
                    Response.Write("\ncooking : " + cooking);
                }

            }
            int clothes = 0;
            if (CheckBox3.Checked == true)
            {
                if (totper == 4)
                {
                    clothes = cl_or_3;
                    Response.Write(cl_or_3);
                }
                else if (totper > 4)
                {
                    int sub = totper - 4;
                    int mul = sub * 899;
                    // int month_tot = mul*30;
                    clothes = cl_or_3 + mul;
                    Response.Write("\n clothes: " + clothes);
                }
            }
            int utensils = 0;
            if (CheckBox4.Checked == true)
            {
                if (totper == 4)
                {
                    utensils = ut_or_3;
                    Response.Write(ut_or_3);
                }
                else if (totper > 4)
                {
                    int sub = totper - 4;
                    int mul = sub * 899;
                    //  int month_tot = mul * 30;
                    utensils = ut_or_3 + mul;
                    Response.Write("\n utensils : " + utensils);
                }
            }
            int sweep = 0;
            if (CheckBox1.Checked == true)
            {
                if (totroom == 2)
                {
                    sweep = sw_or_3;
                    Response.Write(sw_or_3);
                }
                else if (totroom > 2)
                {
                    int sub = totroom - 2;
                    int mul = sub * 699;
                    sweep = sw_or_3 + mul;
                    Response.Write("\n sweeping : " + sweep);
                }
            }
            int mop = 0;
            if (CheckBox2.Checked == true)
            {
                if (totroom == 2)
                {
                    mop = mo_or_3;
                    Response.Write(mo_or_3);
                }
                else if (totroom > 2)
                {
                    int sub = totroom - 2;
                    int mul = sub * 899;
                    mop = mo_or_3 + mul;
                    Response.Write("\n mopping : " + mop);
                }
            }
            int final = cooking + clothes + utensils + sweep + mop;
            //Response.Write("\nfinal:" + final);
            tot.Text = final.ToString();

        }
        else
        {
            v.Visible = true;
            v.Text = "Please Select Time Period";
        }
    }

    protected void book_Click(object sender, EventArgs e)
    {
        
        string rm = "";
        string jin = "";
        string suga = "";
        string hobi = "";
        string jm = "";
        string jk = "";

        if (chk_Services.Checked)
        {
             rm = lrm.Text.ToString();
            
        }
        if (CheckBox1.Checked)
        {
           jin = ljin.Text.ToString();
        }
        if(CheckBox2.Checked)
        {
            suga = lsuga.Text.ToString();
        }
        if (CheckBox3.Checked)
        {
            hobi = lhobi.Text.ToString();
        }
        if (CheckBox4.Checked)
        {
            jm = ljm.Text.ToString();
        }

        jk = rm + " " + jin + " " + suga + " " + hobi + " " + jm;
        string time = ddl_time.SelectedItem.ToString();
        string cnstr = Session["cnstr"].ToString();
        conn = new SqlConnection(cnstr);
        conn.Open();
                
        string qry = "insert into booking_count(email,time_period,services,price,ppl_count,room_count) values('"+Session["email"]+"','"+time+"','"+jk+"',"+tot.Text+","+Number1.Text+","+Number2.Text;
            qry+=")";
        SqlCommand comm = new SqlCommand(qry, conn);
        
        int i = comm.ExecuteNonQuery();
        if (i > 0)
        {
            Response.Redirect("bookingfinal.aspx");
        
        }
        else {
            lblqry.Visible = true;
            lblqry.Text = "NOT DONE"+jk+rm;
             }
        }
    protected void logout_Click(object sender, EventArgs e)
    {
        Session["email"] = null;
        Session["pass"] = null;

        Response.Redirect("index.aspx");
    }
}
