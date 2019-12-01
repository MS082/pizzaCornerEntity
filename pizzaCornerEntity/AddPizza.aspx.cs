using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pizzaCornerEntity
{
    public partial class AddPizza : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnPizza_Click(object sender, EventArgs e)
        {
            if (photo.HasFile)
            {
                string str = photo.FileName;
                photo.PostedFile.SaveAs(Server.MapPath("~/pizza/" + str));
              
                string Photo = "pizza/" + str.ToString();
                Data_Base.Class1 obj = new Data_Base.Class1();

                obj.addPizza(txtCategory.Text.ToString(), txtSize.Text.ToString(), txtIngrident.Text.ToString(), Convert.ToInt32(TxtPrice.Text.ToString()),Photo);
                result.InnerHtml = "record added";
                txtSize.Text = "";
                TxtPrice.Text = "";
                txtIngrident.Text = "";
                txtCategory.Text = "";
            }
            else
            {
                result.InnerHtml ="<script>alert('check the record \n deadLock erorr in the record ');</script>";
            }

        }
    }
}