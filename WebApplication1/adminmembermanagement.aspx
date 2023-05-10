<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminmembermanagement.aspx.cs" Inherits="WebApplication1.adminmembermanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

       <div class="container-fluid">
        <div class="row">

            <div class="col-md-5 ">
                <div class="card">
                    <div class="card-body">


                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Member Details</h4>

                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/imgs/generaluser.png" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                          
                            <div class="col-md-3">
                                <label>Member ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <div class="input-group">
                                            <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Member ID"></asp:TextBox>
                                         <asp:LinkButton  CssClass="btn btn-primary " ID="LinkButton4" runat="server"><i class="fa-solid fa-circle-check"></i></asp:LinkButton>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Full Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Full Name" ReadOnly="True"></asp:TextBox>
                                </div>

                            </div>
                              
                             <div class="col-md-5">
                                <label>Account Status</label>
                                <div class="form-group">
                                  <div class="input-group">
                                        <div class="input-group">
                                            <asp:TextBox CssClass="form-control me-1" ID="TextBox7" runat="server" placeholder="Member ID" ReadOnly="True"></asp:TextBox>
                                            <asp:LinkButton  CssClass="btn btn-success me-1" ID="LinkButton1" runat="server"><i class="fa-solid fa-circle-check"></i></asp:LinkButton>
                                              <asp:LinkButton  CssClass="btn btn-warning me-1" ID="LinkButton2" runat="server"><i class="fa-regular fa-circle-dot"></i></asp:LinkButton>
                                              <asp:LinkButton  CssClass="btn btn-danger me-1" ID="LinkButton3" runat="server"><i class="fa-solid fa-circle-xmark"></i></asp:LinkButton>
                                           
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <br />

                             <div class="row">
                          
                            <div class="col-md-3">
                                <label>DOB</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="DOB" ReadOnly="True"></asp:TextBox>
                                </div>

                            </div>
                                  <div class="col-md-4">
                                <label>Contact No</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Contact No" ReadOnly="True"></asp:TextBox>
                                </div>

                            </div>
                               <div class="col-md-5">
                                <label>Email ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email ID" ReadOnly="True"></asp:TextBox>
                                </div>

                            </div>

                        </div><br />
                        <div class="row">
                          
                            <div class="col-md-4">
                                <label>State</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="State" ReadOnly="True"></asp:TextBox>
                                </div>

                            </div>
                                  <div class="col-md-4">
                                <label>City</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="City" ReadOnly="True"></asp:TextBox>
                                </div>

                            </div>
                               <div class="col-md-4">
                                <label>Pin Code</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="Pin Code" ReadOnly="True"></asp:TextBox>
                                </div>

                            </div>

                        </div><br />
                           <div class="row">
                          
                            <div class="col-12">
                                <label>Full Postal Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Full Postal Address" TextMode="MultiLine" Rows="2" ReadOnly="True"></asp:TextBox>
                                </div>

                           </div>

                        </div><br />
                        
                        <div class="row">
                       
                            <div class="col-8 mx-auto">
                                  <div class="d-block d-grid g-2">
                                <asp:Button CssClass="btn btn-lg btn-danger " ID="Button1" runat="server" Text="Delete user Permanently" />
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
                                <h4>Member List</h4>
                               
                            </center>
                        </div>
                    </div>


                    <div class="row">
                        <div class="col">
                            <hr />
                        </div>
                    </div>

                    <div class="row">
                        <div class="col">
                            <asp:GridView class="table table-stripped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                        </div>
                    </div>






                </div>
            </div>
        </div>

    </div>
   
    </div>

</asp:Content>
