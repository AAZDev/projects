<%@ Page Title="" Language="C#" MasterPageFile="~/Portfolio.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="PortFolio.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/css/index.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <br />
    <div class="col-md-12">
        <div class="form-group col-md-12">
            <section id="hero1" class="hero">
                <h1 class="text-white " id="head"><strong>Hi, I'm Ariel,</strong></h1>
            </section>
        </div>
        <div class="form-group col-md-12">
            <section id="hero2" class="hero">
                <p class="col-8">a software developer with wide experience in  <strong>front-end and back-end development.</strong></p>
            </section>
        </div>
        <div class="form-group col-md-6 ">
            <button type="button" class="btn btn-primary-outline  btn-block" onclick="parent.location='skills.aspx'">SKILLS </button>
            <button type="button" class="btn btn-primary-outline  btn-block" onclick="parent.location='experience.aspx'">EXPERIENCE </button>
        </div>
    </div>
</asp:Content>
