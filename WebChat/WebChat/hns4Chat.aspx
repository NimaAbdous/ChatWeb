<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Chat.aspx.cs" Inherits="WebChat.Chat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Chat.css" rel="stylesheet" />


        <div>
        </div>
        <div class="chat-container">
            <h2 style="text-align: center; color: black">چت آنلاین</h2>
            <div class="messages" id="messages"></div>
        <div class="input-container">
            <input type="text" id="username" placeholder="UserName" required style="cursor: pointer; font-family: MyFont">
            <button onclick="setUsername()" style="cursor: pointer; font-family: MyFont">Ok</button>
        </div>
            <br />
            <div class="input-container" id="messageContainer" style="display: none; cursor: pointer">
                <input type="text" id="message" placeholder="Message" required style="cursor: pointer; font-family: MyFont">
                <button onclick="sendMessage()" style="cursor: pointer; font-family: MyFont">Send</button>
            </div>
        </div>

        <script>
            let users = {};
            let currentUser = null;

            function setUsername() {
                const username = document.getElementById('username').value;

                if (username) {
                    currentUser = username;
                    document.getElementById('username').disabled = true; // غیرقابل ویرایش کردن فیلد یوزرنیم
                    document.getElementById('messageContainer').style.display = 'flex'; // نمایش بخش پیام
                    document.querySelector('.input-container button').style.display = 'none'; // ناپدید کردن دکمه تأیید یوزرنیم
                }
            }

            function sendMessage() {
                const message = document.getElementById('message').value;

                if (currentUser && message) {
                    if (!users[currentUser]) {
                        users[currentUser] = { messages: [] };
                    }
                    users[currentUser].messages.push(message);
                    displayMessage(currentUser, message);
                    document.getElementById('message').value = '';
                }
            }

            function displayMessage(username, message) {
                const messagesDiv = document.getElementById('messages');
                const messageDiv = document.createElement('div');
                messageDiv.classList.add('message');
                messageDiv.innerHTML = `<span class="username">${username}:</span> ${message}`;
                messagesDiv.appendChild(messageDiv);
                messagesDiv.scrollTop = messagesDiv.scrollHeight;
            }
        </script>
</asp:Content>
