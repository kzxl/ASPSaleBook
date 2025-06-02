using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sale_Book
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        AccessData ac = new AccessData();
        protected void Page_Load(object sender, EventArgs e)
        {
            ViewState["ms"] = Request.QueryString["code"];
            tensach(int.Parse(ViewState["ms"].ToString()));
            theloaisach(int.Parse(ViewState["ms"].ToString()));
            nhaxuatban(int.Parse(ViewState["ms"].ToString()));
            dongia(int.Parse(ViewState["ms"].ToString()));
            donvitinh(int.Parse(ViewState["ms"].ToString()));
            hinhminhhoa(int.Parse(ViewState["ms"].ToString()));
            tacgia(int.Parse(ViewState["ms"].ToString()));
            mota(int.Parse(ViewState["ms"].ToString()));
            //gettentg(int.Parse(ViewState["ms"].ToString()));
            //getmanxb(int.Parse(ViewState["ms"].ToString()));
            //getmachude(int.Parse(ViewState["ms"].ToString()));
        }
        public void tensach(int masach)
        {
            string sql = "select ten_sach from Sach where ma_sach =" + masach;
            string ts = ac.ExecuteScalar(sql);
            lblten_sach.Text = ts.ToString();
        }

        public void theloaisach(int masach)
        {
            string sql = "select ten_the_loai from the_loai c, sach s where c.ma_the_loai = s.ma_the_loai and ma_sach = " + masach;
            string tls = ac.ExecuteScalar(sql);
            hplthe_loai_sach.Text = tls.ToString();
        }

        public void nhaxuatban(int masach)
        {
            string sql = "select ten_nxb from nxb n, sach s where n.ma_nxb = s.ma_nxb and ma_sach = " + masach;
            string nxb = ac.ExecuteScalar(sql);
            hplnha_xuat_ban.Text = nxb.ToString();
        }

        public void dongia(int masach)
        {
            string sql = "select don_gia from sach where ma_sach = " + masach;
            int dg = ac.ExecuteScalarInt(sql);
            lbldon_gia.Text = dg.ToString();
        }

        public void donvitinh(int masach)
        {
            string sql = "select don_vi_tinh from sach where ma_sach = " + masach;
            string dvt = ac.ExecuteScalar(sql);
            lblcuon.Text = dvt.ToString();
        }

        public void hinhminhhoa(int masach)
        {
            string sql = "select hinh from sach where ma_sach = " + masach;
            string hmh ="Upload/"+ac.ExecuteScalar(sql);
            imghinh_minh_hoa.ImageUrl = hmh.ToString();
        }

        public void tacgia(int masach)
        {
            string sql = "select ten_tac_gia from sach where ma_sach = " + masach;
            string tg = ac.ExecuteScalar(sql);
            hpltac_gia.Text = tg.ToString();
        }

        public void mota(int masach)
        {
            string sql = "select noi_dung_tt from sach where ma_sach = " + masach;
            string mt = ac.ExecuteScalar(sql);
            lblmo_ta.Text = mt.ToString();
        }

        //public void gettentg(int masach)
        //{
        //    string sql = "select ten_tac_gia from sach where ma_sach = " + masach;
        //    string ms = ac.ExecuteScalar(sql);
        //    //Session["tentg"] = ms;
        //}

        //public void getmanxb(int masach)
        //{
        //    string sql = "select ma_nxb from sach where ma_sach = " + masach;
        //    string manhaxuatban = ac.ExecuteScalar(sql);
        //    Session["manxb"] = manhaxuatban;
        //}

        //public void getmachude(int masach)
        //{
        //    string sql = "select ma_the_loai from sach where ma_sach = " + masach;
        //    string machude = ac.ExecuteScalar(sql);
        //    Session["macd"] = machude;
        //}
        protected void imgbtnchonmua_Click(object sender, ImageClickEventArgs e)
        {
            if (Session["username"] == null || Session["username"] == "")
            {
                Response.Write("<script>alert('Bạn cần đăng nhập trước');</script>");
                Response.Redirect("Dang_Nhap_KH.aspx");
            } else
            {
                Session["masach"] = int.Parse(ViewState["ms"].ToString());
                Response.Redirect("~/Gio_Hang.aspx");
            }
        }
    }
}