<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="COMP2084_Assignment1._default" %>
<%@ Register Src="~/GamePanel.ascx" TagName="gamepanel" TagPrefix="Tgamepanel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="row">
            <Tgamepanel:gamepanel ID="Gamepanel1" GameID="1" runat="server" />
            <Tgamepanel:gamepanel ID="Gamepanel2" GameID="2" runat="server" />
            <Tgamepanel:gamepanel ID="Gamepanel3" GameID="3" runat="server" />
            <Tgamepanel:gamepanel ID="Gamepanel4" GameID="4" runat="server" />
        </div>

        <asp:Button ID="btnSubmit" text="Submit" runat="server" CssClass="btn btn-info" />

   
</asp:Content>
