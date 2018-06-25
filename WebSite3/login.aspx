<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    FoodVenture - Login</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" type="text/css" href="login.css">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
    
    <div class="loginbox">
		<img src="avatar.png" class="avatar">
		<h1>Login Here</h1>
		<form>
			<p>Username</p>
			<asp:TextBox ID="uname" placeholder="Enter Username" runat="server"></asp:TextBox>
			<p>Password</p>
			<asp:TextBox ID="pass" type="password" placeholder="Enter Password" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" class="login" runat="server" Text="Login" OnClick="Button1_Click" />
			<a href="Registration.aspx">Don't have an account?</a><br>
		</form>
	    <asp:Label ID="Label1" runat="server" Style="color:red"></asp:Label>
	</div>
</asp:Content>

