using System;
using System.Web.UI.WebControls;

namespace WebSimpleApp
{
    public partial class Default : System.Web.UI.Page
    {
        protected string BgColor { get; set; }
        private readonly ActionsCounter Counter = ActionsCounter.GetInstance();

        /*
         * Event handler that changes background color of Default page
         */
        protected void OnClickHandler(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            Action action = new Action(DateTime.Now, btn.CommandArgument);
            Counter.actions.Add(action);

            switch (btn.CommandArgument)
            {
                case "red":
                    BgColor = "red";
                    break;
                case "green":
                    BgColor = "green";
                    break;
                case "yellow":
                    BgColor = "yellow";
                    break;
                case "blue":
                    BgColor = "blue";
                    break;
            }

        }
    }
}
