using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.HtmlControls;
using System.Data;
/// <summary>
/// Summary description for Question
/// </summary>
public class Rev
{
    public int id;
    public String name;
    public String comment;
    public String rating;


    public void addToPlaceHolder(PlaceHolder placeholder)
    {
        HtmlGenericControl card = new HtmlGenericControl("div");
        card.Attributes["class"] = "card mb-3";
        card.Attributes["style"] = "min-width: 25rem";
        //card.Attributes["style"] = "max-width: 25rem";

        HtmlGenericControl card_header = new HtmlGenericControl("div");
        card_header.Attributes["class"] = "card-header";
        card_header.InnerHtml = name;

        HtmlGenericControl card_body = new HtmlGenericControl("div");
        card_body.Attributes["class"] = "card-body";

        HtmlGenericControl card_title = new HtmlGenericControl("h5");
        card_title.Attributes["class"] = "card-title";
        card_title.InnerHtml = rating;

        HtmlGenericControl card_text = new HtmlGenericControl("p");
        card_text.Attributes["class"] = "card-text";
        card_text.InnerHtml = comment;

        card_body.Controls.Add(card_title);
        card_body.Controls.Add(card_text);
        card.Controls.Add(card_header);
        card.Controls.Add(card_body);

        placeholder.Controls.Add(card);
    }

}