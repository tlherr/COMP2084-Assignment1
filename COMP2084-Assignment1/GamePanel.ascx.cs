using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace COMP2084_Assignment1
{
    public partial class GamePanel : System.Web.UI.UserControl
    {
        public int GameID {get;set;}

        protected void Page_Load(object sender, EventArgs e)
        {
            lblGameNumber.Text = GameID.ToString();
        }
    }
}