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
        bool glow = false;
        //string message = "Selected Item(s):" + "<br />" + "<br />";
        //IList<string> dyeList = new List<string>();
        string stringQuery = "SELECT fields" +
                             "FROM COLORS" +
                             "WHERE glow = ";

        protected void Page_Load(object sender, EventArgs e)
        {
            // glow logic
            if (rdoNGlow.Checked)
            {
                stringQuery += "NULL ";
            }
            else if (rdoGlow.Checked)
            {
                stringQuery += "NOT NULL ";
            }

            // color logic
            int colorCount = chkLstColor.Items.Cast<ListItem>().Count(li => li.Selected);
            if (colorCount > 1)
            {
                stringQuery += "AND color = ";
                stringQuery += $"'{chkLstColor.Items[0].Text}'";

                for (int i = 1; i < colorCount; i++)
                {
                    stringQuery += "OR color =";
                    stringQuery += $"'{chkLstColor.Items[i].Text}'";
                }
            }
            else
            {
                for (int i = 0; i < colorCount; i++)
                {
                    stringQuery += "AND color =";
                    stringQuery += $"'{chkLstColor.Items[0].Text}'";
                }
            }

            // brand logic

            int brandCount = chkLstBrand.Items.Cast<ListItem>().Count(li => li.Selected);
            if (brandCount > 1)
            {
                stringQuery += "AND brand = ";
                stringQuery += $"'{chkLstBrand.Items[0].Text}'";

                for (int i = 1; i < brandCount; i++)
                {
                    stringQuery += "OR brand =";
                    stringQuery += $"'{chkLstBrand.Items[i].Text}'";
                }
            }
            else
            {
                for (int i = 0; i < brandCount; i++)
                {
                    stringQuery += "AND brand =";
                    stringQuery += $"'{chkLstBrand.Items[0].Text}'";
                }
            }

            // price logic

            int priceCount = chkLstPrice.Items.Cast<ListItem>().Count(li => li.Selected);
            if (priceCount > 1)
            {
                stringQuery += "AND price = ";
                stringQuery += $"{chkLstPrice.Items[0].Text}";

                for (int i = 1; i < priceCount; i++)
                {
                    stringQuery += "OR price =";
                    stringQuery += $"{chkLstPrice.Items[i].Text}";
                }
            }
            else
            {
                for (int i = 0; i < priceCount; i++)
                {
                    stringQuery += "AND price =";
                    stringQuery += $"{chkLstPrice.Items[0].Text}";
                }
            }

            // size logic

            int sizeCount = chkLstSize.Items.Cast<ListItem>().Count(li => li.Selected);
            if (sizeCount > 1)
            {
                stringQuery += "AND size = ";
                stringQuery += $"{chkLstSize.Items[0].Text}";

                for (int i = 1; i < sizeCount; i++)
                {
                    stringQuery += "OR size =";
                    stringQuery += $"{chkLstSize.Items[i].Text}";
                }
            }
            else
            {
                for (int i = 0; i < sizeCount; i++)
                {
                    stringQuery += "AND size =";
                    stringQuery += $"{chkLstSize.Items[0].Text}";
                }
            }
            lblDisplay.Text = stringQuery;


        }

    }
}