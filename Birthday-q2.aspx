<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Birthday.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container mt-5">
        <div class="row text-danger text-center">
        <h1>List For a Specific Birth Day Year</h1>
        </div>
         <div class="row text-center mt-3">
        <div class="col-3">
            Enter Birth Day Year :
        </div>
        <div class="col-4">
            <asp:TextBox ID="txtbdy" runat="server" TextMode="Number" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtbdy" ForeColor="Red"> Birth Day Year Is Needed</asp:RequiredFieldValidator>
            <asp:Button ID="btnsearcherno" runat="server" Text="Search by Birth Year" CssClass="btn btn-outline-success rounded-end form-control w-50" OnClick="btnsearcherno_Click" />
            <br />
        </div>
    </div>
    
        
    </div>
    <div class="row">
        <div class="col-3">

        </div>
        <div class="col-4 mt-5">

    <asp:GridView ID="GridView1" runat="server" Width="349px" CellPadding="4" HorizontalAlign="Center" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BorderColor="Blue" BorderStyle="Groove" BorderWidth="2px" HorizontalAlign="Center" VerticalAlign="Middle" Width="40px" BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle ForeColor="#333333" Height="30px" HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#F7F6F3" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
        </div>
    </div>
</asp:Content>

