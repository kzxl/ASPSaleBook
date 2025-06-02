using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sale_Book
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
                Response.Redirect("Index.aspx");
            else if (int.Parse(Session["role"].ToString()) != 1)
                Response.Redirect("Index.aspx");
        }

        protected void btn_luu_Click(object sender, EventArgs e)
        {
            if (txt_tennxb.Text != "")
            {
                Addnxb.Insert();
                Label3.Text = "Thêm thành công";
                Label3.Visible = true;
                Response.Redirect("Addnxb.aspx");
            } else
            {
                Response.Write("<script>alert('Chưa nhập đủ thông tin');</script>");
                Label3.Text = "Nhập không đủ thông tin";
                Label3.Visible = true;
            }
        }

        protected void btn_rs_Click(object sender, EventArgs e)
        {
            txt_tennxb.Text = "";
            txt_tennxb.Focus();
        }

        protected void btn_pre_Click(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index = int.Parse(e.CommandArgument.ToString());
            if (index >= 0)
            {
                if (e.CommandName == "del")
                {
                    int c = int.Parse(GridView1.Rows[index].Cells[0].Text);
                    DSNxb.DeleteCommand = "DELETE FROM Nxb WHERE(ma_nxb =" + c + ")";
                    DSNxb.Delete();
                    Response.Redirect("Addnxb.aspx");
                }
            }
        }
    }
}