using System;
using Newtonsoft.Json;

namespace WebSimpleApp
{
    public partial class Logging : System.Web.UI.Page
    {
        protected readonly ActionsCounter Counter = ActionsCounter.GetInstance();

        /*
         * Event handler that purges all saved data
         */
        protected void OnClear(object sender, EventArgs e)
        {
            Counter.actions.Clear();
        }

        /*
         * Event handler that performs a loading of saved data with JSON format
         */
        protected void OnDownloadJSON(object sender, EventArgs e)
        {
            if (Counter.actions.Count != 0)
            {
                var json = JsonConvert.SerializeObject(Counter.actions);
                var label = "logs_" + DateTime.Now.ToShortDateString();

                Response.AddHeader(
                    "Content-disposition",
                    String.Format("attachment; filename={0}.json", label
                ));
                Response.ContentType = "application/json";
                Response.Write(json);
                Response.End();
            }
        }
    }
}
