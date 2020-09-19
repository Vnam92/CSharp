<%@ Page Language="C#" Inherits="WebSimpleApp.Logging" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>Logging page</title>
    <link rel="stylesheet" href="../css/styles.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
</head>
<body>
        
    <form id="loggingForm" class="logging-form" runat="server">
        <section>
            <asp:Button CssClass="button button-xl" id="clear" Text="Clear All" runat="server" OnClick="OnClear" />
            <asp:Button CssClass="button button-xl" id="download" Text="Download JSON" runat="server" OnClick="OnDownloadJSON" />
        </section>       
    </form>

    <a style="margin-top: 0" class="link" href="/Default.aspx">Go to Default page</a>    
        
    <table class="table table-striped">
        <thead>
            <tr>
                <th scope="col" style="padding-left: 50px">#</th>
                <th scope="col">Color</th>
                <th scope="col">Click time</th>
                <th scope="col">Click date</th>
            </tr>    
        </thead>
        <tbody>
            <% 
                int count = 1;
                foreach (var item in Counter.actions) { %>  
                    <tr>
                        <td scope="row" style="padding-left: 50px"><%= count %></td>
                        <td><%= item.ColorSelected %></td>
                        <td><%= item.Date.ToString("hh:mm:ss") %></td>
                        <td><%= item.Date.ToString("MM.dd.yyyy") %></td>
                    </tr>
            <% count += 1; } %>
        </tbody>    
    </table>
</body>
</html>