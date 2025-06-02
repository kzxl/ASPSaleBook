using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sale_Book
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            xoaghkh();
            //if (Session["username"] != null && Session["username"] =="")
            //{
            //    Label1.Text = "Chào " + Session["username"].ToString();
            //    Label1.Visible = true;
            //    ImageButton1.Visible = true;
            //}
        }
        protected void xoaghkh()
        {
            Gio_Hang_KH ghkh = new Gio_Hang_KH();
            try
            {
                ghkh.delete(ghkh);
            }
            catch
            {

            }
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}