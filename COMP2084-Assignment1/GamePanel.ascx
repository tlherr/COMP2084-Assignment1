<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="GamePanel.ascx.cs" Inherits="COMP2084_Assignment1.GamePanel" %>

<div class="col-sm-3 col-md-3">
    <div class="well">

        <h2>Game <asp:Label ID="lblGameNumber" runat="server"></asp:Label></h2>
        <div class="form-group">
            <asp:Label ID="lblResult" Text="Result" runat="server"></asp:Label>
            <div class="col-sm-8">

                    <asp:RadioButtonList ID="rdioWinLoss" runat="server">
                        <asp:ListItem id="rdioOptionWin" Text="Win" Value="1"></asp:ListItem>
                        <asp:ListItem id="rdioOptionLoss" Text="Loss" Value="2"></asp:ListItem>
                    </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="winLossRequiredValidator" runat="server" ErrorMessage="This Field is Required" ControlToValidate="rdioWinLoss"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <asp:Label AssociatedControlID="txtScore" Text="Scored" CssClass="col-sm-4 control-label" runat="server"></asp:Label>
            <div class="col-sm-8">
                <asp:TextBox ID="txtScore" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="scoreRequiredValidator" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtScore"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <asp:Label AssociatedControlID="txtAllowed" Text="Allowed" CssClass="col-sm-4 control-label" runat="server"></asp:Label>
            <div class="col-sm-8">
                <asp:TextBox ID="txtAllowed" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="allowedRequiredValidator" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtAllowed"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <asp:Label AssociatedControlID="txtSpectators" Text="Spectators" CssClass="col-sm-4 control-label" runat="server"></asp:Label>
            <div class="col-sm-8">
                <asp:TextBox ID="txtSpectators" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="spectatorsRequiredValidator" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtSpectators"></asp:RequiredFieldValidator>
            </div>
        </div>
    </div>
</div>
