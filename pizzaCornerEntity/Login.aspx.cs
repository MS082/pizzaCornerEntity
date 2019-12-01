using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pizzaCornerEntity
{
    public partial class Login : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Data_Base.Class1 obj = new Data_Base.Class1();
            String Name = txtName.Text.ToString();
            String Password = txtPassword.Text.ToString();
            if (obj.login(Name, Password) == 1)
            {
                Response.Redirect("adminPanel.aspx");
            }
            else
            {
                result.InnerHtml = "<script>alert('Invalid User Name or Password');</script>";
            }
        }
    }
}