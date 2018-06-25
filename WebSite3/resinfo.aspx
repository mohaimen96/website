<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="resinfo.aspx.cs" Inherits="resinfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Restaurant Info
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style>
        body {
            color: white;
            
        }
        h1 {
            color: white;
            padding-top:8px;
            padding-left:10px;
        }
        .mySlides {
            display: none;
            height: 400px;
            top:60%;
            left:65%;
            position: absolute;
            transform: translate(-50%,-50%);
            box-sizing: border-box;
            border:groove;
            border-radius:5px;
            border-color:aqua;
            background-color:ActiveBorder;
            
        }
        .bb {
            border: none;
            outline: none;
            background: #fb2525;
	        color: #fff;
	        font-size: 18px;
	        border-radius: 20px;
            padding-left:10px;
        }
        .bb:hover {
            cursor: pointer;
	        background: #ce0b23;
	        color: #000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
    <h1>Restaurant Infos:</h1>
    <div id='showres'></div><br>
<input class="bb" type="button" onclick="previous()" value="<<">
<input class="bb" type="button" onclick="next()" value=">>">
    <div class="slider" style="max-width: 500px">
        <img class="mySlides" src="slide1.jpg" style="width: 60%">
        <img class="mySlides" src="slide2.jpg" style="width: 60%">
        <img class="mySlides" src="d1.jpg" style="width: 60%">
        <img class="mySlides" src="slide3.jpg" style="width: 60%">
        <img class="mySlides" src="slide4.jpg" style="width: 60%">
        <img class="mySlides" src="b1.jpg" style="width: 60%">
        <img class="mySlides" src="c1.jpg" style="width: 60%">
    </div>

<script>
    var i = 0;
    var x;
    displayres(i);

    function displayres(i) {
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                myFunction(this, i);
            }
        };
        xmlhttp.open("GET", "names.xml", true);
        xmlhttp.send();
    }

    function myFunction(xml, i) {
        var xmlDoc = xml.responseXML;
        x = xmlDoc.getElementsByTagName("RES");
        document.getElementById("showres").innerHTML =
        "Name: " +
        x[i].getElementsByTagName("TITLE")[0].childNodes[0].nodeValue +
        "<br>Contact No: " +
        x[i].getElementsByTagName("CONTACT")[0].childNodes[0].nodeValue +
        "<br>Location: " +
        x[i].getElementsByTagName("LOCATION")[0].childNodes[0].nodeValue;
    }

    function next() {
        if (i < x.length - 1) {
            i++;
            displayres(i);
        }
    }

    function previous() {
        if (i > 0) {
            i--;
            displayres(i);
        }
    }


    var myIndex = 0;
    carousel();

    function carousel() {
        var i;
        var x = document.getElementsByClassName("mySlides");
        for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";
        }
        myIndex++;
        if (myIndex > x.length) { myIndex = 1 }
        x[myIndex - 1].style.display = "block";
        setTimeout(carousel, 5000);
    }
</script>
</asp:Content>

