<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Calendar.aspx.cs"
    Inherits="AcademicLeaveSystem.Calendar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title>Academic Calendar</title>

</head>

<body>

<form id="form1" runat="server">

    <h1>Academic Calendar</h1>

    <asp:Label ID="lblInstruction"
        runat="server"
        Text="Select Leave Date:">
    </asp:Label>

    <br /><br />

    <asp:Calendar ID="calLeaveDate"
        runat="server"
        OnSelectionChanged="calLeaveDate_SelectionChanged">
    </asp:Calendar>

    <br />

    <asp:Label ID="lblSelectedDate"
        runat="server"
        Text="No date selected.">
    </asp:Label>

    <br /><br />

    <asp:Button ID="btnApplyLeave"
        runat="server"
        Text="Apply for Leave"
        OnClick="btnApplyLeave_Click">
    </asp:Button>

</form>

</body>

</html>