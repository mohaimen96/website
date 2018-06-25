<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Contact Us
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #contact {
            
            padding-top:55px;
            color:cyan;
            text-align:center;
            
        }
        
        div p {
            font-size: 32px;
            color: white;
            
            text-align:center;

        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
    <h1 id="contact">Contact Us:</h1>
    <div>
        <p>Mail address: abc@gmail.com</p>
        <p>Phone number: +8801712345678</p>
    </div>
</asp:Content>

