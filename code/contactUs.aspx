<%@ Page Title="" Language="C#" MasterPageFile="~/customer.master" AutoEventWireup="true" CodeFile="contactUs.aspx.cs" Inherits="contactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="content_section">
        		<!-- News Updates -->
				<!-- Col1 -->
                	<div class="col1">
                    	<!-- Content Links -->
                         	<div class="content_links">
                            	<ul>
                            		<li><a class="our_university" href="#">Our University</a></li>
                                    <li><a class="admission" href="#">Admissions</a></li>
                                    <li><a class="accommodaiton" href="#">Accommodations</a></li>
                                    <li><a class="community" href="#">Community</a></li>
                                    <li><a class="schorship" href="#">Scholorships</a></li>
                                    <li class="last"><a class="take_tour" href="#">Take a Tour</a></li>
                                </ul>
                            </div>  
                         <!-- Content Heading -->
                         	<div class="sheading pad">
                             	<div class="sheadings">
                                    <span style="color:#0086b2;font-weight:800;font-size:18px">Contact Us</span>
                                </div>
                            </div>
                            <div class="clear"></div>
                               <p class="contact_text">
                                  The Vision of MR DAV Institute of Management Studies, Rohtak is to make it an internationally accepted Centre of excellence in Management and Information Technology.
                               </p>
                             <div class="contactblock">
                             	<!-- Contact block  -->
                                <div class="block1" style="text-align:justify">
                                	<span style="color:#0086b2;font-weight:600;font-size:14px">Mission</span>
                                    <p>
                                        The Institute endures to imbibe in each of its fraternity the ideals of our mission “Always Ahead”. We are committed to continuous improvement in the quality of education by designing & maintaining an environment, which will contributes towards the enhancement in employability & place ability of student. We give lot of importance to honing their emotional intelligence, intuition, which are transformational in nature of effect a paradigm shift, thus shaping original inspiring performer motivated by conscience, conviction, owning responsibility & following right means to be “Always Ahead”.

                                    </p>
                                </div>
                                <div class="block2">
                               		<!-- Visit Address -->
                                    <span style="color:#0086b2;font-weight:600;font-size:14px;">Visit Adress</span><br /><br />
                                	<div class="mailingaddress">
                                    	<p>5th KM Stone,</p><p> Sonepat Road Rohtak-124023</p>
                                    </div>
                                    <div class="teleno colr"> +91-8950066210, +91-9355671757, +91-9350199673</div>
                                <div class="emailaddress">
                                    	<a href="#"> mrdavims@gmail.com</a>
                                        <a href="#">www.universityofcollege.com</a>
                                      </div>
                                <div class="contacticon colr"> 10 12 464</div>
                                
                                </div>
                             <div class="clear"></div>
                             </div>
                             <div class="contactblock">
                             
                             	<div class="block1">
                                <span style="color:#0086b2;font-weight:600;font-size:16px">Quick Inquiry</span>
                                	<ul class="inquiry">
                                		<li><input name="txtName" value="Name" type="text"
                                        	onfocus="if(this.value=='Name') {this.value='';}"
                        					onblur="if(this.value=='') {this.value='Name';}"
                                        
                                         /></li> 
                                        <li><input name="txtEmail" value="Email" 
                                        	onfocus="if(this.value=='Email') {this.value='';}"
                        						onblur="if(this.value=='') {this.value='Email';}"
                                         type="text" /></li> 
                                        <li><input name="txtPhoneno" value="Phone Number"
                                        	onfocus="if(this.value=='Phone Number') {this.value='';}"
                        						onblur="if(this.value=='') {this.value='Phone Number';}"
                                         type="text" /></li>
                                        <li> 
                                            <textarea  rows="0" cols="0" name="txtMessage" style="height:30px" class="txtarea" >Address</textarea>
                                        	<%--<select name="txtcountry">
                                        		<option>USA</option>
                                                <option>Uk</option>
                                                <option>Pakistan</option>
                                            </select>--%>
                                        </li>
                                        <li> 
                                        	<textarea  rows="0" cols="0" name="txtMessage" style="height:42px" class="txtarea">Comments/Suggestion</textarea>
                                        </li>
                                    
                                    
                                    </ul>
                                    <div class="action1"> 
                        						<a href="#" class="btn1 left">Submit</a>  
                            					<a href="#" class="right">Cancel</a>
                    							</div>
                                </div>
                             	<div class="block2">
                                	<span style="color:#0086b2;font-weight:600;font-size:16px">Our Location</span>
                                	<div class="map">
                                        <iframe style="width:400px;height:270px" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3492.9626728792578!2d76.66198611504251!3d28.899457282313197!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390d9add63cc3651%3A0x1f5ef9f056ed2!2sMR%20DAV%20INSTITUTE%20OF%20MANAGEMENT%20STUDIES!5e0!3m2!1sen!2sin!4v1609232593324!5m2!1sen!2sin" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                                    	<%--<a href="#"><img src="images/map.gif"  alt="" /></a>--%>
                                    </div>
                                    <%--<div class="map_cities">
                                    	<ul>
                                        	<li><a href="#"><span>London</span></a> </li>
                                            <li><a href="#"><span>Surrey</span></a> </li>
                                    	    <li><a href="#"><span>Kent</span></a> </li>
                                    	    <li><a href="#"><span>Manchester</span></a> </li>
                                    	    
                                        </ul>
                                    </div>--%>
                                </div>	
                             
                             <div class="clear"></div>
                             </div>
                             <div class="clear"></div>
 							<!-- Contact Other Campuses -->                            
                             <%--<h2 class="cheadng">Contact Other Campuses</h2>
                             <div class="contactblock">
                             	<div class="camuses_address">
                                	<ul>
                                    	<li>
                                        	<h5>Surrey</h5>
                                        	<div class="mailingaddress">
                                    			<p>Lempor hendrerit. Phasellus quis</p>
                                         		<p>lacus diam. Sed nisl ligula,</p> 
												<p>semper in ultricies sed</p>
                                    		</div>
                                    		<div class="teleno colr">+44 123 4567 89</div>
                                     		<div class="emailaddress">
                                    		 	<a href="#">surry@universityofcollege.com</a>
                                        	</div>
                                        </li>
                                        <li>
                                        	<h5>Kent</h5>
                                        	<div class="mailingaddress">
                                    			<p>Lempor hendrerit. Phasellus quis</p>
                                         		<p>lacus diam. Sed nisl ligula,</p> 
												<p>semper in ultricies sed</p>
                                    		</div>
                                    		<div class="teleno colr">+44 123 4567 89</div>
                                     		<div class="emailaddress">
                                    		 	<a href="#">surry@universityofcollege.com</a>
                                     		</div>
                                        </li>
                                        <li>
                                        	<h5>Manchester</h5>
                                        	<div class="mailingaddress">
                                    			<p>Lempor hendrerit. Phasellus quis</p>
                                         		<p>lacus diam. Sed nisl ligula,</p> 
												<p>semper in ultricies sed</p>
                                    		</div>
                                    		<div class="teleno colr">+44 123 4567 89</div>
                                     		<div class="emailaddress">
                                    		 	<a href="#">surry@universityofcollege.com</a>
                                        	</div>
                                        </li>
                                    
                                    
                                    </ul>
                                
                                </div>
                             	
                             
                             </div>--%>
                             
                             <div class="clear"></div>
                    		<!-- col1 ends -->	
                    </div>
               <!-- Col2 -->
                	<div class="col2">
                    	<%--<div class="ads">
                        	<a href="#"><img src="images/ads.gif"  alt="" /></a>
                        </div>--%>
                        <div class="ads">
                            <a href="admission.aspx"><img src="StaticImages/mba.jpg" style="width:100%;height:33%;" alt="" /></a>
                            <a href="admission.aspx"><img src="StaticImages/mca.jpg" style="width:100%;height:33%;"  alt="" /></a>
                            <a href="admission.aspx"><img src="StaticImages/bba.jpg" style="width:100%;height:33%;"  alt="" /></a>
                        </div>
                        	
                        <div class="college_gallery hideScrollbar" style="height:150px;overflow:scroll">
                            <h5 class="active" style="color:#0836cf;background:white">Downloads<a style="float:right;margin-right:5px" href="Download.aspx">View More</a></h5>
            
                            <ul style="margin-top:-20px">
                                <li>
                                    <a target="_blank" href="DownloadableFiles/Documents/Application form.pdf">
                                    <div class="thumb"><img style="width:30px;height:30px" src="StaticImages/pdflogo.png"  alt="" /></div> 
                                    <div class="description">
                                        <span style="color:black;font-weight:500;font-size:16px">Application Form</span>
      		                        </div> </a>
                                </li>
                                <li>
                                    <a target="_blank" href="DownloadableFiles/Documents/Prospectus.pdf">
                                    <div class="thumb"><img style="width:30px;height:30px" src="StaticImages/pdflogo.png"  alt="" /></div> 
                                    <div class="description">
                                        <span style="color:black;font-weight:500;font-size:16px">Prospectus</span>
      		                        </div> </a>
                                </li>
                                <%--<li>
                                    <a target="_blank" href="DownloadableFiles/Documents/AICTE Mandatory Disclosure.pdf">
                                    <div class="thumb"><img style="width:30px;height:30px" src="StaticImages/pdflogo.png"  alt="" /></div> 
                                    <div class="description">
                                        <span style="color:black;font-weight:500;font-size:16px">AICTE Mandatory Disclosure</span>
      		                        </div> </a>
                                </li>--%>
                            </ul>
                        </div>  
        
                        <div class="college_gallery hideScrollbar" style="height:260px;overflow:scroll">
                                <h5 class="active" style="color:#0836cf;background:white">Our Facilities<a style="float:right;margin-right:5px" href="Facilities.aspx">View More</a></h5>
            
                                <ul style="margin-top:-20px">
                                <li><a href="DynamicImages/ImageRecord/FacilitiesImage/Facilities1.jpg" rel="galleryimg" class="galleryimg" title="Computer Centre">
                                <div class="thumb"><img style="height:40px;width:40px;" src="DynamicImages/ImageRecord/FacilitiesImage/Facilities1.jpg" alt="" /></div> 
                                <div class="description">
                                <span style="color:#0836cf;font-weight:700;font-size:12px">Computer Centre</span><br />
                                (Posted on 17 Jan 11 , 2011)
                                </div> 
                                </a>
                                </li>
                                <li><a href="DynamicImages/ImageRecord/FacilitiesImage/Facilities2.jpg" rel="galleryimg" class="galleryimg" title="Library">
                                <div class="thumb"><img style="height:40px;width:40px;" src="DynamicImages/ImageRecord/FacilitiesImage/Facilities2.jpg" alt="" /></div> 
                                <div class="description">
                                <span style="color:#0836cf;font-weight:700;font-size:12px">Library</span><br />
                                (Posted on 17 Jan 11 , 2011)
                                </div> 
                                </a>
                                </li>
                                <li><a href="DynamicImages/ImageRecord/FacilitiesImage/Facilities3.jpg" rel="galleryimg" class="galleryimg" title="Audio Visual Hall">
                                <div class="thumb"><img style="height:40px;width:40px;" src="DynamicImages/ImageRecord/FacilitiesImage/Facilities3.jpg" alt="" /></div> 
                                <div class="description">
                                <span style="color:#0836cf;font-weight:700;font-size:12px">Audio Visual Hall</span><br />
                                (Posted on 17 Jan 11 , 2011)
                                </div> 
                                </a>
                                </li>
                                <li><a href="DynamicImages/ImageRecord/FacilitiesImage/Facilities5.jpg" rel="galleryimg" class="galleryimg" title="Cafeteria">
                                <div class="thumb"><img style="height:40px;width:40px;" src="DynamicImages/ImageRecord/FacilitiesImage/Facilities5.jpg" alt="" /></div> 
                                <div class="description">
                                <span style="color:#0836cf;font-weight:700;font-size:12px">Cafeteria</span><br />
                                (Posted on 17 Jan 11 , 2011)
                                </div> 
                                </a>
                                </li>
                                <li><a href="DynamicImages/ImageRecord/FacilitiesImage/Facilities6.jpg" rel="galleryimg" class="galleryimg" title="Medical Facilities">
                                <div class="thumb"><img style="height:40px;width:40px;" src="DynamicImages/ImageRecord/FacilitiesImage/Facilities6.jpg" alt="" /></div> 
                                <div class="description">
                                <span style="color:#0836cf;font-weight:700;font-size:12px">Medical Facilities</span><br />
                                (Posted on 17 Jan 11 , 2011)
                                </div> 
                                </a>
                                </li>
                                <li><a href="DynamicImages/ImageRecord/FacilitiesImage/Facilities7.jpg" rel="galleryimg" class="galleryimg" title="Hostel">
                                <div class="thumb"><img style="height:40px;width:40px;" src="DynamicImages/ImageRecord/FacilitiesImage/Facilities7.jpg" alt="" /></div> 
                                <div class="description">
                                <span style="color:#0836cf;font-weight:700;font-size:12px">Hostel</span><br />
                                (Posted on 17 Jan 11 , 2011)
                                </div> 
                                </a>
                                </li>
            
                                </ul>
                            </div>

                        <%--<div class="online_classes">
                                	<div class="crheading">
                                       	<h5 class="olineclasses">Online Classes</h5>
                                        <a href="#">View More</a>
                                	</div>
                                	<ul>
                                    	<li>
                                        	<div class="thumb"><a href="#"><img src="images/ourcollege1.jpg"  alt="" /></a></div> 
                                            <div class="description">
                                            	<h6><a href="#">National Sports Day</a></h6>
                                                <a class="gray" href="#"><em>(Posted on 17 Jan 11 , 2011)</em></a>
                                            </div> 
                                        </li>
                                        <li>
                                        	<div class="thumb"><a href="#"><img src="images/ourcollege2.jpg"  alt="" /></a></div> 
                                            <div class="description">
                                            	<h6><a href="#"> Annual Walk (2010)</a></h6>
                                                 <a href="#"><em>(Posted on 17 Jan 11 , 2011)</em></a>
                                            </div> 
                                        </li>
                                        <li>
                                        	<div class="thumb"><a href="#"><img src="images/ourcollege3.jpg"  alt="" /></a></div> 
                                            <div class="description">
                                            	<h6><a href="#"> Facebook Week</a></h6>
                                                 <a href="#"><em>(Posted on 17 Jan 11 , 2011)</em></a>
                                            </div> 
                                        </li>
                                        <li>
                                        	<div class="thumb"><a href="#"><img src="images/ourcollege4.jpg"  alt="" /></a></div> 
                                            <div class="description">
                                            	<h6><a href="#">Queens Day (2010)</a></h6>
                                                <a href="#"><em>(Posted on 17 Jan 11 , 2011)</em></a>
                                            </div> 
                                        </li>
                                        <li class="nobg">
                                        	<div class="thumb"><a href="#"><img src="images/ourcollege4.jpg"  alt="" /></a></div> 
                                            <div class="description">
                                            	<h6><a href="#">International Students Day</a></h6>
                                                <a href="#"><em>(Posted on 17 Jan 11 , 2011)</em></a>
                                            </div> 
                                        </li>
                                    </ul>
                                </div>
                        --%>        
                                
                    		<div class="clear"></div>	
 						<!--col2 ends -->			
              		</div>
                <div class="clear"></div>
			<!-- Slder -->	
            	<br />
    Our Corporate Partner's
    <div class="image_scroll">
        <a class="leftarrow" href="#"><img src="images/left_arrow.gif"  alt="" /></a>               	
        <div class="slider1"><marquee>
            <ul>
                <li><a href="#"><img src="StaticImages/Slider1.jpg" alt="" /></a></li>
                <li><a href="#"><img src="StaticImages/Slider2.jpg" alt="" /></a></li>
                <li><a href="#"><img src="StaticImages/Slider3.jpg" alt="" /></a></li>
                <li><a href="#"><img src="StaticImages/Slider4.jpg" alt="" /></a></li>
                <li><a href="#"><img src="StaticImages/Slider5.jpg" alt="" /></a></li>
                <li><a href="#"><img src="StaticImages/Slider6.jpg" alt="" /></a></li>
                <li><a href="#"><img src="StaticImages/Slider7.jpg" alt="" /></a></li>
                <li><a href="#"><img src="StaticImages/Slider8.jpg" alt="" /></a></li>
                <li><a href="#"><img src="StaticImages/Slider9.jpg" alt="" /></a></li>
                <li><a href="#"><img src="StaticImages/Slider10.jpg" alt="" /></a></li>
                <li><a href="#"><img src="StaticImages/Slider11.jpg" alt="" /></a></li>
                <li><a href="#"><img src="StaticImages/Slider12.jpg" alt="" /></a></li>
                <li><a href="#"><img src="StaticImages/Slider13.jpg" alt="" /></a></li>
                <li><a href="#"><img src="StaticImages/Slider14.jpg" alt="" /></a></li>
                <li><a href="#"><img src="StaticImages/Slider15.jpg" alt="" /></a></li>
                <li><a href="#"><img src="StaticImages/Slider16.jpg" alt="" /></a></li>
                <li><a href="#"><img src="StaticImages/Slider17.jpg" alt="" /></a></li>
                <li><a href="#"><img src="StaticImages/Slider18.jpg" alt="" /></a></li>
                <li><a href="#"><img src="StaticImages/Slider19.jpg" alt="" /></a></li>
                <li><a href="#"><img src="StaticImages/Slider20.jpg" alt="" /></a></li>
                <li><a href="#"><img src="StaticImages/Slider21.jpg" alt="" /></a></li>
                <li><a href="#"><img src="StaticImages/Slider22.jpg" alt="" /></a></li>    			
            </ul>
        </marquee></div>  
        <a class="rightarrow" href="#"><img src="images/right_arrow.gif"  alt="" /></a>
    </div>
            
    <br /><br />
            </div>

</asp:Content>

