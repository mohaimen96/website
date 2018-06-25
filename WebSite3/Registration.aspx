<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    FoodVenture - Register
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" type="text/css" href="register.css" />
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
    <div class="loginbox">
		
		<h1>Register Here</h1>
		<form>
            <p>First Name:</p>
			<asp:TextBox ID="fname" placeholder="Enter Firstname" runat="server"></asp:TextBox>
            <p>Last Name:</p> 
			<asp:TextBox ID="lname" placeholder="Enter Lastname" runat="server"></asp:TextBox>
			<p>Username:</p>
            <asp:TextBox ID="username" placeholder="Enter Username" runat="server" ClientIDMode="Static" onKeyUp="javascript:showHint(this.value);"></asp:TextBox>
            <span id="myhint" style="color:red"></span>
			<p>Email:</p>
            <asp:TextBox ID="email" placeholder="Enter E-mail" runat="server"></asp:TextBox>

            <p>Password:</p>
			<asp:TextBox ID="pass" placeholder="Enter Password" Type="password" runat="server"></asp:TextBox>
            <p>Retype Password:</p>
			<asp:TextBox ID="confirm" Type="password" placeholder="Confirm Password" runat="server"></asp:TextBox>
            <asp:Button ID="create" class="button" runat="server" Text="Create" Height="40px" OnClick="create_Click" Width="200px" />
			<a href="login.aspx">Already registered?</a><br>
		</form>
	    
	</div>
    <script type="text/javascript">
        function showHint(str) {
            if (str.length == 0) {
                document.getElementById("txtHint").innerHTML = "";
                return;
            } else {
                var xmlhttp = new XMLHttpRequest();
                xmlhttp.onreadystatechange = function () {
                    if (this.readyState == 4 && this.status == 200) {
                        document.getElementById("myhint").innerHTML = this.responseText;
                    }
                };
                xmlhttp.open("GET", "gethint.aspx?q=" + str, false);
                xmlhttp.send();
            }
        }


    </script>
</asp:Content>

