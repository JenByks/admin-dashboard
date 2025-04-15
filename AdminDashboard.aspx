<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="JobPortal.AdminDashboard" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin Dashboard</title>  
    <link rel="stylesheet" type="text/css" href="AdminDashboard.css" />
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="dashboard-container">
            <!-- Sidebar -->
            <div class="sidebar">
                <div class="logo">Flew Job Admin</div>
                <ul class="menu">
                    <li class="active"><a href="AdminDashboard.aspx">Dashboard</a></li>
                    <li><a href="UserManagement.aspx">User Management</a></li>
                  
                </ul>
                <div class="separator">OTHERS</div>
                <ul class="menu">
              
                    <li><a href="Homepage.aspx" class="logout-btn">Log Out</a></li>
                </ul>
            </div>

            <!-- Main Content -->
            <div class="main-content">
                <h2>Dashboard</h2>
                <div class="chart-container">
                    <h3>User Growth</h3>
                    <canvas id="userGrowthChart"></canvas>
                </div>

                <div class="stats-container">
                    <div class="stats-card">
                        <h4>0</h4>
                        <p>Total Posted Jobs</p>
                    </div>
                    <div class="stats-card">
                        <h4>0</h4>
                        <p>Open Jobs</p>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <script>
        var ctx = document.getElementById("userGrowthChart").getContext("2d");
        var userGrowthChart = new Chart(ctx, {
            type: "line",
            data: {
                labels: ["January", "February", "March", "April", "May", "June"],
                datasets: [
                    {
                        label: "Client",
                        data: [8, 10, 9, 10, 11, 13],
                        borderColor: "black",
                        fill: false
                    },
                    {
                        label: "Freelancer",
                        data: [5, 9, 10, 9, 12, 14],
                        borderColor: "orange",
                        fill: false
                    }
                ]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false
            }
        });
    </script>
</body>
</html>
