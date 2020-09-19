using System;
namespace WebSimpleApp
{
    public class Action
    {
        public DateTime Date { get; set; }
        public string ColorSelected { get; set; }

        public Action(DateTime dateTime, string color) {
            Date = dateTime;
            ColorSelected = color;
        }
    }
}
