using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace COMP2084_Assignment1
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            panelResults.Visible = false;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Check to see if all validators ran successfully and page is ready for submission
            if(Page.IsValid)
            {
                int totalGames = 0;
                int GamesWon = 0;
                int GamesLost = 0;
                decimal WinPercentage;
                int totalPointsScored = 0;
                int totalPointsAllowed = 0;
                int pointDifferential;
                int totalSpectators = 0;
                decimal averageSpectators;

                ArrayList panels = new ArrayList();
                panels.Add(Gamepanel1);
                panels.Add(Gamepanel2);
                panels.Add(Gamepanel3);
                panels.Add(Gamepanel4);

                foreach (GamePanel panel in panels)
                {

                    totalGames++;
                    if (panel.getWin())
                    {
                        GamesWon++;
                    }
                    else
                    {
                        GamesLost++;
                    }

                    totalPointsScored += panel.getPointsScored();
                    totalPointsAllowed += panel.getPointsAllowed();
                    totalSpectators += panel.getSpectators();
                }

                WinPercentage = Decimal.Divide(GamesWon, totalGames) * 100;
                pointDifferential = totalPointsScored - totalPointsAllowed;
                averageSpectators = Decimal.Divide(totalSpectators, totalGames);

                System.Text.StringBuilder result = new System.Text.StringBuilder();
                result.AppendLine("Number of Games Won: " + GamesWon.ToString());
                result.AppendLine("Number of Games Lost: " + GamesLost.ToString());
                result.AppendLine("Percentage of Games Won: " + WinPercentage.ToString() + "%");
                result.AppendLine("Total Points Scored: " + totalPointsScored.ToString());
                result.AppendLine("Total Points Allowed: " + totalPointsAllowed.ToString());
                result.AppendLine("Point Differential: " + pointDifferential.ToString());
                result.AppendLine("Total Spectators: " + totalSpectators.ToString());
                result.AppendLine("Average Spectators: " + averageSpectators.ToString());

                txtResults.Text = result.ToString();

                panelResults.Visible = true;
            }
        }

    }
}