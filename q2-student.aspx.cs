using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection cn;
       
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection("Data Source=ml16\\sqlexpress;Initial Catalog=As2-Q1;User ID=sa;Password=sa123");
    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string qry = "select * from student";
        SqlDataAdapter adt = new SqlDataAdapter(qry, cn);
        DataTable dt = new DataTable();
        SqlCommandBuilder sd = new SqlCommandBuilder(adt);
        adt.Fill(dt);
        DataRow dr = dt.NewRow();
        dr[1] = Convert.ToInt32(txtrollno.Text);
        dr[2] = txtname.Text;
        dr[3] = Convert.ToInt32(dbclass.SelectedValue);
        dr[4] = Convert.ToInt32(bdcourse.SelectedValue);
        dr[5] = txtemail.Text;
        dr[6] = Convert.ToDouble(txtmobno.Text);
        dr[7] = Convert.ToDateTime(txtdate.Text);
        dt.Rows.Add(dr);
        adt.Update(dt);
        txtdate.Text = "";
        txtemail.Text = "";
        txtmobno.Text = "";
        txtname.Text = "";
        txtrollno.Text = "";
        Response.Redirect("student.aspx");
    }
}