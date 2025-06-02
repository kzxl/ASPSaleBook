using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace Sale_Book
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["timkiem"] == null || Session["timkiem"] == "")
            {
                Response.Write("<script>alert('Hãy Nhập Vào Từ Khóa Tìm Kiếm');</script>");
                Response.Redirect("~/Index.aspx");
            }
            else
            {


             lbl1.Text = "Từ Khóa: " + "'" + Session["timkiem"].ToString() + "'";
                tongsosach(Session["timkiem"].ToString());
            }
        }
        public void tongsosach(string tongsach)
        {
            AccessData ac = new AccessData();
            string sql = "select * from sach where ten_sach like N" + "'" + "%" + tongsach + "%" + "'";
            DataTable dt = ac.GetTable(sql);
            int ts = dt.Rows.Count;
            lbl2.Text = "Tìm Thấy: " + ts.ToString() + " Sách";
            //DataList1.DataSource = dt;
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}