<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="AdmAlmuni.aspx.cs" Inherits="AdmAlmuni" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="gallery">
                    	<div class="gallery_top" style="margin-bottom:20px">
                        	<div class="gallery_heading">
                            	Editing the Gallery Records
                            </div>
                            <div class="select_gallery">
                            	<a  class="photo pactive" href="#">&nbsp;</a>
                            	<%--<a class="movie " href="#">&nbsp;</a>--%>
                            </div>
                            <div class="clear"></div>
                        </div>
                    	<!-- Col1 -->
                        	<div class="categorydiv" style="margin:20px 15px 0 5px">
                            	<ul>
                                    <li><asp:LinkButton class="selected" ID="galleryRecord" runat="server" OnClick="galleryRecord_Click">Almuni Record</asp:LinkButton></li>
                                    <li><asp:LinkButton ID="addTRecord" runat="server" OnClick="addTRecord_Click">Add Record</asp:LinkButton></li>
                                    <li><asp:LinkButton ID="removeTRecord" runat="server" OnClick="removeTRecord_Click">Remove Record</asp:LinkButton></li>
                                    <li><a href="AdmTopperStudents.aspx">Topper Students</a></li>
                                </ul>
                            </div>
                    		<div class="thumbdiv hideScrollbar" style="height:600px;overflow:scroll">    
                                <div style="text-align:justify">
                                    
                                    <div runat="server" visible="false" id="divAR">
                                        <div class="content_heading">
                                            <div class="heading" style="color:blue;font-weight:600;font-size:20px">Add New Record</div>
                                        </div>
                                        <div>
                                            Enter the Name:
                                            <asp:TextBox ID="txtName" CssClass="form-control" required="required" AutoComplete="false" runat="server"></asp:TextBox><br />
                                            Enter the Description:
                                            <asp:TextBox ID="txtImgTitle" CssClass="form-control" required="required" AutoComplete="false" runat="server"></asp:TextBox>
                                            <br /><br />

                                            Small Image: (Dimensions: 108*103)
                                        
                                        <div id="divUploadS" runat="server">
                                            <br /> 
                                          <asp:FileUpload style="float:left" ID="smallImg" runat="server"/>
                                            <asp:Label ID="lblpthS" runat="server" Visible="false" Text=""></asp:Label>
                                            <asp:Button ID="btnUploadSmallImage" CssClass="btn btn-primary" runat="server" Text="View" OnClick="btnUploadSmallImage_Click"/> 
                                  
                                            <br />
                                        </div>
                                        <div id="divImageS" runat="server" visible="false" style="width:100%;height:auto">
                                   
                                            <asp:Image ID="sImg" runat="server" style="width:108px;height:103px;float:left;margin-right:30px"/>
                                            <br />
                                               <asp:Button ID="btnChangeS" CssClass="btn btn-primary" runat="server" Text="Change" OnClick="btnChangeS_Click"/>
                                        <br /><br />
                                        </div>
                                        <br /></div>
                                        <div class="clear"></div>
                                        <br />
                                        <div>
                                        Large Image: (Dimensions: 771*513) 
                                        <div id="divUploadL" runat="server">
                                            <br /> 
                                          <asp:FileUpload style="float:left" ID="largeImg" runat="server"/>
                                            <asp:Label ID="lblpthL" runat="server" Visible="false" Text=""></asp:Label>
                                            <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="View" OnClick="btnUploadLargeImage_Click"/> 
                                  
                                            <br />
                                        </div>
                                        
                                        <div id="divImageL" runat="server" visible="false" style="width:100%;height:auto">
                                   
                                            <asp:Image ID="lImg" runat="server" style="width:771px;height:513px;float:left;margin-right:30px"/>
                                            <br />
                                
                                            <asp:Button ID="btnChangeL" CssClass="btn btn-primary" runat="server" Text="Change" OnClick="btnChangeL_Click"/>
                                        <br /><br /></div>
                                        </div>
                                        <asp:Label ID="lblError" Visible="false" style="color:red" runat="server" Text="Label"></asp:Label><br />
                                        <asp:Button ID="btnUploadImage" CssClass="btn btn-primary" runat="server" Text="Upload Record" OnClick="btnUploadImage_Click"/>
                                        
                                        <hr>
                                        <div class="clear"></div>
                                        
                                    </div>

                                    
                                    <div runat="server" id="divTR">
                                        <div class="content_heading">
                                            <div class="heading" style="color:blue;font-weight:600;font-size:20px">Almuni Record</div>
                                        </div>
                                        <div>
                                            <div id="reptr" runat="server" style="margin:0 0 20px 0;">
                                            <ul>
                                                <asp:Repeater ID="rptImages" runat="server">
                                                    <ItemTemplate>
                                                    <li>
                                                        <a id="li" href='<%#Bind("limgPath") %>' runat="server" rel="galleryimg" class="galleryimg">
                                                            <div>
                                                            <asp:Image style="width:108px;height:101px;float:left;margin-right:15px;" ImageUrl='<%#Bind("simgPath") %>' ID="si" runat="server" />
                                                            <div style="float:left;width:216px">
                                                                <asp:Label ID="lblImageName" runat="server" Text='<%#Bind("imageName") %>'></asp:Label><br />
                                                                <asp:Label ID="lblImageTilte" runat="server" Text='<%#Bind("imageTitle") %>'></asp:Label>

                                                            </div>

                                                            </div>
                                                        </a>
                                                    </li>
                                                    </ItemTemplate>
                                                </asp:Repeater>
                                	        
                                        </ul>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    
                                    <div runat="server" visible="false" id="divRR">
                                        <div class="content_heading">
                                            <div class="heading" style="color:blue;font-weight:600;font-size:20px">Remove A Record</div>
                                        </div>
                                        <asp:GridView DataKeyNames="imgId" AutoGenerateColumns="False" CssClass="table table-bordered grdBackground" ID="grdTopperRecord" runat="server" OnRowDeleting="grdTopperRecord_RowDeleting">
                                                <Columns>

                                                 <asp:TemplateField ShowHeader="False" HeaderStyle-CssClass="grdHeaderStyle">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="dl" runat="server" OnClientClick="return confirm('Are You Sure')" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                    
                                                 <asp:TemplateField HeaderText="SNo." HeaderStyle-CssClass="grdHeaderStyle">
                                                    <ItemTemplate>
                                                        <%# Container.DataItemIndex + 1 %>.
                                                    </ItemTemplate>
                                                     <HeaderStyle CssClass="grdHeaderStyle" />
                                                </asp:TemplateField>
                                                 <asp:TemplateField HeaderText="ImageID" Visible="false" HeaderStyle-CssClass="grdHeaderStyle">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblimgId" runat="server" Text='<%#Bind("imgId") %>'></asp:Label>
                                                        <asp:Label ID="lbllimgPath" runat="server" Text='<%#Bind("limgPath") %>'></asp:Label>
                                                        <asp:Label ID="lblsimgPath" runat="server" Text='<%#Bind("simgPath") %>'></asp:Label>
                                                    </ItemTemplate>
                                                     <HeaderStyle CssClass="grdHeaderStyle" />
                                                </asp:TemplateField>
                                                 <asp:TemplateField HeaderText="Name" HeaderStyle-CssClass="grdHeaderStyle">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblimgName" runat="server" style="font-size:15px;font-weight:600" Text='<%#Bind("imageName") %>'></asp:Label>    
                                                    </ItemTemplate>
                                                     <HeaderStyle CssClass="grdHeaderStyle" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Description" HeaderStyle-CssClass="grdHeaderStyle">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblimgTitle" runat="server" Text='<%#Bind("imageTitle") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <HeaderStyle CssClass="grdHeaderStyle" />
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                    </div>
                                    
                                    
                                </div>
                            <div class="hdiv">&nbsp;</div>
                            </div>
                            
                    </div>
</asp:Content>

