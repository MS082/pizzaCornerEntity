using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pizzaCornerEntity
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                Data_Base.Class1 obj = new Data_Base.Class1();
                obj.addFeedBack(TxtName.Text.ToString(), TxtEmail.Text.ToString(), TxtNumber.Text.ToString(), TxtMsg.Text.ToString());
                TxtEmail.Text = "";
                TxtMsg.Text = "";
                TxtName.Text = "";
                TxtNumber.Text = "";
                result.InnerHtml = "<script>alert('Thanks for the feed Back ');</script>";
            }
            catch (Exception ex) {
                result.InnerHtml = "<script>alert('check the record once or may be dead lock error '); </script>";
            }
        }
    }
}