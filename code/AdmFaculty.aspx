<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="AdmFaculty.aspx.cs" Inherits="AdmFaculty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="content_section">
        <%--<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>--%>
				<!-- Gallery -->
                	<div class="gallery">
                    	<div class="gallery_top" style="margin-bottom:20px">
                        	<div class="gallery_heading" style="width:960px">
                            	Editing the Faculty Record
                            </div>

                            <div class="select_gallery">
                            	<%--<a  class="photo pactive" href="#">&nbsp;</a>--%>
                            	<%--<a class="movie " href="#">&nbsp;</a>--%>
                            </div>
                            <div class="clear"></div>
                        </div>
                    	<!-- Col1 -->
                        	<div class="categorydiv" style="margin:20px 15px 0 5px">
                            	<ul>
                                    <li><asp:LinkButton class="selected" ID="facultyRecord" runat="server" OnClick="facultyRecord_Click">Faculty Record</asp:LinkButton></li>
                                    <li><asp:LinkButton ID="AddFaculty" runat="server" OnClick="AddFaculty_Click">Add Record</asp:LinkButton></li>
                                    <li><asp:LinkButton ID="updateFaculty" runat="server" OnClick="updateFaculty_Click">Update Record</asp:LinkButton></li>
                                    <li><asp:LinkButton ID="deleteFaculty" runat="server" OnClick="deleteFaculty_Click">Delete Record</asp:LinkButton></li>
                                </ul>
                            </div>
                    		<div class="thumbdiv hideScrollbar" style="height:600px;overflow:scroll"> 
                                
                                               
                                <div style="text-align:justify">
                                    <div runat="server" id="fr">
                                        <div class="content_heading">
                                            <div class="heading" style="color:blue;font-weight:600;font-size:20px">Faculty Record</div>
                                        </div>
                                        <div>
                                            
                                            <div style="margin:0 0 20px 0;">
                                                <asp:DropDownList ID="drpCourse" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drpCourse_SelectedIndexChanged"></asp:DropDownList>
                                            </div>
                                            <div id="divgrd" runat="server">
                                                <%--<div style="width:245px;background-color:cyan;height:100px;margin-right:1px;float:left">

                                                </div>
                                                <div style="width:245px;background-color:yellow;height:100px;margin-right:1px;float:left">

                                                </div>
                                                <div style="width:245px;background-color:lawngreen;height:100px;float:left">

                                                </div>--%>
                                                <asp:GridView DataKeyNames="facultyId" AutoGenerateColumns="False" CssClass="table table-bordered grdBackground" ID="grdFaculty" runat="server" OnRowDeleting="grdFaculty_RowDeleting" OnRowEditing="grdFaculty_RowEditing">
                                                <Columns>

                                                 <asp:TemplateField ShowHeader="False" Visible="false" HeaderStyle-CssClass="grdHeaderStyle">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="dl" runat="server" OnClientClick="return confirm('Are You Sure')" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                    <asp:TemplateField ShowHeader="False" Visible="false" HeaderStyle-CssClass="grdHeaderStyle">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="el" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                    
                                                 <asp:TemplateField HeaderText="SNo." HeaderStyle-CssClass="grdHeaderStyle">
                                                    <ItemTemplate>
                                                        <%# Container.DataItemIndex + 1 %>.
                                                    </ItemTemplate>
                                                     <HeaderStyle CssClass="grdHeaderStyle" />
                                                </asp:TemplateField>
                                                 <asp:TemplateField HeaderText="FacultyId" Visible="false" HeaderStyle-CssClass="grdHeaderStyle">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblfacultyId" runat="server" Text='<%#Bind("facultyId") %>'></asp:Label>
                                                    </ItemTemplate>
                                                     <HeaderStyle CssClass="grdHeaderStyle" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Name" HeaderStyle-CssClass="grdHeaderStyle">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblName" runat="server" style="font-size:15px;font-weight:600" Text='<%#Bind("facultyName") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <HeaderStyle CssClass="grdHeaderStyle" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Designation" HeaderStyle-CssClass="grdHeaderStyle">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblDesignation" runat="server" Text='<%#Bind("facultyDesignation") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <HeaderStyle CssClass="grdHeaderStyle" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Qualification" HeaderStyle-CssClass="grdHeaderStyle">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblQualification" runat="server" Text='<%#Bind("facultyQualifications") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <HeaderStyle CssClass="grdHeaderStyle" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="CourseType" Visible="false" HeaderStyle-CssClass="grdHeaderStyle">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblCourseType" runat="server" Text='<%#Bind("courseName") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <HeaderStyle CssClass="grdHeaderStyle" />
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div id="divUf" visible="false" runat="server">
                                         <div class="content_heading">
                                            <div class="heading" style="color:blue;font-weight:600;font-size:20px">Add New Record</div>
                                        </div>
                                        <p>
                                            Faculty Name: 
                                            <br /><asp:TextBox ID="txtName" CssClass="form-control" AutoComplete="false" required="required" runat="server"></asp:TextBox>
                                            <br />Faculty Designation: 
                                            <br /><asp:TextBox ID="txtDesignation" CssClass="form-control" AutoComplete="false" required="required" runat="server"></asp:TextBox>
                                            <br />Faculty Qualifications: 
                                            <br /><asp:TextBox ID="txtQualification" CssClass="form-control" AutoComplete="false" required="required" runat="server"></asp:TextBox>
                                            <br />
                                            <asp:Label ID="lblError" runat="server" style="color:red" Visible="false" Text=""></asp:Label>
                                            <br /><asp:Button ID="btnAdd" CssClass="btn btn-primary" runat="server" Text="Add Record" OnClick="btnAdd_Click"/>
                                            <hr>
                                            <br /><br />
                                        </p>
                                    </div>

                                    <div id="divMf" runat="server" visible="false">
                                        <div class="content_heading">
                                            <div class="heading" style="color:blue;font-weight:600;font-size:20px">Modify a Record</div>
                                        </div>
                                        <p>
                                            <asp:Label ID="lblfacultyId2" runat="server" Visible="false" Text=""></asp:Label>
                                            Faculty Name: 
                                            <br /><asp:TextBox ID="txtName2" CssClass="form-control" AutoComplete="false" required="required" runat="server"></asp:TextBox>
                                            <br />Faculty Designation: 
                                            <br /><asp:TextBox ID="txtDesignation2" CssClass="form-control" AutoComplete="false" required="required" runat="server"></asp:TextBox>
                                            <br />Faculty Qualifications: 
                                            <br /><asp:TextBox ID="txtQualification2" CssClass="form-control" AutoComplete="false" required="required" runat="server"></asp:TextBox>
                                            <br /><asp:Button ID="btnUpdate" OnClientClick="return confirm('Are You Sure')" CssClass="btn btn-primary" runat="server" Text="Modify Record" OnClick="btnUpdate_Click"/>
                                            <hr>
                                            <br /><br />
                                        </p>
                                    </div>
                                </div>
                            <div class="hdiv">&nbsp;</div>
                            </div>
                            
                    </div>    	
                <div class="clear"></div>
                <%--</ContentTemplate></asp:UpdatePanel>--%>
		    </div>
</asp:Content>

