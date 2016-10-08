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
        /**
         * Public getter setter for GameID 
         */
        public int GameID {get;set;}
        /**
         * Page Load Event
         */
        protected void Page_Load(object sender, EventArgs e)
        {
            lblGameNumber.Text = GameID.ToString();
        }
        /**
         * Determine if Win or Loss was selected
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
        /**
         * Get number of points scored as an Integer
         */
        public int getPointsScored()
        {
            return Convert.ToInt32(txtScore.Text);
        }
        /**
         * Get number of points allowed as an Integer
         */
        public int getPointsAllowed()
        {
            return Convert.ToInt32(txtAllowed.Text);
        }
        /**
         * Get number of spectators as an Integer
         */
        public int getSpectators()
        {
            return Convert.ToInt32(txtSpectators.Text);
        }

        /**
         * If a win was selected, make sure more points were scored than allowed
         */
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

        /**
         * If a loss was selected make sure more points were allowed than scored
         */
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