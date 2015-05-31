//Creating by Daniel Di Giambattista (100038157)
//Date: 27/05/2015
//Purpose: Assignment #1, Create a game calculator

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void summaryBtn_Click(object sender, EventArgs e)
        {
            //Variables 
            double win = 0;
            double loss = 0;
            double winningPercent = 0;
            double totalPoints = 0;
            double totalAllowed = 0;
            double points1;
            double points2;
            double points3;
            double points4;
            double allowed1;
            double allowed2;
            double allowed3;
            double allowed4;
            double spec1;
            double spec2;
            double spec3;
            double spec4;
            double pointDiff;
            double spectators;
            double avgSpectators;

            //Label Variables
            totalWinLb.Text = "";
            totalLossLb.Text = "";
            winningPercentLb.Text = "";
            totalPointsLb.Text = "";
            totalAllowedLb.Text = "";
            totalSpectatorsLb.Text = "";
            totalAvgSpectatorsLb.Text = "";

            //Go though Win and Loss Radio Buttons
            //checking the value and total them depending
            //on win or loss selected.
            if (game1Rb.SelectedValue == "1")
            {
                win = win + 1;
            }
            else
            {
                loss = loss + 1;
            }

            if (game2Rb.SelectedValue == "1")
            {
                win = win + 1;
            }
            else
            {
                loss = loss + 1;
            }

            if (game3Rb.SelectedValue == "1")
            {
                win = win + 1;
            }
            else
            {
                loss = loss + 1;
            }

            if (game4Rb.SelectedValue == "1")
            {
                win = win + 1;
            }
            else
            {
                loss = loss + 1;
            }

            //Getting all the Scored points from the text boxes
            //and parsing them to double, then adding them
            //together and putting total in Total Points Textbox
            points1 = double.Parse(scoredTb1.Text);
            points2 = double.Parse(scoredTb2.Text);
            points3 = double.Parse(scoredTb3.Text);
            points4 = double.Parse(scoredTb4.Text);
            totalPoints = points1 + points2 + points3 + points4;
            totalPointsLb.Text = totalPoints.ToString();

            //Getting all the Allowed points from the text boxes
            //and parsing them to double, then adding them
            //together and putting total in Total Allowed Points Textbox
            allowed1 = double.Parse(allowedTb1.Text);
            allowed2 = double.Parse(allowedTb2.Text);
            allowed3 = double.Parse(allowedTb3.Text);
            allowed4 = double.Parse(allowedTb4.Text);
            totalAllowed = allowed1 + allowed2 + allowed3 + allowed4;
            totalAllowedLb.Text = totalAllowed.ToString();

            //Getting all the Spectator totals from the text boxes
            //and parsing them to double, then adding them
            //together and putting total in Total Allowed Points Textbox
            spec1 = double.Parse(spectatorsTb1.Text);
            spec2 = double.Parse(spectatorsTb2.Text);
            spec3 = double.Parse(spectatorsTb3.Text);
            spec4 = double.Parse(spectatorsTb4.Text);
            spectators = spec1 + spec2 + spec3 + spec4;
            totalSpectatorsLb.Text = spectators.ToString();

            //Devide the total Spectators by 4 to get the average
            avgSpectators = spectators / 4;
            totalAvgSpectatorsLb.Text = avgSpectators.ToString();

            //Minus to totalPoints from the totalAllowed 
            //to get the point Diff and adding to textbox
            pointDiff = totalPoints - totalAllowed;
            pointDiffLb.Text = pointDiff.ToString();

            //Fill Total labels with Total of Win and Loss
            totalWinLb.Text = win.ToString();
            totalLossLb.Text = loss.ToString();

            //Take the total Win and devide by 4 to get the winning
            //percent and add to table after converting to string.
            winningPercent =  4 / totalPoints;
            winningPercentLb.Text = winningPercent.ToString();

       
        }
    }
}