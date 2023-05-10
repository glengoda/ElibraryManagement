<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="WebApplication1.Homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section>
      
        <img src="imgs/imgs/home-bg.jpg" style="width: 100%; height: auto;"/>
    </section>

    <section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                        <h2>Our Features</h2>
                        <p><b>Our 3 Primary Features</b></p>
                    </center>
                </div>
            </div>

            <div class="row">
                <div class="col-md-4">
                    <center>
                    <img width="150px" src="imgs/imgs/digital-inventory.png" />
                    <h4>Digital Book Inventory</h4>
                    <p class="text-start">This outstanding module will assist you with managing stock, reducing cost, 
                        increasing sales and improving cash flow</p>
                    </center>
                </div>
                <div class="col-md-4">
                    <center>
                    <img width="150px" src="imgs/imgs/search-online.png" />
                    <h4>Search Books</h4>
                    <p class="text-start">This outstanding module will assist you with managing stock, reducing cost, 
                        increasing sales and improving cash flow</p>
                    </center>
                </div>
                <div class="col-md-4">
                    <center>
                    <img width="150px" src="imgs/imgs/defaulters-list.png" />
                    <h4>Defaulter List</h4>
                    <p class="text-start">This outstanding module will assist you with managing stock, reducing cost, 
                        increasing sales and improving cash flow</p>
                    </center>
                </div>
            </div>
        </div>
    </section>

     <section>
      
        <img src="imgs/imgs/in-homepage-banner.jpg" style="width: 100%; height: auto;" />
    </section>

     <section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                        <h2>Our Process</h2>
                        <p><b>We have a simple 3 step process</b></p>
                    </center>
                </div>
            </div>

            <div class="row">
                <div class="col-md-4">
                    <center>
                    <img width="150px" src="imgs/imgs/sign-up.png" />
                    <h4>Sign up</h4>
                    <p class="text-start">This outstanding module will assist you with managing stock, reducing cost, 
                        increasing sales and improving cash flow</p>
                    </center>
                </div>
                <div class="col-md-4">
                    <center>
                    <img width="150px" src="imgs/imgs/search-online.png" />
                    <h4>Search Books</h4>
                    <p class="text-start">This outstanding module will assist you with managing stock, reducing cost, 
                        increasing sales and improving cash flow</p>
                    </center>
                </div>
                <div class="col-md-4">
                    <center>
                        <img width="150px" src="imgs/imgs/library.png" />
                    <h4>Visit us</h4>
                    <p class="text-start">This outstanding module will assist you with managing stock, reducing cost, 
                        increasing sales and improving cash flow</p>
                    </center>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
