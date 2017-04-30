using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EL_bookstore
{
    public partial class page : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Session["lng"] = "en-US";
            Response.Redirect(Request.Path);
        }

        protected void ImageButtonBg_Click(object sender, ImageClickEventArgs e)
        {
            Session["lng"] = "bg-BG";
            Response.Redirect(Request.Path);
        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {

        }

        
    }
}