<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminauthormanagement.aspx.cs" Inherits="WebApplication1.adminauthormanagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


     <script type="text/javascript">
         $(document).ready(function () {

             //$(document).ready(function () {
             //$('.table').DataTable();
             // });

             $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
             //$('.table1').DataTable();
         });
     </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">

            <div class="col-md-5 ">
                <div class="card">
                    <div class="card-body">


                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Author Details</h4>

                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/imgs/writer.png" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>Author ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <div class="input-group">
                                            <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                                            <asp:Button CssClass="btn btn-primary " ID="Button2" runat="server" Text="go" OnClick="Button2_Click" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <label>Author Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Author Name"></asp:TextBox>
                                </div>

                            </div>
                        </div>
                        <br />

                        <div class="row">
                            <div class="col-4">
                                  <div class="d-block d-grid g-2">
                                <asp:Button CssClass="btn btn-success btn-lg " ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" />
                            </div>
                                </div>

                            <div class="col-4">
                                  <div class="d-block d-grid g-2">
                                <asp:Button CssClass="btn btn-warning btn-lg " ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" />
                            </div>
                                </div>
                            <div class="col-4">
                                  <div class="d-block d-grid g-2">
                                <asp:Button CssClass="btn btn-danger btn-lg " ID="Button4" runat="server" Text="Delete" OnClick="Button4_Click" />
                            </div>
                                </div>

                            <br />





                     
                    </div>

                </div>
            </div>

            <a href="Homepage.aspx"><< Back to Home</a><br />
            <br />
        </div>

        <div class="col-md-7">
            <div class="card">
                <div class="card-body">


                    <div class="row">
                        <div class="col">
                            <center>
                                <h4>Author List</h4>
                               
                            </center>
                        </div>
                    </div>


                    <div class="row">
                        <div class="col">
                            <hr />
                        </div>
                    </div>

                    <div class="row">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [author_master_tbl]"></asp:SqlDataSource>
                        <div class="col">
                            <asp:GridView class="table table-stripped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="author_id" DataSourceID="SqlDataSource1">
                                <Columns>
                                    <asp:BoundField DataField="author_id" HeaderText="author_id" ReadOnly="True" SortExpression="author_id" />
                                    <asp:BoundField DataField="author_name" HeaderText="author_name" SortExpression="author_name" />
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>






                </div>
            </div>
        </div>

    </div>
   
    </div>



</asp:Content>
