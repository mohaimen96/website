<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="review.aspx.cs" Inherits="review" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Give Review
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" type="text/css" href="review.css">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
    <div class="box">
        <h1>Make a Review</h1>
        <form>
		    <p>Restaurant name</p>
		    <asp:TextBox ID="rname" placeholder="Enter name" runat="server"></asp:TextBox>
		    <p>Comment</p>
		    <asp:TextBox ID="comm"  placeholder="Comment Here.." runat="server"></asp:TextBox>
            <p>Rating (Out of 10)</p>
		    <asp:TextBox ID="rating"  placeholder="" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" class="login" runat="server" Text="Submit" OnClick="Button1_Click" />
	    
	    </form>
    </div>
</asp:Content>

