using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sale_Book
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
                Response.Redirect("Index.aspx");
            else if (int.Parse(Session["role"].ToString()) != 1)
                Response.Redirect("Index.aspx");
        }

        protected void btn_pre_Click(object sender, EventArgs e)
        {
            
        }

        protected void btn_luu_Click(object sender, EventArgs e)
        {
            if (txt_tentheloai.Text != "")
            {
                AddTheloai.Insert();
                Label3.Text = "Thêm thành công";
                Label3.Visible = true;
                Response.Redirect("Addtheloai.aspx");
            }
            else
            {
                Response.Write("<script>alert('Chưa nhập đủ thông tin');</script>");
                Label3.Text = "Nhập không đủ thông tin";
                Label3.Visible = true;
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index = int.Parse(e.CommandArgument.ToString());
            if (index >= 0)
            {
                if (e.CommandName == "del")
                {
                    int c = int.Parse(GridView1.Rows[index].Cells[0].Text);
                    DSThe_loai.DeleteCommand = "DELETE FROM The_loai WHERE(ma_the_loai =" + c + ")";
                    DSThe_loai.Delete();
                    Response.Redirect("Addtheloai.aspx");
                }
            }
        }
    }
}