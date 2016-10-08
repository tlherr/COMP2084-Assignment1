<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="COMP2084_Assignment1._default" %>
<%@ Register Src="~/GamePanel.ascx" TagName="gamepanel" TagPrefix="Tgamepanel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <h2>Games</h2>
        <Tgamepanel:gamepanel ID="Gamepanel1" GameID="1" runat="server" />
        <Tgamepanel:gamepanel ID="Gamepanel2" GameID="2" runat="server" />
        <Tgamepanel:gamepanel ID="Gamepanel3" GameID="3" runat="server" />
        <Tgamepanel:gamepanel ID="Gamepanel4" GameID="4" runat="server" />
    </div>

    <div class="row">
        <div class="col-md-12 text-center"> 
                <asp:Button ID="btnSubmit" text="Summary" runat="server" CssClass="btn btn-info btn-lg" OnClick="btnSubmit_Click" />        
        </div>
    </div>

    <asp:Panel ID="panelResults" runat="server" Visible="false">
        <hr />
        <div class="well">
            <h2>Results</h2>
            <asp:TextBox ID="txtResults" TextMode="multiline" Columns="50" Rows="10" runat="server"></asp:TextBox>
        </div>
    </asp:Panel>
</asp:Content>
