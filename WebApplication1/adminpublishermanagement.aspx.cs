using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class adminpublishermanagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (checkifPublisherExists())
            {

                Response.Write("<script>alert('Author with this ID already exist');</script>");

            }
            else
            {
                addNewPublisher();

            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkifPublisherExists())
            {
                Response.Write("<script>alert('Publisher with this ID already exist');</script>");
            }
            else
            {
                updatePublisher();
            }

        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (checkifPublisherExists())
            {
                deletePublisher();

            }
            else
            {
                Response.Write("<script>alert('Publisher with this ID already exist');</script>");
            }

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            getPublisherByID();
        }


        //add new publisher
        void addNewPublisher()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon); // db Class
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();    //opening the connection

                }

                SqlCommand cmd = new SqlCommand("INSERT INTO publisher_master_tbl(publisher_id,publisher_name) Values (@publisher_id,@publisher_name)", con);

                cmd.Parameters.AddWithValue("@publisher_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@publisher_name", TextBox2.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('publisher added Successfully');</script>");
                clearForm();
                GridView1.DataBind(); // when you add a new data it connect to db to refresh
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }

        //user define exist
        bool checkifPublisherExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon); // db Class
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();    //opening the connection

                }

                SqlCommand cmd = new SqlCommand("SELECT * from publisher_master_tbl WHERE publisher_id ='" + TextBox1.Text.Trim() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;

            }
        }


        //user define exist
        void updatePublisher()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon); // db Class
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();    //opening the connection

                }

                SqlCommand cmd = new SqlCommand("UPDATE publisher_master_tbl SET publisher_name = @publisher_name WHERE publisher_id ='" + TextBox1.Text.Trim() + "'", con);

                cmd.Parameters.AddWithValue("@publisher_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@publisher_name", TextBox2.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Publisher Update Successfully');</script>");
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }

        // delete function
        void deletePublisher()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon); // db Class
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();    //opening the connection

                }

                SqlCommand cmd = new SqlCommand("DELETE FROM publisher_master_tbl  publisher_name = @publisher_name WHERE publisher_id ='" + TextBox1.Text.Trim() + "'", con);


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('publisher deleted Successfully');</script>");
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }


        void clearForm()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";

        }


        void getPublisherByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon); // db Class
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();    //opening the connection

                }

                SqlCommand cmd = new SqlCommand("SELECT * from publisher_master_tbl WHERE author_id ='" + TextBox1.Text.Trim() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0][1].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Invalid publisher ID');</script>");

                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");


            }
        }
    }
}