<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Leave.aspx.cs"
    Inherits="AcademicLeaveSystem.Leave" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title>Leave Application</title>

</head>

<body>

<form id="form1" runat="server">

    <h1>Student Leave Application</h1>

    <br />

    <asp:Label ID="lblStudentName"
        runat="server"
        Text="Student Name:">
    </asp:Label>

    <asp:TextBox ID="txtStudentName"
        runat="server">
    </asp:TextBox>

    <br /><br />

    <asp:Label ID="lblLeaveDateTitle"
        runat="server"
        Text="Leave Date:">
    </asp:Label>

    <asp:Label ID="lblLeaveDate"
        runat="server">
    </asp:Label>

    <br /><br />

    <asp:Label ID="lblLeaveType"
        runat="server"
        Text="Leave Type:">
    </asp:Label>

    <asp:DropDownList ID="ddlLeaveType"
        runat="server">

        <asp:ListItem>
            Select Leave Type
        </asp:ListItem>

        <asp:ListItem>
            Medical Leave
        </asp:ListItem>

        <asp:ListItem>
            Personal Leave
        </asp:ListItem>

        <asp:ListItem>
            Academic Leave
        </asp:ListItem>

        <asp:ListItem>
            Emergency Leave
        </asp:ListItem>

    </asp:DropDownList>

    <br /><br />

    <asp:Label ID="lblReason"
        runat="server"
        Text="Reason:">
    </asp:Label>

    <br />

    <asp:TextBox ID="txtReason"
        runat="server"
        TextMode="MultiLine"
        Rows="5"
        Columns="40">
    </asp:TextBox>

    <br /><br />

    <asp:CheckBox ID="chkRemember"
        runat="server"
        Text="Remember my name">
    </asp:CheckBox>

    <br /><br />

    <asp:Button ID="btnSubmit"
        runat="server"
        Text="Submit Leave Application"
        OnClick="btnSubmit_Click">
    </asp:Button>

    <br /><br />

    <asp:Label ID="lblResult"
        runat="server">
    </asp:Label>

</form>

</body>

</html>