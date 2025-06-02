using System;
using System.Collections.Generic;
using System.Security.Claims;
using System.Security.Principal;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace Sale_Book
{
    public partial class SiteMaster : MasterPage
    {
        //private const string AntiXsrfTokenKey = "__AntiXsrfToken";
        //private const string AntiXsrfUserNameKey = "__AntiXsrfUserName";
        //private string _antiXsrfTokenValue;

        //protected void Page_Init(object sender, EventArgs e)
        //{
        //    // The code below helps to protect against XSRF attacks
        //    var requestCookie = Request.Cookies[AntiXsrfTokenKey];
        //    Guid requestCookieGuidValue;
        //    if (requestCookie != null && Guid.TryParse(requestCookie.Value, out requestCookieGuidValue))
        //    {
        //        // Use the Anti-XSRF token from the cookie
        //        _antiXsrfTokenValue = requestCookie.Value;
        //        Page.ViewStateUserKey = _antiXsrfTokenValue;
        //    }
        //    else
        //    {
        //        // Generate a new Anti-XSRF token and save to the cookie
        //        _antiXsrfTokenValue = Guid.NewGuid().ToString("N");
        //        Page.ViewStateUserKey = _antiXsrfTokenValue;

        //        var responseCookie = new HttpCookie(AntiXsrfTokenKey)
        //        {
        //            HttpOnly = true,
        //            Value = _antiXsrfTokenValue
        //        };
        //        if (FormsAuthentication.RequireSSL && Request.IsSecureConnection)
        //        {
        //            responseCookie.Secure = true;
        //        }
        //        Response.Cookies.Set(responseCookie);
        //    }

        //    Page.PreLoad += master_Page_PreLoad;
        //}

        //protected void master_Page_PreLoad(object sender, EventArgs e)
        //{
        //    if (!IsPostBack)
        //    {
        //        // Set Anti-XSRF token
        //        ViewState[AntiXsrfTokenKey] = Page.ViewStateUserKey;
        //        ViewState[AntiXsrfUserNameKey] = Context.User.Identity.Name ?? String.Empty;
        //    }
        //    else
        //    {
        //        // Validate the Anti-XSRF token
        //        if ((string)ViewState[AntiXsrfTokenKey] != _antiXsrfTokenValue
        //            || (string)ViewState[AntiXsrfUserNameKey] != (Context.User.Identity.Name ?? String.Empty))
        //        {
        //            throw new InvalidOperationException("Validation of Anti-XSRF token failed.");
        //        }
        //    }
        //}

        protected void Page_Load(object sender, EventArgs e)
        {
            edit.Visible = false;
            gh.Visible = false;
            logout.Visible = false;
            //    SqlDataAdapter da = new SqlDataAdapter();
            //Application.Lock();
            if (Session["username"] != null)
            {
                Label1.Text = "Chào " + Session["username"].ToString();
                dky.Visible = false;
                dnhap.Visible = false;
                Label1.Visible = true;
                gh.Visible = true;
                logout.Visible = true;
                if ((int)Session["Role"] == 1)
                {
                    edit.Visible = true;
                }
                else
                {
                    edit.Visible = false;
                }
            } else
            {
                dky.Visible = true;
                dnhap.Visible = true;
                Label1.Visible = false;
                gh.Visible = false;
                logout.Visible = false;
            }
            //   
            //else 
            //edit.Visible = false;
            //if (int.Parse(Session["role"].ToString()) == 1)
            //{
            //    edit.Visible = true;
            //}
            //    Response.Redirect("Index.aspx");

            //Application.UnLock();

            lblconl.Text ="Số người đang online: "+ Application["COnl"].ToString();
            System.IO.StreamReader read = new System.IO.StreamReader(Server.MapPath("count.txt"));
            int count = 0;
            count=int.Parse(read.ReadLine());
            read.Close();
            count++;
            System.IO.StreamWriter write = new System.IO.StreamWriter(Server.MapPath("count.txt"));
            Application.Lock();
            write.Write(count);
            Application.UnLock();
            write.Close();
            lblcount.Text ="Tổng lượt truy cập: "+ count.ToString();
        }

       

            

        


        protected void Unnamed_LoggingOut(object sender, LoginCancelEventArgs e)
        {
            Context.GetOwinContext().Authentication.SignOut(DefaultAuthenticationTypes.ApplicationCookie);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(txttk.Text==null||txttk.Text=="")
            {
                Response.Write("<script>alert('Hãy Nhập Vào Từ Khóa Tìm Kiếm');</script>");
            }
            else
            {
                Session["timkiem"] = txttk.Text;

                Response.Redirect("~/Tim_Kiem.aspx");
            }

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Logout.aspx");
        }
    }

}