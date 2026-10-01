using System;

namespace AcademicLeaveSystem
{
    public partial class Calendar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void calLeaveDate_SelectionChanged(object sender, EventArgs e)
        {
            DateTime selectedDate = calLeaveDate.SelectedDate;

            lblSelectedDate.Text =
                "Selected Leave Date: " +
                selectedDate.ToString("dd/MM/yyyy");

            Session["LeaveDate"] = selectedDate;
        }

        protected void btnApplyLeave_Click(object sender, EventArgs e)
        {
            if (Session["LeaveDate"] != null)
            {
                Response.Redirect("Leave.aspx");
            }
            else
            {
                lblSelectedDate.Text =
                    "Please select a date first.";
            }
        }
    }
}