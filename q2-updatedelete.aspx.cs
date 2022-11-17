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
    DataTable dt;
    SqlDataAdapter adt;
    SqlCommandBuilder cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection("Data Source=ml16\\sqlexpress;Initial Catalog=As2-Q1;User ID=sa;Password=sa123");

    }

    protected void btn_delete_Click(object sender, EventArgs e)
    {
        int rollno = Convert.ToInt32(txtrollno.Text);
        int course = Convert.ToInt32(bdcourse.SelectedValue);
        string qry = "select * from student where rollno=" + rollno + "and course_id=" + course;
        dt = new DataTable();
        adt = new SqlDataAdapter(qry, cn);
        cmd = new SqlCommandBuilder(adt);
        adt.Fill(dt);
        DataRow dr = dt.Rows[0];
        dr.Delete();
        adt.Update(dt);
        Response.Write("<script>('Record Deleted....')</script>");

    }

    protected void btnsearcherno_Click(object sender, EventArgs e)
    {
        int erno = Convert.ToInt32(txterno.Text);
        string qry = "select * from student where erno=" + erno;
        DataTable dt = new DataTable();
        SqlDataAdapter adt = new SqlDataAdapter(qry,cn);
        SqlCommandBuilder sd = new SqlCommandBuilder(adt);
        adt.Fill(dt);
        DataRow dr = dt.Rows[0];
        txtemail.Text = dr["email"].ToString();
        txtmobno.Text = dr["mobile"].ToString();
        //txtdate.Text = Convert.ToDateTime(dr["dob"]).ToShortDateString();
    }

    protected void btnupdate_Click(object sender, EventArgs e)
    {
        int erno = Convert.ToInt32(txterno.Text);

        string qry = "select * from student where erno=" + erno;
        DataTable dt = new DataTable();
        SqlDataAdapter adt = new SqlDataAdapter(qry, cn);
        SqlCommandBuilder sd = new SqlCommandBuilder(adt);
        adt.Fill(dt);
        DataRow dr = dt.Rows[0];
        dr["email"] = txtemail.Text;
        dr["mobile"] = Convert.ToDouble( txtmobno.Text);
        dr["dob"] =Convert.ToDateTime( txtdate.Text);
        adt.Update(dt);
        Response.Write("<script>('Record Updated....')</script>");

    }

    protected void btnserachname_Click(object sender, EventArgs e)
    {
       string name = txtname.Text;
        int course ;

        string qry = "select * from student where name='" + name + "'";
        DataTable dt = new DataTable();
        SqlDataAdapter adt = new SqlDataAdapter(qry, cn);
        SqlCommandBuilder sd = new SqlCommandBuilder(adt);
        adt.Fill(dt);

        if (dt.Rows.Count > 1)
        {
            
            Response.Write("<script>('Please Select course for seraching....')</script>");
            DataRow dr = dt.Rows[0];
            bdcourse.Visible = true;

            course = Convert.ToInt32(bdcourse.SelectedValue);

            string qry1 = "select * from student where name='" + name + "'and course_id=" + course;
            DataTable dt1 = new DataTable();
            SqlDataAdapter adt1 = new SqlDataAdapter(qry1, cn);
            SqlCommandBuilder sd1 = new SqlCommandBuilder(adt1);
            adt1.Fill(dt1);
            DataRow dataro = dt1.Rows[0];
            lblrno.Text = dataro["rollno"].ToString();
            lblname.Text = dataro["name"].ToString();
            lblclassid.Text = dataro["class_id"].ToString();
            lblcourseid.Text = dataro["course_id"].ToString();
            lblemail.Text = dataro["email"].ToString();
            lblmob.Text = dataro["mobile"].ToString();
            lbldob.Text = dataro["dob"].ToString();
        }
        else
        {
            bdcourse.Visible = false;
            DataRow datarow = dt.Rows[0];
            lblrno.Text = datarow["rollno"].ToString();
            lblname.Text = datarow["name"].ToString();
            lblclassid.Text = datarow["class_id"].ToString();
            lblcourseid.Text = datarow["course_id"].ToString();
            lblemail.Text = datarow["email"].ToString();
            lblmob.Text = datarow["mobile"].ToString();
            lbldob.Text = datarow["dob"].ToString();

        }
    }
}