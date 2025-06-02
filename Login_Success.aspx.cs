using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sale_Book
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"].ToString() != "")
                lblInfo.Text = "Xin Chào bạn <b>" + Session["username"] + "</b> đã trở lại Website bán sách online của chúng tôi";

            System.Threading.Thread.Sleep(3000);
            Response.Redirect("Index.aspx");

        }
    }
}