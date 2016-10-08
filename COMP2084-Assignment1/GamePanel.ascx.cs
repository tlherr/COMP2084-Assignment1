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

        /**
         * Get the Value of the Win/Loss Radio Button
         */
        public Boolean getWin()
        {
            switch(rdioWinLoss.SelectedIndex)
            {
                case 0:
                    return true;
                case 1:
                    return false;
                default:
                    return false;
            }
        }

        public int getPointsScored()
        {
            return Convert.ToInt32(txtScore.Text);
        }

        public int getPointsAllowed()
        {
            return Convert.ToInt32(txtAllowed.Text);
        }

        public int getSpectators()
        {
            return Convert.ToInt32(txtSpectators.Text);
        }

        protected void checkScoreValidator_Validate(object source, ServerValidateEventArgs args)
        {
            if(rdioWinLoss.SelectedIndex==0 && Convert.ToInt32(txtScore.Text) < Convert.ToInt32(txtAllowed.Text))
            {
                args.IsValid = false;
            } else
            {
                args.IsValid = true;
            }
        }

        protected void checkAllowedValidator_Validate(object source, ServerValidateEventArgs args)
        {
            if (rdioWinLoss.SelectedIndex == 1 && Convert.ToInt32(txtScore.Text) > Convert.ToInt32(txtAllowed.Text))
            {
                args.IsValid = false;
            } else
            {
                args.IsValid = true;
            }
        }
        
    }
}