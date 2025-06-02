using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sale_Book
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                deletegiohang();
                Session["username"] = null;
                Session["makhach"] = null;
                Session["Role"] = null;
                Session["tongtien"] = null;
                Session["tongsach"] = null;
                Session["ForceLogOut"] = "ForceLogOut";
                Response.Redirect("Index.aspx");
            }
        }
        Gio_Hang_KH ghkh = new Gio_Hang_KH();
        protected void deletegiohang()
        {
            ghkh.tendn = Session["username"].ToString();
            ghkh.deletenow(ghkh);
        }
    }
}