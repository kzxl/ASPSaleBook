using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Sale_Book
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txthoten.Focus();
        }
       

        protected void imgbtndangky_Click(object sender, ImageClickEventArgs e)
        {
            AccessData ac = new AccessData();
            int ktdk = 0;
            SqlDataReader reader = ac.ExecuteReader("Select Ten_dn from Khach_hang");
            while (reader.Read())
            {
                if (reader[0].ToString() == txttendn.Text)
                {
                    ktdk = 1;
                    lblthongbao.Text = "Tên đăng nhập đã có người dùng, <br> Hãy Thử Tên Đăng Nhập Khác!";
                }
            }
            if (ktdk == 0)
            {
                try
                {
                    KHAddDS.Insert();
                }
                catch (SqlException ex)
                {
                    lblthongbao.Text = ex.Message.ToString();
                }
                Response.Redirect("Dang_Nhap_KH.aspx");
            }
        }

        protected void txthoten_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtngaysinh_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
         
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txtngaysinh.Text = Calendar1.SelectedDate.ToShortDateString();
            
        }
    }
}