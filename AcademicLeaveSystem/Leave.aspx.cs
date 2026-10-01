using System;

namespace AcademicLeaveSystem
{
    public partial class Leave : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Get student name from Cookie
                if (Request.Cookies["StudentName"] != null)
                {
                    txtStudentName.Text =
                        Request.Cookies["StudentName"].Value;
                }

                // Get leave date from Session
                if (Session["LeaveDate"] != null)
                {
                    DateTime leaveDate =
                        (DateTime)Session["LeaveDate"];

                    lblLeaveDate.Text =
                        leaveDate.ToString("dd/MM/yyyy");
                }
                else
                {
                    lblLeaveDate.Text =
                        "Date not selected";
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string studentName = txtStudentName.Text;

            string leaveType =
                ddlLeaveType.SelectedValue;

            string reason =
                txtReason.Text;

            // Store information in Session
            Session["StudentName"] = studentName;
            Session["LeaveType"] = leaveType;
            Session["Reason"] = reason;

            // Store name in Cookie
            if (chkRemember.Checked)
            {
                Response.Cookies["StudentName"].Value =
                    studentName;

                Response.Cookies["StudentName"].Expires =
                    DateTime.Now.AddDays(7);
            }

            lblResult.Text =
                "Leave Application Submitted Successfully!" +
                "<br/><br/>" +
                "Student Name: " + studentName +
                "<br/>" +
                "Leave Date: " + lblLeaveDate.Text +
                "<br/>" +
                "Leave Type: " + leaveType +
                "<br/>" +
                "Reason: " + reason;
        }
    }
}