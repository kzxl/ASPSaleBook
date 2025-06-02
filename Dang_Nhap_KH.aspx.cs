using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sale_Book
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                Response.Redirect("Index.aspx");
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Dang_Nhap dn = new Dang_Nhap(); 
            int t = dn.CheckLogin(txtuser.Text,txtpass.Text);
            if (t > 0)
            {
                Session["username"] = txtuser.Text;
                Session["Role"] = t;                
                Session["makhach"] = dn.makhach(Session["username"].ToString());                
                Response.Redirect("Login_Success.aspx");
            }
            else
            {
                Response.Write("<script>alert('Đăng nhập thất bại');</script>");

            }
        }
        
    }
}