﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="VisionGlobal.aspx.cs" Inherits="ProyectoPermanencia.Presentacion.VisionGlobal" %>

<asp:Content ID="ContentHeadGlobal" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="../css/VisionGlobalStyleSheet.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="ContentGlobal" ContentPlaceHolderID="ContentPlaceHolderGlobal" runat="server">
    <div class="container">
        <h2>Vision Global</h2>
        <!-- TITULOS DE BUSQUEDA -->
        <hr />
        <div class="row">
            <div class="col-md-3">
                <h3>Buscar Alumno por:</h3>
            </div>
            <div class="col-md-3">
                <h3>Filtrar Alumno por:</h3>
            </div>

        </div>

        <!-- FILTROS DE BUSQUEDA -->
        <div class="row">
            <div class="col-md-3 filtrobox" style="border: solid">
                <!-- Buscar por rut o nombre -->
                <div class="input-group">
                    <asp:DropDownList ID="ddlRutNom" runat="server" Width="120px">
                        <asp:ListItem Value="1" Text="Rut Alumno">Rut Alumno</asp:ListItem>
                        <asp:ListItem>Nombre Alumno</asp:ListItem>
                    </asp:DropDownList>
                    <asp:TextBox runat="server" CssClass="”form-control”" Width="115px" ID="txtRut"></asp:TextBox>
                    <asp:Button runat="server" Text="Buscar" ID="btoFiltrar" CssClass="btn btn-info" OnClick="btoFiltrar_Click1" />
                </div>
            </div>

            <div class="col-md-9">
                <div class="col-md-4 filtrobox" style="border: solid">
                    <!-- Filtrar por jornada -->
                    <div id="Jornada" class="form-row align-items-center" style="width: 200px;">
                        <h3>Jornada: </h3>
                        <asp:DropDownList ID="ddlJornada" runat="server" Width="120px">
                            <asp:ListItem Value="A">Ambas</asp:ListItem>
                            <asp:ListItem Value="D">Diurno</asp:ListItem>
                            <asp:ListItem Value="V">Vespertino</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                    </div>

                </div>

                <div class="col-md-4 filtrobox" style="border: solid">
                    <!-- Filtrar por escuela -->
                    <div id="Escuela" style="width: 200px; align-self: center;">
                        <h3>Escuela: </h3>
                        <asp:DropDownList ID="ddlEscuelas" runat="server">
                        </asp:DropDownList>
                        <br />
                    </div>
                </div>

                <div class="col-md-4 filtrobox" style="border: solid">
                    <!-- Filtrar por carrera -->
                    <div id="Carrera" style="width: 200px; float: none;">
                        <h3>Carrera: </h3>
                        <asp:DropDownList ID="ddlCarrera" runat="server">
                        </asp:DropDownList>
                        <br />
                    </div>
                </div>
                <!-- Filtrar resultados -->
                <div style="float: right">
                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-warning" Text="Filtrar"></asp:LinkButton>
                    <br />
                    <br />
                </div>

            </div>
        </div>

        <!-- GRILLA PRINCIPAL -->
        <div class="row">           
            <div>
                <div id="ScoreGlobal" class="ScoreGlobal">
                    <h2>Scores </h2>
                    <asp:GridView ID="grvGlobal" CssClass="table table-bordered bs-table table-hover" runat="server" BorderStyle="Solid" ShowHeaderWhenEmpty="True" EmptyDataText="No se encontraron registros" OnSelectedIndexChanged="grvGlobal_SelectedIndexChanged" Width="328px">
                        <HeaderStyle BackColor="#092845" Font-Bold="True" ForeColor="White" Width="900px" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>

        




    </div>

</asp:Content>
