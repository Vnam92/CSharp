using System.Collections.Generic;

namespace WebSimpleApp
{
    /*
     * The singleton pattern realization for storage an user's actions
     * such as the selected color, date of click, time of click.
     */ 
    public class ActionsCounter
    {
        private static ActionsCounter instance;

        public static ActionsCounter GetInstance()
        {
            if (instance == null)
            {
                instance = new ActionsCounter();
            }
            return instance;
        }

        public List<Action> actions = new List<Action>();
    }
}
