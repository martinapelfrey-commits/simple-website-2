<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormDemo.aspx.cs" Inherits="DemoApp.WebFormDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Order Form Demo</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="font-family: Arial; width: 500px; margin: 20px;">
            <h2>Order Form</h2>

            <p>
                <b>Name:</b><br />
                <asp:TextBox ID="txtName" runat="server" Width="250px" />
                <asp:RequiredFieldValidator
                    ID="rfvName"
                    runat="server"
                    ControlToValidate="txtName"
                    ErrorMessage="Name is required."
                    ForeColor="Red"
                    ValidationGroup="OrderGroup" />
            </p>

            <p>
                <b>Plan:</b><br />
                <asp:DropDownList ID="ddlPlan" runat="server">
                    <asp:ListItem Value="0" Text="Select a plan"></asp:ListItem>
                    <asp:ListItem Value="29.99" Text="Basic - $29.99"></asp:ListItem>
                    <asp:ListItem Value="49.99" Text="Standard - $49.99"></asp:ListItem>
                    <asp:ListItem Value="79.99" Text="Premium - $79.99"></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator
                    ID="rfvPlan"
                    runat="server"
                    ControlToValidate="ddlPlan"
                    InitialValue="0"
                    ErrorMessage="Please select a plan."
                    ForeColor="Red"
                    ValidationGroup="OrderGroup" />
            </p>

            <p>
                <b>Quantity:</b><br />
                <asp:TextBox ID="txtQty" runat="server" Text="1" Width="80px" />
                <asp:RangeValidator
                    ID="rvQty"
                    runat="server"
                    ControlToValidate="txtQty"
                    MinimumValue="1"
                    MaximumValue="10"
                    Type="Integer"
                    ErrorMessage="Quantity must be between 1 and 10."
                    ForeColor="Red"
                    ValidationGroup="OrderGroup" />
            </p>

            <p>
                <b>Delivery:</b><br />
                <asp:RadioButtonList ID="rblDelivery" runat="server" RepeatLayout="Flow">
                    <asp:ListItem Value="0" Text="Pickup" Selected="True"></asp:ListItem>
                    <asp:ListItem Value="9.99" Text="Standard Delivery - $9.99"></asp:ListItem>
                    <asp:ListItem Value="19.99" Text="Express Delivery - $19.99"></asp:ListItem>
                </asp:RadioButtonList>
            </p>

            <p>
                <asp:CheckBox ID="chkWarranty" runat="server" Text="Add 1-year warranty (+$12.00)" />
            </p>

            <p>
                <asp:Button
                    ID="btnSubmit"
                    runat="server"
                    Text="Submit Order"
                    OnClick="btnSubmit_Click"
                    ValidationGroup="OrderGroup" />
            </p>

            <p>
                <asp:Label ID="lblResult" runat="server" ForeColor="DarkGreen" Font-Bold="true" />
            </p>
        </div>
    </form>
</body>
</html>