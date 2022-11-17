<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="student.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container mt-5">
        <div class="row text-danger text-center">
        <h1>Register Student </h1>
        </div>
    <div class="row text-center">
        <div class="col-3">
            Roll No :
            <asp:TextBox ID="txtrollno" runat="server" TextMode="Number" CssClass="form-control"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtrollno" ForeColor="Red">Roll No Is Needed</asp:RequiredFieldValidator>
            <br />
        </div>
    </div>
        <div class="row text-center mt-3">
        <div class="col-3">
            <br />
            Name:
            <asp:TextBox ID="txtname" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtname" ForeColor="Red">Name Is Needed</asp:RequiredFieldValidator>
            <br />
        </div>
            </div>
        <div class="row text-center mt-3">
        <div class="col-3">
            <br />
            Course :
            <asp:DropDownList ID="bdcourse" runat="server" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="course_name" DataValueField="course_id" AutoPostBack="True">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:As2-Q1ConnectionString %>" SelectCommand="SELECT * FROM [course]"></asp:SqlDataSource>
            <br />
        </div>
             <div class="col-5">

        </div>
    </div>
        <div class="row  text-center mt-3">
        <div class="col-3">
            <br />
            Class :
            <asp:DropDownList ID="dbclass" runat="server" CssClass="form-control" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="class_name" DataValueField="class_id">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:As2-Q1ConnectionString %>" SelectCommand="SELECT * FROM [class] WHERE ([course_id] = @course_id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="bdcourse" Name="course_id" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
        </div>
             <div class="col-5">

        </div>
    </div>
        <div class="row  text-center mt-3">
        <div class="col-3">
            <br />
            Email Id :
            <asp:TextBox ID="txtemail" runat="server" TextMode="Email" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtemail" ForeColor="Red">Emial Id Is Needed</asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Email Must Be in Proper Format</asp:RegularExpressionValidator>
            <br />
        </div>
    </div>
        <div class="row text-center mt-3">
        <div class="col-3">
            <br />
            Mobile No :
            <asp:TextBox ID="txtmobno" runat="server" TextMode="Number" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtmobno" ForeColor="Red">Mobile No. Is Needed</asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtmobno" ForeColor="Red" ValidationExpression="\d{10}">Only 10 digit</asp:RegularExpressionValidator>
            <br />
        </div>
    </div>
        <div class="row text-center mt-3">
        <div class="col-3">
            <br />
            Date Of Birth :
            <asp:TextBox ID="txtdate" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtdate" ForeColor="Red">Select date</asp:RequiredFieldValidator>
            <br />
        </div>
    </div>
        <div class="row mt-3">
        <div class="col-3">
            
        </div>
        <div class="col-4 mt-3">
            <br />
            <asp:Button ID="btnsubmit" runat="server" Text="Submit" CssClass="btn btn-outline-primary rounded-end form-control w-50" OnClick="btnsubmit_Click"/>
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="erno" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="erno" HeaderText="erno" InsertVisible="False" ReadOnly="True" SortExpression="erno" />
                    <asp:BoundField DataField="rollno" HeaderText="rollno" SortExpression="rollno" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="class_id" HeaderText="class_id" SortExpression="class_id" />
                    <asp:BoundField DataField="course_id" HeaderText="course_id" SortExpression="course_id" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile" />
                    <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:As2-Q1ConnectionString %>" SelectCommand="SELECT * FROM [student]"></asp:SqlDataSource>
        </div>
    </div>
    </div>
    
</asp:Content>

