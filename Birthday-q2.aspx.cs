using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection("Data Source=ml16\\sqlexpress;Initial Catalog=As2-Q1;User ID=sa;Password=sa123");

    }

    protected void btnsearcherno_Click(object sender, EventArgs e)
    {
        int year = Convert.ToInt32(txtbdy.Text);

        string qry = "select * from student where year(dob)=" + year;
        SqlDataAdapter adt = new SqlDataAdapter(qry, cn);
        DataTable dt = new DataTable();
        SqlCommandBuilder sd = new SqlCommandBuilder(adt);
        adt.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
}