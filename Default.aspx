<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h3>
              XML TryIt </h3>
            <h4>
                Takes URL of XML file and returns the XML elements and attributes.</h4>
    <p>URL Input:<asp:TextBox ID="TextBox1" runat="server" Width="315px">http://www.public.asu.edu/~ctavenne/Books.xml</asp:TextBox>
&nbsp;<asp:Button ID="ButtonUpload" runat="server" Text="Upload" OnClick="ButtonUpload_Click" />
        
    </p>
    <p>Upload Status:
        <asp:Label ID="lblUpload" runat="server"></asp:Label>
    </p>

    <p>
        <asp:TextBox ID="TextBox2" runat="server" Height="121px" Rows="20" TextMode="MultiLine" Width="721px"></asp:TextBox>
    </p>
    <p>Book information gathered from https://www.barnesandnoble.com/b/books/_/N-1fZ29Z8q8
    </p>
</asp:Content>
