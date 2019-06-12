<%@ Page Title="" Language="C#" MasterPageFile="~/Portfolio.Master" AutoEventWireup="true" CodeBehind="skills.aspx.cs" Inherits="PortFolio.skills" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="col-md-12">
        <h2>SKILLS</h2>
        <hr />
        <p class="lead">
            I'm a full-stack web developer with over twelve years of experience.
            I've maintained and developed multiple projects in different industries, carrying the development of its' back-end and front-end codebases.
        </p>
        <hr />
        <h3 class="text-primary">&#60;&#47;&#62; FRONT-END DEVELOPMENT</h3>
        <p class="lead">
            UI design for different applications (desktop and web with responsive behavior). Use of best practices for modern UI style. 
        </p>
        <%--    <ul>
            <li><strong>UI reStyle from static to </strong>Responsive Web Design with Bootstrap.</li>
            <li><strong>Six months project for credit card company:</strong> Maintenance and addition of new features to MVC.NET web application for customer debt control. </li>
            <li><strong>Different projects for very important insurance company:</strong>  </li>
            </ul>--%>
        <hr />
        <h3 class="text-primary">&#60;&#47;&#62; BACK-END DEVELOPMENT</h3>
        <p class="lead">
            Back-end development for different business rules and technologies, using mainly .NET (C#, ASP.NET, .NET CORE) and MS SQL Server DataBases.
        </p>
        <%--  <ul>
            <li><strong>Two year project for public bank: </strong>Web financial reporting system developed.</li>
            <li><strong>Six months project for credit card company:</strong> Maintenance and addition of new features to MVC.NET web application for customer debt control. </li>
            <li><strong>Different projects for very important insurance company:</strong>  </li>
            
            </ul>--%>
        <hr />
        <br />
        <div class="container">
            <div class="row">
                <div class="card-deck">
                    <div class="col-md-6 col-lg-4 col-xl-3" style="max-width: 19rem;">
                        <div class="card-header">
                            <img src="Content/img/net-icon.png" width="40" height="40" class="d-inline-block align-top" alt="">
                        </div>
                        <div class="card-body">
                            <h5 class="card-title">Microsoft Technologies</h5>
                            <p class="card-text">Used different .NET framework versions.</p>
                            <ul>
                                <li>Experienced with C#</li>
                                <li>ASP.NET Webforms</li>
                                <li>ASP.NET MVC </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3" style="max-width: 19rem;">
                        <div class="card-header">
                            <img src="Content/img/db-icon.png" width="40" height="40" class="d-inline-block align-top" alt="">
                        </div>
                        <div class="card-body">
                            <h5 class="card-title">Databases</h5>
                            <p class="card-text">DB design and programming on different DBMS: </p>
                            <ul>
                                <li>Exp. with MS SQL SERVER</li>
                                <li>MySql</li>
                                <li>Oracle</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3" style="max-width: 19rem;">
                        <div class="card-header">
                            <img src="Content/img/agile-icon.jpg" width="40" height="40" class="d-inline-block align-top" alt="">
                            <%-- .NET--%>
                        </div>
                        <div class="card-body">
                            <h5 class="card-title">SDLC</h5>
                            <p class="card-text">Experience with different SD methodologies:</p>
                            <ul>
                                <li>Waterfall</li>
                                <li>AGILE/SCRUM</li>
                                <li>DevOps</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3" style="max-width: 19rem;">
                        <div class="card-header">
                            <img src="Content/img/webdevlogo.jpg" width="40" height="40" class="d-inline-block align-top" alt="">
                            <%-- .NET--%>
                        </div>
                        <div class="card-body">
                            <h5 class="card-title">Web Development</h5>
                            <p class="card-text">Knowledge of several Web technologies and languages.</p>
                            <ul>
                                <li>JavaScript/Jquery</li>
                                <li>HTML5</li>
                                <li>Bootstrap-CSS</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3" style="max-width: 19rem;">
                        <div class="card-header">
                            <img src="Content/img/gitlogoC.png" width="40" height="40" class="d-inline-block align-top" alt="">
                            <%-- .NET--%>
                        </div>
                        <div class="card-body">
                            <h5 class="card-title">Source Code Control</h5>
                            <p class="card-text">Experience with different repositories.</p>
                            <ul>
                                <li>SVN Tortoise</li>
                                <li><a href="https://github.com/AAZDev">GITHUB</a></li>
                                <li>DevOps</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3" style="max-width: 19rem;">
                        <div class="card-header">
                            <img src="Content/img/courses.png" width="40" height="40" class="d-inline-block align-top" alt="">
                        </div>
                        <div class="card-body">
                            <h5 class="card-title">Courses</h5>
                            <p class="card-text">Courses</p>
                            <ul>
                                <li>ReactJS</li>
                                <li>Android</li>
                                <li>.NET Core API Rest</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3" style="max-width: 19rem;">
                        <div class="card-header">
                            <img src="Content/img/skills.png" width="40" height="40" class="d-inline-block align-top" alt="">
                        </div>
                        <div class="card-body">
                            <h5 class="card-title">Other skills</h5>
                            <p class="card-text">Use of best practices and strategies for programming</p>
                            <ul>
                                <li>Objects Oriented Programming</li>
                                <li>Test Driven Development</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3" style="max-width: 19rem;">
                        <div class="card-header">
                            <img src="Content/img/languages-icon.png" width="40" height="40" class="d-inline-block align-top" alt="">
                            <%-- .NET--%>
                        </div>
                        <div class="card-body">
                            <h5 class="card-title">Languages</h5>
                            <p class="card-text">IELTS Certificate</p>
                            <ul>
                                <li>Well written and oral communication skills.</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <hr />
</asp:Content>