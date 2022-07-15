<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="AdmGallery.aspx.cs" Inherits="AdmGallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="content_section">
        <%--<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>--%>
				<!-- Gallery -->
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
                                    <li><asp:LinkButton class="selected" ID="galleryRecord" runat="server" OnClick="galleryRecord_Click">Gallery Record</asp:LinkButton></li>
                                    <li><asp:LinkButton ID="uploadImage" runat="server" OnClick="uploadImage_Click">Upload Image</asp:LinkButton></li>
                                    <li><asp:LinkButton ID="deleteImages" runat="server" OnClick="deleteImages_Click">Delete Image</asp:LinkButton></li>
                                    <li><asp:LinkButton ID="addCategory" runat="server" OnClick="addCategory_Click">Add Category</asp:LinkButton></li>
                                    <li><asp:LinkButton ID="ModifyCategory" runat="server" OnClick="ModifyCategory_Click">Modify Category</asp:LinkButton></li>
                                    <li><asp:LinkButton ID="removeCategory" runat="server" OnClick="removeCategory_Click">Remove Category</asp:LinkButton></li>
                                </ul>
                            </div>
                    		<div class="thumbdiv hideScrollbar" style="height:600px;overflow:scroll">
                                
                                        
                                        
                                            
                                <div style="text-align:justify">
                                    <div runat="server" id="gr">
                                        <div class="content_heading">
                                            <div class="heading" style="color:blue;font-weight:600;font-size:20px">Gallery Record</div>
                                        </div>
                                        <div>
                                            <div style="margin:0 0 20px 0;">
                                                <asp:DropDownList ID="drpCategory" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drpCategory_SelectedIndexChanged"></asp:DropDownList>
                                            </div>
                                            <div id="reptr" runat="server">
                                            <ul>
                                                <asp:Repeater ID="rptImages" runat="server">
                                                    <ItemTemplate>
                                                    <li>
                                                        <a id="li" href='<%#Bind("limgPath") %>' runat="server" rel="galleryimg" class="galleryimg">
                                                            <div>
                                                            <asp:Image style="width:108px;height:101px" ImageUrl='<%#Bind("simgPath") %>' ID="si" runat="server" />
                                                            <div style="width:108px;margin-top:3px;text-align:center">
                                                                <asp:Label ID="lblImageTitle" runat="server" Text='<%#Bind("imageTitle") %>'></asp:Label>
                                                            </div>

                                                            </div>
                                                        </a>
                                                    </li>
                                                    </ItemTemplate>
                                                </asp:Repeater>
                                	        <%--<li><a href="images/lightboximg.gif" rel="galleryimg" class="galleryimg" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibu" ><img src="images/gallery1.gif"  alt="" /></a></li>
                                            <li><a href="images/lightboximg.gif" rel="galleryimg" class="galleryimg" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibu"><img src="images/gallery3.gif"  alt="" /></a></li>
                                            <li><a href="images/lightboximg.gif" rel="galleryimg" class="galleryimg" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibu"><img src="images/gallery4.gif"  alt="" /></a></li>
                                            <li><a href="images/lightboximg.gif" rel="galleryimg" class="galleryimg" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibu" ><img src="images/gallery5.gif"  alt="" /></a></li>
                                            <li><a href="images/lightboximg.gif" rel="galleryimg" class="galleryimg" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibu" ><img src="images/gallery6.gif"  alt="" /></a></li>
                                            <li><a href="images/lightboximg.gif" rel="galleryimg" class="galleryimg" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibu" ><img src="images/gallery7.gif"  alt="" /></a></li>
                                            <li><a href="images/lightboximg.gif" rel="galleryimg" class="galleryimg" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibu" ><img src="images/gallery8.gif"  alt="" /></a></li>
                                            <li><a href="images/lightboximg.gif" rel="galleryimg" class="galleryimg" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibu" ><img src="images/gallery9.gif"  alt="" /></a></li>
                                             <li><a href="images/lightboximg.gif" rel="galleryimg" class="galleryimg" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibu" ><img src="images/gallery10.gif"  alt="" /></a></li>
                                            <li><a href="images/lightboximg.gif" rel="galleryimg" class="galleryimg" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibu" ><img src="images/gallery11.gif"  alt="" /></a></li>
                                            <li><a href="images/lightboximg.gif" rel="galleryimg" class="galleryimg" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibu" ><img src="images/gallery12.gif"  alt="" /></a></li>
                                            <li><a href="images/lightboximg.gif" rel="galleryimg" class="galleryimg" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibu" ><img src="images/gallery13.gif"  alt="" /></a></li>
                                            <li><a href="images/lightboximg.gif" rel="galleryimg" class="galleryimg" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibu" ><img src="images/gallery14.gif"  alt="" /></a></li>
                                             <li><a href="images/lightboximg.gif" rel="galleryimg" class="galleryimg" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibu" ><img src="images/gallery15.gif"  alt="" /></a></li>
                                            <li><a href="images/lightboximg.gif" rel="galleryimg" class="galleryimg" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibu" ><img src="images/gallery16.gif"  alt="" /></a></li>
                                            <li><a href="images/lightboximg.gif" rel="galleryimg" class="galleryimg" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibu" ><img src="images/gallery17.gif"  alt="" /></a></li>
                                            <li><a href="images/lightboximg.gif" rel="galleryimg" class="galleryimg" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibu" ><img src="images/gallery18.gif"  alt="" /></a></li>
                                            <li><a href="images/lightboximg.gif" rel="galleryimg" class="galleryimg" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibu" ><img src="images/gallery1.gif"  alt="" /></a></li>
                                            <li><a href="images/lightboximg.gif" rel="galleryimg" class="galleryimg" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibu"><img src="images/gallery3.gif"  alt="" /></a></li>
                                            <li><a href="images/lightboximg.gif" rel="galleryimg" class="galleryimg" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibu"><img src="images/gallery4.gif"  alt="" /></a></li>
                                            <li><a href="images/lightboximg.gif" rel="galleryimg" class="galleryimg" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibu" ><img src="images/gallery5.gif"  alt="" /></a></li>
                                            <li><a href="images/lightboximg.gif" rel="galleryimg" class="galleryimg" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibu" ><img src="images/gallery6.gif"  alt="" /></a></li>
                                            <li><a href="images/lightboximg.gif" rel="galleryimg" class="galleryimg" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibu" ><img src="images/gallery7.gif"  alt="" /></a></li>
                                            <li><a href="images/lightboximg.gif" rel="galleryimg" class="galleryimg" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibu" ><img src="images/gallery8.gif"  alt="" /></a></li>
                                            <li><a href="images/lightboximg.gif" rel="galleryimg" class="galleryimg" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibu" ><img src="images/gallery9.gif"  alt="" /></a></li>
                                             <li><a href="images/lightboximg.gif" rel="galleryimg" class="galleryimg" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibu" ><img src="images/gallery10.gif"  alt="" /></a></li>
                                            <li><a href="images/lightboximg.gif" rel="galleryimg" class="galleryimg" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibu" ><img src="images/gallery11.gif"  alt="" /></a></li>
                                            <li><a href="images/lightboximg.gif" rel="galleryimg" class="galleryimg" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibu" ><img src="images/gallery12.gif"  alt="" /></a></li>
                                            <li><a href="images/lightboximg.gif" rel="galleryimg" class="galleryimg" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibu" ><img src="images/gallery13.gif"  alt="" /></a></li>
                                            <li><a href="images/lightboximg.gif" rel="galleryimg" class="galleryimg" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibu" ><img src="images/gallery14.gif"  alt="" /></a></li>
                                             <li><a href="images/lightboximg.gif" rel="galleryimg" class="galleryimg" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibu" ><img src="images/gallery15.gif"  alt="" /></a></li>
                                            <li><a href="images/lightboximg.gif" rel="galleryimg" class="galleryimg" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibu" ><img src="images/gallery16.gif"  alt="" /></a></li>
                                            <li><a href="images/lightboximg.gif" rel="galleryimg" class="galleryimg" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibu" ><img src="images/gallery17.gif"  alt="" /></a></li>
                                            <li><a href="images/lightboximg.gif" rel="galleryimg" class="galleryimg" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibu" ><img src="images/gallery18.gif"  alt="" /></a></li>--%>
                                        </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div runat="server" visible="false" id="ui">
                                        <div class="content_heading">
                                            <div class="heading" style="color:blue;font-weight:600;font-size:20px">Upload Image's</div>
                                        </div>
                                        <div>
                                        Enter the Title For The Image:
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
                                        <asp:Button ID="btnUploadImage" CssClass="btn btn-primary" runat="server" Text="Upload Image's" OnClick="btnUploadImage_Click"/>
                                        
                                        <hr>
                                        <br /><br />
                                        <div class="clear"></div>
                                        
                                    </div>

                                    <div runat="server" visible="false" id="di">
                                        <div class="content_heading">
                                            <div class="heading" style="color:blue;font-weight:600;font-size:20px">Delete Image's</div>
                                        </div>
                                        <asp:GridView DataKeyNames="imgId" AutoGenerateColumns="False" CssClass="table table-bordered grdBackground" ID="grdImageRecord" runat="server" OnRowDeleting="grdImageRecord_RowDeleting">
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
                                                 <asp:TemplateField HeaderText="CategoryID" Visible="false" HeaderStyle-CssClass="grdHeaderStyle">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblimgId" runat="server" Text='<%#Bind("imgId") %>'></asp:Label>
                                                        <asp:Label ID="lblcid" runat="server" Text='<%#Bind("cid") %>'></asp:Label>
                                                        <asp:Label ID="lbllimgPath" runat="server" Text='<%#Bind("limgPath") %>'></asp:Label>
                                                        <asp:Label ID="lblsimgPath" runat="server" Text='<%#Bind("simgPath") %>'></asp:Label>
                                                    </ItemTemplate>
                                                     <HeaderStyle CssClass="grdHeaderStyle" />
                                                </asp:TemplateField>
                                                 <asp:TemplateField HeaderText="Image" HeaderStyle-CssClass="grdHeaderStyle">
                                                    <ItemTemplate>
                                                        <asp:Image ID="Image" style="width:108px;height:101px;float:left;margin-right:10px" ImageUrl='<%#Eval("simgPath")%>' runat="server" />
                                                        <asp:Label ID="lblimgTitle" runat="server" Text='<%#Bind("imageTitle") %>'></asp:Label>    
                                                    </ItemTemplate>
                                                     <HeaderStyle CssClass="grdHeaderStyle" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Category Title" HeaderStyle-CssClass="grdHeaderStyle">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblctitle" runat="server" style="font-size:15px;font-weight:500" Text='<%#Bind("ctitle") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <HeaderStyle CssClass="grdHeaderStyle" />
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                    </div>
                                    
                                    <div runat="server" visible="false" id="Cgrd">
                                        <div class="content_heading">
                                            <div class="heading" style="color:blue;font-weight:600;font-size:20px">Category Record</div>
                                        </div>
                                        <asp:GridView DataKeyNames="cid" AutoGenerateColumns="False" CssClass="table table-bordered grdBackground" ID="grdCategory" runat="server" OnRowDeleting="grdCategory_RowDeleting" OnRowEditing="grdCategory_RowEditing">
                                                <Columns>

                                                 <asp:TemplateField ShowHeader="False" Visible="false" HeaderStyle-CssClass="grdHeaderStyle">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="dl" runat="server" OnClientClick="return confirm('Are You Sure')" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                 <asp:TemplateField ShowHeader="False" Visible="false" HeaderStyle-CssClass="grdHeaderStyle">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="edit" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                    
                                                 <asp:TemplateField HeaderText="SNo." HeaderStyle-CssClass="grdHeaderStyle">
                                                    <ItemTemplate>
                                                        <%# Container.DataItemIndex + 1 %>.
                                                    </ItemTemplate>
                                                     <HeaderStyle CssClass="grdHeaderStyle" />
                                                </asp:TemplateField>
                                                 <asp:TemplateField HeaderText="CategoryID" Visible="false" HeaderStyle-CssClass="grdHeaderStyle">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblcid" runat="server" Text='<%#Bind("cid") %>'></asp:Label>
                                                    </ItemTemplate>
                                                     <HeaderStyle CssClass="grdHeaderStyle" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Category Title" HeaderStyle-CssClass="grdHeaderStyle">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblctitle" runat="server" style="font-size:15px;font-weight:500" Text='<%#Bind("ctitle") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <HeaderStyle CssClass="grdHeaderStyle" />
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                        
                                    </div>
                                    <div runat="server" visible="false" id="ac">
                                        <div class="content_heading">
                                            <div class="heading" style="color:blue;font-weight:600;font-size:20px">Add New Category</div>
                                        </div>
                                        Category Title: 
                                        <asp:TextBox ID="txtCtitle" CssClass="form-control" AutoComplete="false" required="required" runat="server"></asp:TextBox><br />
                                        <asp:Button ID="btnAddCategory" CssClass="btn btn-primary" runat="server" Text="Add Category" OnClick="btnAddCategory_Click"/>
                                        <hr>
                                        <br /><br />    
                                    </div>
                                    <div runat="server" visible="false" id="mcr">
                                        <div class="content_heading">
                                            <div class="heading" style="color:blue;font-weight:600;font-size:20px">Modify Credit Record</div>
                                        </div>
                                        Category Title:
                                        <asp:Label ID="lblCid" runat="server" Visible="false" Text=""></asp:Label> 
                                        <asp:TextBox ID="txtTitle" CssClass="form-control" AutoComplete="false" required="required" runat="server"></asp:TextBox><br />
                                        <asp:Button ID="btnSave" OnClientClick="return confirm('Are You Sure')" CssClass="btn btn-primary" runat="server" Text="Save" OnClick="btnSave_Click"/>
                                        <hr>
                                        <br /><br />    
                                    </div>
                                </div>
                            <div class="hdiv">&nbsp;</div>
                            </div>
                            
                    </div>    	
                <div class="clear"></div>
                <%--</ContentTemplate></asp:UpdatePanel>--%>
		    </div>
</asp:Content>

