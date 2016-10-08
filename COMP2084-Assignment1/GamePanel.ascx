<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="GamePanel.ascx.cs" Inherits="COMP2084_Assignment1.GamePanel" %>

<!-- Start Panel -->
<div class="col-sm-3 col-md-3">
    <div class="well">

        <h2>Game <asp:Label ID="lblGameNumber" runat="server"></asp:Label></h2>
        <div class="form-group clearfix">
            <div class="col-sm-12">
                <asp:Label ID="lblResult" Text="Result" runat="server"></asp:Label>
            </div>
            <div class="col-sm-12">
                    <asp:RadioButtonList ID="rdioWinLoss" runat="server" CssClass="radio">
                        <asp:ListItem id="rdioOptionWin" Text="Win" Value="1"></asp:ListItem>
                        <asp:ListItem id="rdioOptionLoss" Text="Loss" Value="2"></asp:ListItem>
                    </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="winLossRequiredValidator" runat="server" ErrorMessage="Result is required" 
                    ControlToValidate="rdioWinLoss" Display="Dynamic" CssClass="alert-danger"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group clearfix">
            <asp:Label AssociatedControlID="txtScore" Text="Scored" CssClass="col-sm-5 control-label" runat="server"></asp:Label>   
            <div class="col-sm-7">
                <asp:TextBox ID="txtScore" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="txtScoreRequiredValidator" runat="server" ErrorMessage="Score is required" 
                    ControlToValidate="txtScore" Display="Dynamic"  CssClass="alert-danger" ></asp:RequiredFieldValidator>

                <asp:RangeValidator ID="txtScoreRangeValidator" runat="server" 
                    ErrorMessage="Invalid Input"
                    cssclass="alert-danger" ControlToValidate="txtScore"
                    MaximumValue="9999999" MinimumValue="0"
                    Type="Currency" Display="Dynamic" >
                </asp:RangeValidator>

                <asp:CompareValidator ID="scoreTieValidator" runat="server" ErrorMessage="Ties are Not Allowed" 
                    ControlToValidate="txtScore" ControlToCompare="txtAllowed" Operator="NotEqual" Display="Dynamic"  CssClass="alert-danger"></asp:CompareValidator>

                <asp:CustomValidator ID="checkScoreValidator" runat="server" ErrorMessage="Scored must be higher than allowed for a win to be selected"
                    OnServerValidate="checkScoreValidator_Validate" ControlToValidate="txtScore" ControlToCompare="txtAllowed" Display="Dynamic"  CssClass="alert-danger">
                </asp:CustomValidator>

            </div>
        </div>
        <div class="form-group clearfix">
            <asp:Label AssociatedControlID="txtAllowed" Text="Allowed" CssClass="col-sm-5 control-label" runat="server"></asp:Label>
            <div class="col-sm-7">
                <asp:TextBox ID="txtAllowed" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="allowedRequiredValidator" runat="server" ErrorMessage="Allowed is required"
                     ControlToValidate="txtAllowed" Display="Dynamic"  CssClass="alert-danger"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="txtAllowedRangeValidator" runat="server" 
                    ErrorMessage="Invalid Input"
                    cssclass="alert-danger" ControlToValidate="txtAllowed"
                    MaximumValue="9999999" MinimumValue="0"
                    Type="Currency" Display="Dynamic" >
                </asp:RangeValidator>

                <asp:CompareValidator ID="allowedTieValidator" runat="server" ErrorMessage="Ties are Not Allowed" 
                    ControlToValidate="txtAllowed" ControlToCompare="txtScore" Operator="NotEqual" Display="Dynamic"  CssClass="alert-danger"></asp:CompareValidator>

                <asp:CustomValidator ID="checkAllowedValidator" runat="server" ErrorMessage="Allowed must be higher than scored for a loss to be selected"
                    OnServerValidate="checkAllowedValidator_Validate" ControlToValidate="txtAllowed" ControlToCompare="txtScore" Display="Dynamic"  CssClass="alert-danger">
                </asp:CustomValidator>
            </div>
        </div>
        <div class="form-group clearfix">
            <asp:Label AssociatedControlID="txtSpectators" Text="Spectators" CssClass="col-sm-5 control-label" runat="server"></asp:Label>
            <div class="col-sm-7">
                <asp:TextBox ID="txtSpectators" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="spectatorsRequiredValidator" runat="server" ErrorMessage="Spectators is required" 
                    ControlToValidate="txtSpectators" Display="Dynamic"  CssClass="alert-danger"></asp:RequiredFieldValidator>

                <asp:RangeValidator ID="txtSpectatorsRangeValidator" runat="server" 
                    ErrorMessage="Invalid Input"
                    cssclass="alert-danger" ControlToValidate="txtSpectators"
                    MaximumValue="9999999" MinimumValue="0"
                    Type="Currency" Display="Dynamic" >
                </asp:RangeValidator>
            </div>
        </div>
    </div>
</div>
<!-- End Panel -->
