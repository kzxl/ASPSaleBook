using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sale_Book
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int tt = 0;
           

            if (Session["username"] != null || Session["username"] != "")
            {
                
                    if (Session["makhach"] != null || Session["makhach"] != "")
                    {
                        Session["ngay"] = DateTime.Now.ToShortDateString();
                    //GiohangDS.InsertCommand = "insert into hoa_don('ma_khach_hang','ma_sach','ngay_mua') values('"+Session["makhach"]+"','"+Session["masach"]+"','"+DateTime.Now.ToShortDateString()+"')";
                    if (Session["masach"] != null || Session["masach"] != "")
                    {
                        GiohangDS.Insert();
                    }
                    else
                        lblthongbao.Text = "Bạn chưa chọn quyển sách nào";

                        AccessData ac = new AccessData();
                        SqlDataReader reader = ac.ExecuteReader("SELECT SUM(Sach.don_gia) AS Expr1, Khach_hang.ma_khach_hang AS Expr2 FROM Hoa_don INNER JOIN Sach ON Hoa_don.ma_sach = Sach.ma_sach INNER JOIN Khach_hang ON Hoa_don.ma_khach_hang = Khach_hang.ma_khach_hang GROUP BY Khach_hang.ma_khach_hang HAVING (Khach_hang.ma_khach_hang ="+Session["makhach"]+")");
                        while (reader.Read())
                        {


                            tt = int.Parse(reader[0].ToString());
                        }

                            lbltongtien.Text = tt.ToString();
                            Session["tongtien"] = tt;
                            //Response.Redirect("~/Gio_Hang.aspx");
                        
                    }
                
            }
            
        }
       
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index = int.Parse(e.CommandArgument.ToString());

            if (e.CommandName == "del")
            {
                
                int c = int.Parse(GridView1.Rows[index].Cells[0].Text);
                GiohangDS.DeleteCommand = "DELETE FROM Hoa_don WHERE(ma_sach =" + c + ")";
                GiohangDS.Delete();                
                Session["masach"] = null;                
                Response.Redirect("~/Gio_Hang.aspx");
            }
        }
    }
}