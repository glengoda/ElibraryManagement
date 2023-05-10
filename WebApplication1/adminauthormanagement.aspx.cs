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
    public partial class adminauthormanagement : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }


        //add button click
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkifAuthorExists())
            {
                addNewAuthor();
                
               
            }
            else
            {
                Response.Write("<script>alert('Author with this ID already exist');</script>");
            }
        }

        //Update button click
        protected void Button3_Click(object sender, EventArgs e)
        {

            if (checkifAuthorExists())
            {
                Response.Write("<script>alert('Author with this ID already exist');</script>");
            }
            else
            {
                updateAuthor();
            }

        }


        //Delete button click
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (checkifAuthorExists())
            {
                deleteAuthor();
               
            }
            else
            {
                Response.Write("<script>alert('Author with this ID already exist');</script>");
            }

        }

        //go button click
        protected void Button2_Click(object sender, EventArgs e)
        {
            getAuthorByID();
        }

        //user define update function

        void updateAuthor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon); // db Class
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();    //opening the connection

                }

                SqlCommand cmd = new SqlCommand("UPDATE author_master_tbl SET author_name = @author_name WHERE author_id ='"+TextBox1.Text.Trim() +"'", con);

                cmd.Parameters.AddWithValue("@author_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@author_name", TextBox2.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Author Update Successfully');</script>");
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }

        //user define add
        void addNewAuthor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon); // db Class
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();    //opening the connection

                }

                SqlCommand cmd = new SqlCommand("INSERT INTO author_master_tbl(author_id,author_name) Values (@author_id,@author_name)", con);

                cmd.Parameters.AddWithValue("@author_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@author_name", TextBox2.Text.Trim());
               
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Author added Successfully');</script>");
                clearForm();
                GridView1.DataBind(); // when you add a new data it connect to db to refresh
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }


        //user define exist
        bool checkifAuthorExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon); // db Class
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();    //opening the connection

                }

                SqlCommand cmd = new SqlCommand("SELECT * from author_master_tbl WHERE author_id ='" + TextBox1.Text.Trim() + "'", con);
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

        // delete function
        void deleteAuthor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon); // db Class
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();    //opening the connection

                }

                SqlCommand cmd = new SqlCommand("DELETE FROM author_master_tbl  author_name = @author_name WHERE author_id ='" + TextBox1.Text.Trim() + "'", con);

               
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Author deleted Successfully');</script>");
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }
        // delete function
        void getAuthorByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon); // db Class
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();    //opening the connection

                }

                SqlCommand cmd = new SqlCommand("SELECT * from author_master_tbl WHERE author_id ='" + TextBox1.Text.Trim() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0][1].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Invalid Author ID');</script>");

                }

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
    }
}