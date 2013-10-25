<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MasterDetailsForm.aspx.cs" Inherits="_01.MasterDatails.MasterDetailsForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style>
        img {
            width: 50px;
            height: 50px;
        }
    </style>
</head>
<body>
    <form id="form" runat="server">
        <asp:Label ID="continentsLabel" runat="server" Text="Continents" />
        <br />
        <asp:EntityDataSource ID="continentsData" runat="server" 
            ConnectionString="name=WorldEntities" DefaultContainerName="WorldEntities" 
            EnableFlattening="False" EntitySetName="Continents" />
        <asp:ListBox ID="continentsList" runat="server"
            DataSourceID="continentsData" DataTextField="Name" DataValueField="Id"
            Rows="2" AutoPostBack="true" OnSelectedIndexChanged="continentsList_SelectedIndexChanged" />
        <br />
        <asp:Button ID="editContinent" runat="server" OnClick="editContinet_Click" Text="Edit" />
        <asp:Button ID="insertContinent" runat="server" OnClick="insertContinent_Click" Text="Insert" />
        <asp:Label ID="continentNameLabal" runat="server" 
            Text="Enter Continent Name" AssociatedControlID="continentName" />
        <asp:TextBox ID="continentName" runat="server" />
<%--        <asp:RequiredFieldValidator ID="continentNameRequired" runat="server" ControlToValidate="continentName" 
            ErrorMessage="Required" ForeColor="Red" />
        <asp:RegularExpressionValidator ID="continentNameRegex" runat="server" ControlToValidate="continentName" 
            ErrorMessage="Must Contain Only Latin Letters" ForeColor="Red" ValidationExpression="[a-zA-Z]+" />
        <br />--%>
        <asp:Button ID="deleteContinent" runat="server" OnClick="deleteContinent_Click" Text="Delete" />
        <br />

        <asp:Label ID="countriesLabel" runat="server" Text="Countries" />
        <br />
        <asp:EntityDataSource ID="countriesData" runat="server" 
            ConnectionString="name=WorldEntities" DefaultContainerName="WorldEntities" 
            EnableFlattening="False" EntitySetName="Countries" Include="Language"
            EnableInsert="true" EnableDelete="true" EnableUpdate="true"
            Where="it.ContinentId=@ContId">
            <WhereParameters>
                <asp:ControlParameter Name="ContId" Type="Int32" ControlID="continentsList" />
            </WhereParameters>
        </asp:EntityDataSource>
        <asp:GridView ID="countriesList" runat="server"
            DataSourceID="countriesData" AutoGenerateColumns="false" DataKeyNames="Id"
            AllowPaging="true" AllowSorting="true" PageSize="1" ItemType="World.Data.Country">
            <Columns>
                <asp:CommandField ShowSelectButton="true" />
                <asp:CommandField ShowEditButton="true" />
                <asp:CommandField ShowDeleteButton="true" />
                <asp:BoundField DataField="Name" HeaderText="Country Name" SortExpression="Name" />
                <asp:BoundField DataField="Population" HeaderText="Population" SortExpression="Population" />
                <asp:BoundField DataField="Language.Title" HeaderText="Official Language" SortExpression="LanguageId" />
                <asp:ImageField DataImageUrlField="Flag" HeaderText="Country Flag" />
            </Columns>
        </asp:GridView>

        <asp:ListView ID="insertCountryForm" runat="server"
            DataSourceID="countriesData" ItemType="World.Data.Country"
            DataKeyNames="Id"
            InsertItemPosition="LastItem">
            <ItemTemplate>
            </ItemTemplate>
            <InsertItemTemplate>
                <div>
                    Name:
                    <asp:TextBox ID="countryNameBox" runat="server" />
                    <br />
                    Population:
                    <asp:TextBox ID="countryPopulationBox" runat="server" />
                    <br />
                    Language:
                    <asp:TextBox ID="countryLanguageBox" runat="server" />
                    <br />
                    Flag:
                    <asp:TextBox ID="countryFlagBox" runat="server" />
                    <br />
                    <asp:Button ID ="insertCountry" OnClick="insertCountry_Click" Text="Insert" runat="server"/>
                </div>
            </InsertItemTemplate>
        </asp:ListView>
        <br />

        <asp:Label ID="townsLabel" runat="server" Text="Towns" />
        <br />
        <asp:EntityDataSource ID="townsData" runat="server" EnableInsert="true" EnableDelete="true" EnableUpdate="true"
            ConnectionString="name=WorldEntities" DefaultContainerName="WorldEntities" 
            EnableFlattening="False" EntitySetName="Towns" Where="it.CountryId=@CounId">
            <WhereParameters>
                <asp:ControlParameter Name="CounId" Type="Int32" ControlID="countriesList" />
            </WhereParameters>
        </asp:EntityDataSource>
        <asp:ListView ID="townsList" runat="server" DataSourceID="townsData" 
            ItemType="World.Data.Town" DataKeyNames="Id"
            OnItemInserting="townsList_ItemInserting" InsertItemPosition="LastItem" 
            OnItemEditing="townsList_ItemEditing">
            <LayoutTemplate>
                <table>
                    <thead>
                        <tr>
                            <td>Town Name</td>
                            <td>Population</td>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:PlaceHolder runat="server" ID="itemPlaceHolder"></asp:PlaceHolder>
                    </tbody>
                </table>
            </LayoutTemplate>
            <ItemTemplate>
                <tr>
                    <td>
                        <%#: Eval("Name") %>
                    </td>
                    <td>
                        <%#: Eval("Population") %>
                    </td>
                    <td>
                        <asp:Button ID="ButtonEdit" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Button ID="ButtonDelete" runat="server" CommandName="Delete" Text="Delete" />
                    </td>
                </tr>
        </ItemTemplate>
        <InsertItemTemplate>
            <div>
                Name:
                <asp:TextBox ID="townNameBox" runat="server" Text='<%# Bind("Name") %>'/>
                <br />
                Population:
                <asp:TextBox ID="townPopulationBox" runat="server" Text='<%# Bind("Population") %>'/>
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
            </div>
        </InsertItemTemplate>
        <EditItemTemplate>
            <div>
                Name:
                <asp:TextBox ID="townNameBoxEdit" runat="server" Text='<%# Bind("Name") %>'/>
                <br />
                Population:
                <asp:TextBox ID="townPopulationBoxEdit" runat="server" Text='<%# Bind("Population") %>'/>
                <br />
                <asp:Button ID="ButtonUpdate" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="ButtonCancel" runat="server" CommandName="Cancel" Text="Cancel" />
            </div>
        </EditItemTemplate>
        </asp:ListView>
    </form>
</body>
</html>
