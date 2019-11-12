using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HairDyeApp
{
    public partial class DisplayPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string stringQuery = "";

            string[] colors= new string[6];
            string[] brand = new string[6];
            string[] price = new string[5];
            string[] size = new string[3];

            int colorCount = 0;
            int priceCount = 0;
            int brandCount = 0;
            int sizeCount = 0;

            // ########Color##########
            if (chkRed.Checked)
            {
                colorCount++;
                colors[colorCount] = "red";
            }

            if (chkOrange.Checked)
            {
                colorCount++;
                colors[colorCount] = "orange";
            }

            if (chkYellow.Checked)
            {
                colorCount++;
                colors[colorCount] = "yellow";
            }

            if (chkGreen.Checked)
            {
                colorCount++;
                colors[colorCount] = "green";
            }

            if (chkBlue.Checked)
            {
                colorCount++;
                colors[colorCount] = "blue";
            }

            if (chkPink.Checked)
            {
                colorCount++;
                colors[colorCount] = "pink";
            }

            if (chkOther.Checked)
            {
                colorCount++;
                colors[colorCount] = "other";
            }

            // ########Price##########
            if (chk7.Checked)
            {
                priceCount++;
                price[priceCount] = "7.99";
            }

            if (chk11.Checked)
            {
                priceCount++;
                price[priceCount] = "11.99";
            }

            if (chk13.Checked)
            {
                priceCount++;
                price[priceCount] = "13.99";
            }

            if (chk16.Checked)
            {
                priceCount++;
                price[priceCount] = "16.00";
            }

            if (chk17.Checked)
            {
                priceCount++;
                price[priceCount] = "17.99";
            }

            if (chk18.Checked)
            {
                priceCount++;
                price[priceCount] = "18.99";
            }

            // ########Brand##########
            if (chkArctic.Checked)
            {
                brandCount++;
                brand[brandCount] = "Arctic Fox";
            }

            if (chkManic.Checked)
            {
                brandCount++;
                brand[brandCount] = "Manic Panic";
            }

            if (chkPunky.Checked)
            {
                brandCount++;
                brand[brandCount] = "Punky";
            }

            if (chkLunar.Checked)
            {
                brandCount++;
                brand[brandCount] = "Lunar Tides";
            }

            if (chkRaw.Checked)
            {
                brandCount++;
                brand[brandCount] = "Raw";
            }

            if (chkSpecial.Checked)
            {
                brandCount++;
                brand[brandCount] = "Special Effects";
            }

            if (chkGDY.Checked)
            {
                brandCount++;
                brand[brandCount] = "Good Dye Young";
            }

            // ########Size##########
            if (chk3oz.Checked)
            {
                sizeCount++;
                size[sizeCount] = "3.50";
            }

            if (chk4oz.Checked)
            {
                sizeCount++;
                size[sizeCount] = "4.00";
            }

            if (chk5oz.Checked)
            {
                sizeCount++;
                size[sizeCount] = "5.00";
            }

            if (chk6oz.Checked)
            {
                sizeCount++;
                size[sizeCount] = "6.76";
            }

            // ########ForEach's########

            int colorsCount = 0;
            foreach(string i in colors)
            {
                stringQuery += $" color = '{colors[colorsCount]}' AND ";
                colorsCount++;
            }

            int pricesCount = 0;
            foreach (string i in colors)
            {
                stringQuery += $" price = '{price[pricesCount]}' AND ";
                pricesCount++;
            }

            int brandsCount = 0;
            foreach (string i in colors)
            {
                stringQuery += $" brand = '{brand[brandsCount]}' AND ";
                brandsCount++;
            }

            int sizesCount = 0;
            foreach (string i in colors)
            {
                stringQuery += $" size = '{size[sizesCount]}' AND ";
                sizesCount++;
            }
        }
    }
}