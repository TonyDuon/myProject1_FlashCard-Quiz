<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MyFirstProject - Tonny Duong</title>
    <link rel="stylesheet" type="text/css" href="main.css"/>
</head>
<body>
    
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>



        <!------------------------------------------------MAIN MENU START------------------------------------------------------------->

        <div id="MainMenu" runat="server">
            <div id="myTitleContainer">
                <h1 id="myTitle" >WELCOME TO MY FLASH CARD PROJECT</h1>
                <p id="author">By Tonny Duong</p>
            </div>

            <asp:Button ID="gotoFlashCard" runat="server" class="btnMainMenu" Text="Review" onClick="gotoFlashCard_Click" />  
            <asp:Button ID="gotoQuiz" runat="server" class="btnMainMenu" Text="Quiz Me!" onClick="gotoQuiz_Click"/>       
            <br/><asp:Button ID="importFile" runat="server" class="btnMainMenu" Text="Load Deck" onClick="importFile_Click"/>
                <!----------------------------------------LOAD DECK START-------------------------------------->
                <div id="loadDeckmenu">
                    <asp:RadioButtonList ID="myDeck" runat="server" Visible="false">
                        <asp:ListItem Value="0" Text="Programming Definition and Concepts"></asp:ListItem>
                        <asp:ListItem Value="1" Text="Video Game"></asp:ListItem>
                        <asp:ListItem Value="2" Text="Interview Questions"></asp:ListItem>
                        <asp:ListItem Value="3" Text="Movies"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                <!----------------------------------------LOAD DECK END---------------------------------------->
            <%--<br/><asp:Button ID="exitButton" runat="server" class="btnMainMenu" Text="Exit" /> --%>      

        </div>

        <!------------------------------------------------MAIN MENU END--------------------------------------------------------------->
        <!------------------------------------------------FLASHCARD START------------------------------------------------------------->

        <div id="flashCardMenu" runat="server" visible="false">
            <asp:Label ID="questionLabel" runat="server" Text="Press Generate to Begin" class="questionCard"/> <br />
            <asp:Label ID="answerLabel" runat="server" Text="Wrong button!" /><br />
            <asp:Button ID="showHideButton" runat="server" Text="Show\Hide Answer" onClick="showHideButton_Click"/>  
            <asp:Button ID="generateButton" runat="server" Text="Generate"  OnClick="generateButton_Click"/>         
            <asp:Button ID="homeButton" runat="server" Text="Home" OnClick="homeButton_Click" />     
        </div>

        <!------------------------------------------------FLASHCARD END--------------------------------------------------------------->
        <!------------------------------------------------QUIZ START------------------------------------------------------------------>

        <div id="quizMenu" runat="server" visible="false">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick"></asp:Timer>
                    <asp:Label ID="tmrlblQuiz" runat="server" Text="Timer"></asp:Label>
                </ContentTemplate>
            </asp:UpdatePanel>   

            <asp:Label ID="lblQuestion" runat="server" Text="Press Start to Begin" class="questionCard"/> <br /><br />
            <div id="quizAnswerContainer">
            <asp:RadioButtonList ID="rblAnswers" runat="server" Visible="false">
                <asp:ListItem Value="0" Text="a1"></asp:ListItem>
                <asp:ListItem Value="1" Text="a2"></asp:ListItem>
                <asp:ListItem Value="2" Text="a3"></asp:ListItem>
                <asp:ListItem Value="3" Text="a4"></asp:ListItem>
            </asp:RadioButtonList>
            </div>
            <asp:Button ID="btnSubmitAnswer" runat="server" Text="Start" OnClick="btnSubmitAnswer_Click"/> 

       
            <asp:Button ID="homeButton2" runat="server" Text="Home" OnClick="homeButton_Click" /> 
        </div>

        <!------------------------------------------------QUIZ END-------------------------------------------------------------------->


        <br /><asp:label ID="Testlabel" runat="server" Text="ConsoleLog:"/>

    </form>
</body>
</html>
