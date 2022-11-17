<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="updatedelete.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container mt-5">
        <div class="row text-danger text-center">
        <h1>Update And Delete And Search Opration</h1>
        </div>
         <div class="row text-center mt-3">
        <div class="col-3">
            =================<br />
            Delete
            <br />
            =================<br />
        </div>
    </div>
    <div class="row text-center mt-3">
        <div class="col-3">
            <br />
            Roll No :&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtrollno" runat="server" TextMode="Number" CssClass="form-control" Required></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btn_delete" runat="server" Text="Delete" CssClass="btn btn-outline-danger rounded-end form-control w-50" OnClick="btn_delete_Click"/>

        </div>
        <div class="col-5">
            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtrollno" ForeColor="Red">Roll No Is Needed</asp:RequiredFieldValidator>--%>

            <br />
            <br />
            ================<br />
            Update
            <br />
            ================<br />
            <br />
            <br />
            Enroll No :&nbsp;
            <asp:TextBox ID="txterno" runat="server" TextMode="Number" CssClass="form-control"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtrollno" ForeColor="Red">Roll No Is Needed</asp:RequiredFieldValidator>--%>
            <asp:Button ID="btnsearcherno" runat="server" Text="Search by Erno" CssClass="btn btn-outline-success rounded-end form-control w-50" OnClick="btnsearcherno_Click" />
            <br />
            <br />

        </div>
    </div>
        <div class="row text-center mt-3">
        <div class="col-3">
            Course :
            <asp:DropDownList ID="bdcourse" runat="server" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="course_name" DataValueField="course_id" AutoPostBack="True">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:As2-Q1ConnectionString %>" SelectCommand="SELECT * FROM [course]"></asp:SqlDataSource>
            <br />
            <br />
        </div>
             <div class="col-5">

        </div>
    </div>
        
        <div class="row  text-center mt-3">
        <div class="col-3">
            Email Id :
            <asp:TextBox ID="txtemail" runat="server" TextMode="Email" CssClass="form-control"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Email Must Be in Proper Format</asp:RegularExpressionValidator>
            <br />
            <br />
        </div>
    </div>
        <div class="row text-center mt-3">
        <div class="col-3">
            Mobile No :
            <asp:TextBox ID="txtmobno" runat="server" TextMode="Number" CssClass="form-control"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtmobno" ForeColor="Red" ValidationExpression="\d{10}">Only 10 digit</asp:RegularExpressionValidator>
            <br />
            <br />
        </div>
    </div>
        <div class="row text-center mt-3">
        <div class="col-3">
            Date Of Birth :
            <asp:TextBox ID="txtdate" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
        </div>
             <div class="col-5">
            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtdate" ForeColor="Red">Select date</asp:RequiredFieldValidator>--%>

        </div>
    </div>
        <div class="row mt-3">
        <div class="col-3">
            
            <br />
            
        </div>
        <div class="col-4 m-3 d-flex">
            <asp:Button ID="btnupdate" runat="server" Text="Update" CssClass="btn btn-outline-primary rounded-end form-control w-50 " OnClick="btnupdate_Click" />
            &nbsp;<br />
            <br />
            ===============<br />
            Search
            <br />
            ===============</div>
    </div>
    </div>
    <div class="row">
        <div class="col-6">
            <br />
            name :
            <asp:TextBox ID="txtname" runat="server" CssClass="form-control"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnserachname" runat="server" Text="Search by Name" CssClass="btn btn-outline-success rounded-end form-control w-50" OnClick="btnserachname_Click" />
            <br />
            <br />
            <br />
            Roll NO :
            <asp:Label ID="lblrno" runat="server"></asp:Label>
            <br />
        </div>
    </div>
     <div class="row">
        <div class="col-6">
            Name :
            <asp:Label ID="lblname" runat="server"></asp:Label>
            <br />
        </div>
    </div>
     <div class="row">
        <div class="col-6">
            Class Id :
            <asp:Label ID="lblclassid" runat="server"></asp:Label>
            <br />
        </div>
    </div>
     <div class="row">
        <div class="col-6">
            Course ID :
            <asp:Label ID="lblcourseid" runat="server"></asp:Label>
            <br />
        </div>
    </div>
     <div class="row">
        <div class="col-6">
            Email Id :
            <asp:Label ID="lblemail" runat="server"></asp:Label>
            <br />
        </div>
    </div>
     <div class="row">
        <div class="col-6">
            Mobile No :
            <asp:Label ID="lblmob" runat="server"></asp:Label>
            <br />
        </div>
    </div>
     <div class="row">
        <div class="col-6">
            Date Od Birth :
            <asp:Label ID="lbldob" runat="server"></asp:Label>
        </div>
    </div>
</asp:Content>

