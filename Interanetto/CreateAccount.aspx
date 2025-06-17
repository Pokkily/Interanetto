<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateAccount.aspx.cs" Inherits="Interanetto.CreateAccount" Async="true" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create Account</title>
    <style>
        body {
            font-family: Arial;
            background-color: #f5f5f5;
        }
        .form-container {
            max-width: 500px;
            margin: auto;
            background-color: white;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            margin-top: 50px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            font-weight: bold;
        }
        .form-title {
            text-align: center;
            font-size: 24px;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-container">
            <div class="form-title">Create Account</div>

            <div class="form-group">
                <label for="txtName">Full Name</label><br />
                <asp:TextBox ID="txtName" runat="server" Width="100%"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="txtEmail">Email</label><br />
                <asp:TextBox ID="txtEmail" runat="server" Width="100%" TextMode="Email"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="txtAddress">Address</label><br />
                <asp:TextBox ID="txtAddress" runat="server" Width="100%"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="txtPhone">Phone Number</label><br />
                <asp:TextBox ID="txtPhone" runat="server" Width="100%" TextMode="Phone"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="txtAge">Age</label><br />
                <asp:TextBox ID="txtAge" runat="server" Width="100%" TextMode="Number"></asp:TextBox>
            </div>

            <div class="form-group">
                <label>Account Type</label><br />
                <asp:RadioButtonList ID="rblAccountType" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Text="Student" Value="Student" />
                    <asp:ListItem Text="Teacher" Value="Teacher" />
                </asp:RadioButtonList>
            </div>

            <asp:Button ID="btnSubmit" runat="server" Text="Create Account" OnClick="btnSubmit_Click" />
        </div>
    </form>
</body>
</html>
