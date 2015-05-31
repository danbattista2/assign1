
<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Assignment1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <!--Creating by Daniel Di Giambattista (100038157)
        Date: 27/05/2015
        Purpose: Assignment #1, Create a game calculator -->

    <!-- There are 4 games seperated by comments. Each game has text boxes 
        for input and a radio button. There is a submit button at the bottom
        of the page. Radio buttons are set to "true" so there will always
        be a win or loss selected. Each text box has validators, I use the Required Field
        Validator, Range Validator and Compare Valdator. Each game is set up the same
        but use different names.-->

    <!------------------------- GAME 1---------------------------------------------------------->
    <div class="row">
    <div class="col-md-6">
    <div class="panel panel-default panel-primary">
        <div class="panel-heading">
        <h2 class="panel-title">Game 1</h2>
        </div>
        <div class="panel-body">
        <label for="game1Rb" class="control-label">Result</label>
        <!--Radio Button List -->
        <asp:RadioButtonList ID="game1Rb"  runat="server">
            <asp:ListItem Value="1" Selected="True" Text="Win"></asp:ListItem>
            <asp:ListItem Value="2" Text="Loss"></asp:ListItem>
        </asp:RadioButtonList>
        Scored: <asp:TextBox ID="scoredTb1" runat="server"></asp:TextBox>
        <!-- Required Field Validator & Range Validator -->
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
            runat="server" ErrorMessage="Please enter Score"
            CssClass="alert alert-danger"  ControlToValidate="scoredTb1"
            Display="Dynamic">
        </asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" 
            ErrorMessage="Enter a numeric value greater than zero"
            MinimumValue="0" MaximumValue="99999999"
            CssClass="alert alert-danger"
            ControlToValidate="scoredTb1" 
            Type="Double" Display="Dynamic"></asp:RangeValidator><br /> <br />
            
       

        Allowed: <asp:TextBox ID="allowedTb1" runat="server"></asp:TextBox>
        <!-- Required Field Validator & Range Validator -->
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
            runat="server" ErrorMessage="Please enter Allowed"
            CssClass="alert alert-danger" ControlToValidate="allowedTb1"
            Display="Dynamic">
        </asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator2" runat="server" 
            ErrorMessage="Enter a numeric value greater than zero"
            MinimumValue="0" MaximumValue="99999999"
            CssClass="alert alert-danger"
            ControlToValidate="allowedTb1"
            Type="Double" Display="Dynamic"></asp:RangeValidator>
        <!-- Compare Validator -->
         <asp:CompareValidator ID="CompaireValidator1" runat="server"
             ControlToValidate="scoredTb1"
             ControlToCompare="allowedTb1"
             Operator="NotEqual"
             Type="Double"
             CssClass="alert alert-danger"
             Display="Dynamic"
             ErrorMessage="Points Scored & Allowed cannot be the same." >       
        </asp:CompareValidator><br /> <br />

        Spectators: <asp:TextBox ID="spectatorsTb1" runat="server"></asp:TextBox>
        <!-- Required Field Validator & Range Validator -->
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
            runat="server" ErrorMessage="Please enter Spectators"
            CssClass="alert alert-danger"  ControlToValidate="spectatorsTb1"
            Display="Dynamic">
        </asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator3" runat="server" 
            ErrorMessage="Enter a numeric value greater than zero"
            MinimumValue="0" MaximumValue="99999999"
            CssClass="alert alert-danger"
            ControlToValidate="spectatorsTb1"
            Type="Double" Display="Dynamic"></asp:RangeValidator><br /> <br />
        </div>
        </div>
    </div>

    <!-------------------------GAME 2--------------------------------------------------------->
    <div class="col-md-6">
    <div class="panel panel-default panel-primary">
        <div class="panel-heading">
        <h2 class="panel-title">Game 2</h2>
        </div>
        <div class="panel-body">
        <!--Radio Button List -->
        <label for="game2Rb" class="control-label">Result</label>
        <asp:RadioButtonList ID="game2Rb"  runat="server">
            <asp:ListItem Value="1" Selected="True" Text="Win"></asp:ListItem>
            <asp:ListItem Value="2" Text="Loss"></asp:ListItem>
        </asp:RadioButtonList>

        Scored: <asp:TextBox ID="scoredTb2" runat="server"></asp:TextBox>
        <!-- Required Field Validator & Range Validator -->
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" 
            runat="server" ErrorMessage="Please enter Score"
            CssClass="alert alert-danger"  ControlToValidate="scoredTb2"
            Display="Dynamic">
        </asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator4" runat="server" 
            ErrorMessage="Enter a numeric value greater than zero"
            MinimumValue="0" MaximumValue="99999999"
            CssClass="alert alert-danger"
            ControlToValidate="scoredTb2"
            Type="Double" Display="Dynamic"></asp:RangeValidator><br /> <br />

        Allowed: <asp:TextBox ID="allowedTb2" runat="server"></asp:TextBox>
        <!-- Required Field Validator & Range Validator -->
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" 
            runat="server" ErrorMessage="Please enter Allowed"
            CssClass="alert alert-danger" ControlToValidate="allowedTb2"
            Display="Dynamic">
        </asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator7" runat="server" 
            ErrorMessage="Enter a numeric value greater than zero"
            MinimumValue="0" MaximumValue="99999999"
            CssClass="alert alert-danger"
            ControlToValidate="allowedTb2"
            Type="Double" Display="Dynamic"></asp:RangeValidator>
        <!-- Compare Validator -->
         <asp:CompareValidator ID="CompareValidator2" runat="server"
             ControlToValidate="scoredTb2"
             ControlToCompare="allowedTb2"
             Operator="NotEqual"
             Type="Double"
             CssClass="alert alert-danger"
             Display="Dynamic"
             ErrorMessage="Points Scored & Allowed cannot be the same." >       
        </asp:CompareValidator><br /> <br />

        Spectators: <asp:TextBox ID="spectatorsTb2" runat="server"></asp:TextBox>
        <!-- Required Field Validator & Range Validator -->
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" 
            runat="server" ErrorMessage="Please enter Spectators"
            CssClass="alert alert-danger"  ControlToValidate="spectatorsTb2"
            Display="Dynamic">
        </asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator10" runat="server" 
            ErrorMessage="Enter a numeric value greater than zero"
            MinimumValue="0" MaximumValue="99999999"
            CssClass="alert alert-danger"
            ControlToValidate="spectatorsTb2"
            Type="Double" Display="Dynamic"></asp:RangeValidator><br /> <br />
        </div>
    </div>
        </div>
        </div>

    <!-------------------------GAME 3------------------------------------------------------------>
        <div class="row">
        <div class="col-md-6">
        <div class="panel panel-default panel-primary">
        <div class="panel-heading">
        <h2 class="panel-title">Game 3</h2>
        </div>
        <div class="panel-body">
        <!--Radio Button List -->
        <label for="game3Rb" class="control-label">Result</label>
        <asp:RadioButtonList ID="game3Rb"  runat="server">
            <asp:ListItem Value="1" Selected="True" Text="Win"></asp:ListItem>
            <asp:ListItem Value="2" Text="Loss"></asp:ListItem>
        </asp:RadioButtonList>

        Scored: <asp:TextBox ID="scoredTb3" runat="server"></asp:TextBox>
        <!-- Required Field Validator & Range Validator -->
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" 
            runat="server" ErrorMessage="Please enter Score"
            CssClass="alert alert-danger"  ControlToValidate="scoredTb3"
            Display="Dynamic">
        </asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator5" runat="server" 
            ErrorMessage="Enter a numeric value greater than zero"
            MinimumValue="0" MaximumValue="99999999"
            CssClass="alert alert-danger"
            ControlToValidate="scoredTb3"
            Type="Double" Display="Dynamic"></asp:RangeValidator><br /> <br />

        Allowed: <asp:TextBox ID="allowedTb3" runat="server"></asp:TextBox>
        <!-- Required Field Validator & Range Validator -->
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" 
            runat="server" ErrorMessage="Please enter Allowed"
            CssClass="alert alert-danger" ControlToValidate="allowedTb3"
            Display="Dynamic">
        </asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator8" runat="server" 
            ErrorMessage="Enter a numeric value greater than zero"
            MinimumValue="0" MaximumValue="99999999"
            CssClass="alert alert-danger"
            ControlToValidate="allowedTb3"
            Type="Double" Display="Dynamic"></asp:RangeValidator>
        <!-- Compare Validator -->
         <asp:CompareValidator ID="CompareValidator3" runat="server"
             ControlToValidate="scoredTb3"
             ControlToCompare="allowedTb3"
             Operator="NotEqual"
             Type="Double"
             CssClass="alert alert-danger"
             Display="Dynamic"
             ErrorMessage="Points Scored & Allowed cannot be the same." >       
        </asp:CompareValidator><br /> <br />

        Spectators: <asp:TextBox ID="spectatorsTb3" runat="server"></asp:TextBox>
        <!-- Required Field Validator & Range Validator -->
        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" 
            runat="server" ErrorMessage="Please enter Spectators"
            CssClass="alert alert-danger"  ControlToValidate="spectatorsTb3"
            Display="Dynamic">
        </asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator11" runat="server" 
            ErrorMessage="Enter a numeric value greater than zero"
            MinimumValue="0" MaximumValue="99999999"
            CssClass="alert alert-danger"
            ControlToValidate="spectatorsTb3"
            Type="Double" Display="Dynamic"></asp:RangeValidator><br /> <br />
        </div>
    </div>
    </div>

    <!-------------------------GAME 4------------------------------------------------------------->
        <div class ="col-md-6">
        <div class="panel panel-default panel-primary">
        <div class="panel-heading">
        <h2 class="panel-title">Game 4</h2>
        </div>
        <div class="panel-body">
        <!--Radio Button List -->
        <label for="game4Rb" class="control-label">Result</label>
        <asp:RadioButtonList ID="game4Rb"  runat="server">
            <asp:ListItem Value="1" Selected="True" Text="Win"></asp:ListItem>
            <asp:ListItem Value="2" Text="Loss"></asp:ListItem>
        </asp:RadioButtonList>

        Scored: <asp:TextBox ID="scoredTb4" runat="server"></asp:TextBox> 
        <!-- Required Field Validator & Range Validator -->
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" 
            runat="server" ErrorMessage="Please enter Score"
            CssClass="alert alert-danger"  ControlToValidate="scoredTb4"
            Display="Dynamic">
        </asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator6" runat="server" 
            ErrorMessage="Enter a numeric value greater than zero"
            MinimumValue="0" MaximumValue="99999999"
            CssClass="alert alert-danger"
            ControlToValidate="scoredTb4"
            Type="Double" Display="Dynamic"></asp:RangeValidator><br /> <br />

        Allowed: <asp:TextBox ID="allowedTb4" runat="server"></asp:TextBox>
        <!-- Required Field Validator & Range Validator -->
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" 
            runat="server" ErrorMessage="Please enter Allowed"
            CssClass="alert alert-danger" ControlToValidate="allowedTb4"
            Display="Dynamic">
        </asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator9" runat="server" 
            ErrorMessage="Enter a numeric value greater than zero"
            MinimumValue="0" MaximumValue="99999999"
            CssClass="alert alert-danger"
            ControlToValidate="allowedTb4"
            Type="Double" Display="Dynamic"></asp:RangeValidator>
        <!-- Compare Validator -->
         <asp:CompareValidator ID="CompareValidator4" runat="server"
             ControlToValidate="scoredTb4"
             ControlToCompare="allowedTb4"
             Operator="NotEqual"
             Type="Double"
             CssClass="alert alert-danger"
             Display="Dynamic"
             ErrorMessage="Points Scored & Allowed cannot be the same." >       
        </asp:CompareValidator><br /> <br />

        Spectators: <asp:TextBox ID="spectatorsTb4" runat="server"></asp:TextBox>
        <!-- Required Field Validator & Range Validator -->
        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" 
            runat="server" ErrorMessage="Please enter Spectators"
            CssClass="alert alert-danger"  ControlToValidate="spectatorsTb4"
            Display="Dynamic">
        </asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator12" runat="server" 
            ErrorMessage="Enter a numeric value greater than zero"
            MinimumValue="0" MaximumValue="99999999"
            CssClass="alert alert-danger"
            ControlToValidate="spectatorsTb4"
            Type="Double" Display="Dynamic"></asp:RangeValidator><br /> <br />
        </div>
    </div> 
    </div>
    </div>
    <div>
    <!--<div class="alert alert-success">-->
    <!-- Calculate Totals Button -->
    <asp:Button class="btn btn-primary btn-lg btn-block btn btn-success" ID="summaryBtn" runat="server" Text="Summary" OnClick="summaryBtn_Click"/>
    </div> <br /> <br />
    <!-------------------------Results----------------------------------------------------------------->
    <!-- Labels for all of the results to display -->
    
    <div class="panel panel-default panel-primary">
        <div class="panel-heading">
        <h1 class="panel-title">Results</h1>
        </div>
        <div class="panel-body">
        <div class="col-md-4">          
        <strong>Wins:</strong>  <em><asp:Label ID="totalWinLb" runat="server"></asp:Label></em> <br /> <br /> <br />
        </div>
        <div class="col-md-4"> 
        <strong>Losses:</strong>  <em><asp:Label ID="totalLossLb" runat="server"></asp:Label></em> <br /> <br /> <br />
        </div>
        <div class="col-md-4"> 
        <strong>Winning %:</strong>  <em><asp:Label ID="winningPercentLb" runat="server"></asp:Label></em> <br /> <br /> <br />
        </div>
        <div class="col-md-4"> 
        <strong>Total Points:</strong>  <em><asp:Label ID="totalPointsLb" runat="server"></asp:Label></em> <br /> <br /> <br />
        </div>
        <div class="col-md-4"> 
        <strong>Total Allowed:</strong>  <em><asp:Label ID="totalAllowedLb" runat="server"></asp:Label></em> <br /> <br /> <br />
        </div>
        <div class="col-md-4"> 
        <strong>Point Differential:</strong>  <em><asp:Label ID="pointDiffLb" runat="server"></asp:Label></em> <br /> <br /> <br />
        </div>
        <div class="col-md-4"> 
        <strong>Total Spectators:</strong>  <em><asp:Label ID="totalSpectatorsLb" runat="server"></asp:Label></em> <br /> <br/> <br />
        </div>
        <div class="col-md-4"> 
        <strong>Average Spectators:</strong>  <em><asp:Label ID="totalAvgSpectatorsLb" runat="server"></asp:Label></em> <br /> <br /> <br />
        </div>
        </div>
    </div>


</asp:Content>
