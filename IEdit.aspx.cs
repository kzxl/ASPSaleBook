using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Web.Configuration;
namespace Sale_Book
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        //SqlConnection con;
        
        //SqlDataAdapter da;
        //DataTable dtab;
        protected void Page_Load(object sender, EventArgs e)
        {
            // con.ConnectionString = WebConfigurationManager.ConnectionStrings["Sale_bookConnectionString"].ToString();

            if (Session["username"] == null)
                Response.Redirect("Index.aspx");
            else if (int.Parse(Session["role"].ToString()) != 1)
                Response.Redirect("Index.aspx");
        }
        private void SaveFileUpLoad()
        {
            string strFileName;
            if (chonhinh.FileName != "")
            {
                strFileName = Server.MapPath("Upload\\" + chonhinh.FileName);
                chonhinh.PostedFile.SaveAs(strFileName);
            }
        }
        protected void btn_luu_Click(object sender, EventArgs e)
        {
         
            if (txt_tensach.Text != "" && txt_tacgia.Text != "" && txt_donvitinh.Text != "" && txt_dongia.Text != "")
            {
                ISach.Insert();
                Label7.Text = "Thêm thành công";
                Label7.Visible = true;
                SaveFileUpLoad();
                Response.Redirect("IEdit.aspx");
            }
            else
            {
                Response.Write("<script>alert('Chưa nhập đủ thông tin');</script>");
                Label7.Text = "Chưa nhập đủ thông tin";
                Label7.Visible = true;
            }
        }

        protected void btn_addnxb_Click(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index = int.Parse(e.CommandArgument.ToString());
            if (index >= 0)
            {
                if (e.CommandName == "del")
                {
                    int ms = int.Parse(GridView1.Rows[index].Cells[0].Text);
                    VSach.DeleteCommand = "DELETE FROM Sach WHERE(ma_sach =" + ms + ")";
                    VSach.Delete();
                    Response.Redirect("IEdit.aspx");
                }
                //if (e.CommandName == "edit")
                //{
                //    int ms = int.Parse(GridView1.Rows[index].Cells[0].Text);
                //    txt_tensach.Text = string.Format(GridView1.Rows[index].Cells[1].Text);
                //    txt_dongia.Text = GridView1.Rows[index].Cells[2].Text;
                //    txt_donvitinh.Text = string.Format(GridView1.Rows[index].Cells[3].Text);
                //    txt_tacgia.Text = string.Format(GridView1.Rows[index].Cells[4].Text);
                //    //ddl_theloai.Text = string.Format(GridView1.Rows[index].Cells[7].Text);
                //    //ddl_nxb.Text = string.Format(GridView1.Rows[index].Cells[7].Text);
                //}
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}