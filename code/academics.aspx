<%@ Page Title="" Language="C#" MasterPageFile="~/customer.master" AutoEventWireup="true" CodeFile="academics.aspx.cs" Inherits="academics" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        table tr td,th{
            font-size:14px;
            padding:5px 15px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div id="content_section">
				<!-- Gallery -->
                	<div class="gallery">
                    	<div class="gallery_top">
                        	<div class="gallery_heading" style="width:960px">
                            	<h2>Academics</h2>

                            </div>
                            <div class="select_gallery">
                            	<%--<a  class="photo pactive" href="#">&nbsp;</a>--%>
                            	<%--<a class="movie " href="#">&nbsp;</a>--%>
                            </div>
                            <div class="clear"></div>
                        </div>
                    	<!-- Col1 -->
                        	<div class="categorydiv">
                            	<ul>
                                	<li><a class="selected" href="#academics">Academics</a></li>
                                    <li><a href="#u">The University</a></li>
                                    <li><a href="#mba">MBA Curriculum &amp; Scheme</a></li>
                                    <li><a href="#mca">MCA Course Structure</a></li>
                                    <li><a href="#b">Beyond Curriculum</a></li>
                                    <li><a href="contactUs.aspx">ContactUs</a></li>
                                </ul>
                            </div>
                    		<div class="thumbdiv hideScrollbar" style="height:720px;overflow:scroll;scroll-behavior:smooth;">
                                
                                <div style="text-align:justify">
                                    <div id="academics">
                                        <div class="content_heading">
                                            <div class="heading"><span style="color:#0086b2;font-weight:600;font-size:16px">Teaching Methodology</span> </div>
                                        </div>
                                        <p>A balanced mix of theory and practice with special emphasis on result oriented application of knowledge is the basis of MR DAV institute of management studies teaching which is participating in nature.</p>
                                        
                                        <div class="content_heading">
                                            <div class="heading"><span style="color:#0086b2;font-weight:600;font-size:16px">Cross functional learning at MR DAV IMS</span> </div>
                                        </div>
                                        <p>For an in-depth understanding an encouraging a strategic perspective. The course curriculum focuses a management system, which integrated knowledge across al major functional area.</p>
                                        
                                        <div class="content_heading">
                                            <div class="heading"><span style="color:#0086b2;font-weight:600;font-size:16px">Applied problem solving</span> </div>
                                        </div>
                                        <p>To develop the conceptual skills to identify, formulation a solve problems indigenously students have to undertake Case Studies and Simulation Exercise. Cases are generously used in illustration the contextual setting and information inadequacy that characterizes situation in filed like Management information system .System Analysis and Design and Software Engineering. This focus decision making under simulation real condition and highlight the fact that managerial situation are far more complex than what real time in an organization. Guest Lectures by practicing managers, professional, academicians etc.</p><br />
                                        <p>At MR DAV institute of Management Studies the teaching methodology comprise lecture by core faculty as well as eminent personalities from chosen field of expertise, case studies, group discussions, database, seminars role plays business games simulation exercise. Educational visits, research projects, workshops and industrial visits. Special emphasis is laid on Summer Training.</p><br />
                                        <p>For the students of final year institute emphasis on personality Development Program these lectures are delivered by our experienced faculty as well as member reputed Corporate Trainers.</p>
                                        
                                        <br /><br />
                                        
                                    </div>

                                    <div id="u">
                                        <div class="content_heading">
                                        <div class="heading"><span style="color:#89b220 !important;font-weight:700;font-size:18px">M.D. University, Rohtak (Haryana)</span> </div>
                                        <%--<div class="share"><a  href="#">Share with friends</a></div>--%>
                                        </div>
                                        <p>The M.D. University, Rohtak devoted itself to Professional education and research with a special emphasis on life science, environmental and ecological sciences in the year 1976. However, Haryana Government gazette notification dated 8th November, 1978 brought about a change in character of the university and assumed the character of a Teaching-cum-affiliating University. All policies and programmes of UGC/Govt. of India/State Govt. received from time to time are fully implemented in its letter and sprit.</p>
                                        
                                        <p>
                                            The University Act provides for the following faculties:<br />
                                            <ol>
											<li>Faculty of Computer Science</li>
											<li>Faculty of Physical Science</li>
											<li>Faculty of Humanities</li>
											<li>Faculty of Engineering</li>
											<li>Faculty of Management</li>
											<li>Faculty ofAyurved &amp; Unani System of Medicines</li>
											<li>Faculty of Life Science</li>
											<li>Faculty of Medical Science</li>
											<li>Faculty of Education</li>
											<li>Faculty of Social Science</li>
											<li>Faculty of Commerce</li>
										</ol>
                                        </p>
                                        </div>
                                    <br />
                                    
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
                                    <div id="mba">
                                        <div class="content_heading">
                                        <div class="heading"><span style="color:#89b220;font-weight:700;font-size:18px">MBA Curriculum And Scheme</span> </div>
                                        <%--<div class="share"><a  href="#">Share with friends</a></div>--%>
                                        </div>
                                        
                                        <span style="font-weight:800">
                                            <asp:Label ID="lbl1" Visible="false" runat="server" Text="0"></asp:Label>
                                            <asp:LinkButton ID="mba1" runat="server" OnClick="mba1_Click">1st Semester</asp:LinkButton>
                                        </span>
                                        <div id="div1" style="margin-top:8px" runat="server" visible="false">    
                                                <table border="2" cellspacing="0">
                                                    <tr><th>Code</th><th>Course-Info</th></tr>
                                                    <tr><td>2101</td><td>Management Concepts & Applications</td></tr>
                                                    <tr><td>2102</td><td>Managerial Economics</td></tr>
                                                    <tr><td>2103</td><td>Organisational Behaviour</td></tr>
                                                    <tr><td>2104</td><td>Quantitative Analysis</td></tr>
                                                    <tr><td>2105</td><td>Accounting for Managers</td></tr>
                                                    <tr><td>2106</td><td>Computer Applications in Management</td></tr>
                                                    <tr><td>2107</td><td>Business Communication Skills</td></tr>
                                                    <tr><td>2108</td><td>Business Environment</td></tr>
                                                </table>
                                        </div>
                                        <br />
                                        <span style="font-weight:800">
                                            <asp:Label ID="lbl2" Visible="false" runat="server" Text="0"></asp:Label>
                                            <asp:LinkButton ID="mba2" runat="server" OnClick="mba2_Click">2nd Semester</asp:LinkButton>
                                        </span>
                                        <div id="div2" style="margin-top:8px" runat="server" visible="false">    
                                                <table border="2" cellspacing="0">
                                                    <tr><th>Code</th><th>Course-Info</th></tr>
                                                    <tr><td>2201</td><td>Financial Management</td></tr>
                                                    <tr><td>2202</td><td>Marketing Management</td></tr>
                                                    <tr><td>2203</td><td>Human Resource Management</td></tr>
                                                    <tr><td>2204</td><td>Operations & Supply Chain Management</td></tr>
                                                    <tr><td>2205</td><td>Business Research Methods</td></tr>
                                                    <tr><td>2206</td><td>Computer Networks & Internet</td></tr>
                                                    <tr><td>2207</td><td>Operations Research</td></tr>
                                                    <tr><td>2208</td><td>International Business</td></tr>
                                                </table>
                                        </div>
                                        <br /><span>Core Papers</span>
                                        <br />
                                        <span style="font-weight:800">
                                            <asp:Label ID="lbl3" Visible="false" runat="server" Text="0"></asp:Label>
                                            <asp:LinkButton ID="mba3" runat="server" OnClick="mba3_Click">3rd Semester</asp:LinkButton>
                                        </span>
                                        <div id="div3" style="margin-top:8px" runat="server" visible="false">    
                                                <table border="2" cellspacing="0">
                                                    <tr><th>Code</th><th>Course-Info</th></tr>
                                                    <tr><td>2301</td><td>Strategic Management</td></tr>
                                                    <tr><td>2302</td><td>Management Information System</td></tr>
                                                    <tr><td>2303</td><td>Business Legislation</td></tr>
                                                    <tr><td>2304</td><td>Summer Training Report</td></tr>
                                                </table>
                                        </div>
                                        <br />
                                        <span style="font-weight:800">
                                            <asp:Label ID="lbl4" Visible="false" runat="server" Text="0"></asp:Label>
                                            <asp:LinkButton ID="mba4" runat="server" OnClick="mba4_Click">4th Semester</asp:LinkButton>
                                        </span>
                                        <div id="div4" style="margin-top:8px" runat="server" visible="false">    
                                                <table border="2" cellspacing="0">
                                                    <tr><th>Code</th><th>Course-Info</th></tr>
                                                    <tr><td>2401</td><td>Enterpreneurship</td></tr>
                                                    <tr><td>2402</td><td>E-Commerce</td></tr>
                                                    <tr><td>2403</td><td>Project Report</td></tr>
                                                    <tr><td>2404</td><td>Comprehensive Viva-voice</td></tr>
                                                </table>
                                        </div>
                                        
                                        <br /><br />                                        
                                        <p>
                                            Specializations Offered In 3rd &amp; 4th Semester
                                            <ol>
                                                <li>
                                                    <span style="font-weight:800">
                                                        <asp:Label ID="lbl5" Visible="false" runat="server" Text="0"></asp:Label>
                                                        <asp:LinkButton ID="mba5" runat="server" OnClick="mba5_Click">Human Resource Management</asp:LinkButton>
                                                    </span>
                                                    <div id="div5" style="margin-top:8px" runat="server" visible="false">    
                                                            <table border="2" cellspacing="0">
                                                                <tr><th>Code</th><th>Course-Info</th></tr>
                                                                <tr><td>2305</td><td>Performance Management</td></tr>
                                                                <tr><td>2306</td><td>Training & Development</td></tr>
                                                                <tr><td>2307</td><td>Organisational Change and Development</td></tr>
                                                                <tr><td>2308</td><td>Compensation Management</td></tr>
                                                                <tr><td>2405</td><td>Talent Management</td></tr>
                                                                <tr><td>2406</td><td>Industrial Relations and Labour Legislations</td></tr>
                                                                <tr><td>2407</td><td>Strategic Human Resource Management</td></tr>
                                                                <tr><td>2408</td><td>Cross Cultural Human Resource Mgt.</td></tr>
                                                            </table>
                                                    </div>
                                        
                                                </li>
                                                <li>
                                                    <span style="font-weight:800">
                                                        <asp:Label ID="lbl6" Visible="false" runat="server" Text="0"></asp:Label>
                                                        <asp:LinkButton ID="mba6" runat="server" OnClick="mba6_Click">Finance</asp:LinkButton>
                                                    </span>
                                                    <div id="div6" style="margin-top:8px" runat="server" visible="false">    
                                                            <table border="2" cellspacing="0">
                                                                <tr><th>Code</th><th>Course-Info</th></tr>
                                                                <tr><td>2309</td><td>Mgt. of Financial Services and Institutions</td></tr>
                                                                <tr><td>2310</td><td>Project Mgt. and Infrastructure Finance</td></tr>
                                                                <tr><td>2311</td><td>Strategic Cost Management and Control</td></tr>
                                                                <tr><td>2312</td><td>Multinational Financial Management</td></tr>
                                                                <tr><td>2409</td><td>Taxation Laws and Planning</td></tr>
                                                                <tr><td>2410</td><td>Management of Banking and Insurance</td></tr>
                                                                <tr><td>2411</td><td>Security Analysis and Portfolio Mgt.</td></tr>
                                                                <tr><td>2412</td><td>Financial Derivatives</td></tr>
                                                            </table>
                                                    </div>
                                        
                                                </li>
                                                <li>
                                                    <span style="font-weight:800">
                                                        <asp:Label ID="lbl7" Visible="false" runat="server" Text="0"></asp:Label>
                                                        <asp:LinkButton ID="mba7" runat="server" OnClick="mba7_Click">Information Technology</asp:LinkButton>
                                                    </span>
                                                    <div id="div7" style="margin-top:8px" runat="server" visible="false">    
                                                            <table border="2" cellspacing="0">
                                                                <tr><th>Code</th><th>Course-Info</th></tr>
                                                                <tr><td>2313</td><td>Object Oriented Analysis and Design</td></tr>
                                                                <tr><td>2314</td><td>Programming in Oracle 50 - 50</td></tr>
                                                                <tr><td>2315</td><td>Data Base Management System</td></tr>
                                                                <tr><td>2316</td><td>Multimedia and Web Development</td></tr>
                                                                <tr><td>2413</td><td>Software Engineering</td></tr>
                                                                <tr><td>2414</td><td>Systems Analysis and Design</td></tr>
                                                                <tr><td>2415</td><td>Artificial Intelligence</td></tr>
                                                                <tr><td>2416</td><td>Programming in JAVA</td></tr>
                                                            </table>
                                                    </div>
                                        
                                                </li>
                                                <li>
                                                    <span style="font-weight:800">
                                                        <asp:Label ID="lbl8" Visible="false" runat="server" Text="0"></asp:Label>
                                                        <asp:LinkButton ID="mba8" runat="server" OnClick="mba8_Click">International Business</asp:LinkButton>
                                                    </span>
                                                    <div id="div8" style="margin-top:8px" runat="server" visible="false">    
                                                            <table border="2" cellspacing="0">
                                                                <tr><th>Code</th><th>Course-Info</th></tr>
                                                                <tr><td>2317</td><td>Foreign Exchange Management</td></tr>
                                                                <tr><td>2318</td><td>International Marketing</td></tr>
                                                                <tr><td>2319</td><td>Multinational Banking</td></tr>
                                                                <tr><td>2320</td><td>International Trade Theory and Practice</td></tr>
                                                                <tr><td>2417</td><td>Global Strategic Management</td></tr>
                                                                <tr><td>2418</td><td>International Financial Management</td></tr>
                                                                <tr><td>2419</td><td>International Logistics</td></tr>
                                                                <tr><td>2420</td><td>International Accounting</td></tr>
                                                            </table>
                                                    </div>
                                        
                                                </li>
                                                <li>
                                                    <span style="font-weight:800">
                                                        <asp:Label ID="lbl9" Visible="false" runat="server" Text="0"></asp:Label>
                                                        <asp:LinkButton ID="mba9" runat="server" OnClick="mba9_Click">Marketing</asp:LinkButton>
                                                    </span>
                                                    <div id="div9" style="margin-top:8px" runat="server" visible="false">    
                                                            <table border="2" cellspacing="0">
                                                                <tr><th>Code</th><th>Course-Info</th></tr>
                                                                <tr><td>2321</td><td>Brand Management</td></tr>
                                                                <tr><td>2322</td><td>Integrated Marketing Communication</td></tr>
                                                                <tr><td>2323</td><td>Service Marketing</td></tr>
                                                                <tr><td>2324</td><td>Consumer Behaviour</td></tr>
                                                                <tr><td>2421</td><td>Customer Relationship Management</td></tr>
                                                                <tr><td>2422</td><td>Sales and Distribution Management</td></tr>
                                                                <tr><td>2423</td><td>Retail Management</td></tr>
                                                                <tr><td>2424</td><td>Business Marketing Management</td></tr>
                                                            </table>
                                                    </div>
                                        
                                                </li>
											</ol>
                                        </p>
                                        <br />
                                        <%--<p>
                                            Specializations Offered In 4th Semester
                                            <ol>
                                                <li>
                                                    <span style="font-weight:800">
                                                        <asp:Label ID="lbl10" Visible="false" runat="server" Text="0"></asp:Label>
                                                        <asp:LinkButton ID="mba10" runat="server" OnClick="mba10_Click">Human Resource Management</asp:LinkButton>
                                                    </span>
                                                    <div id="div10" style="margin-top:8px" runat="server" visible="false">    
                                                            <table border="2" cellspacing="0">
                                                                <tr><th>Code</th><th>Course-Info</th></tr>
                                                                <tr><td>2405</td><td>Talent Management</td></tr>
                                                                <tr><td>2406</td><td>Industrial Relations and Labour Legislations</td></tr>
                                                                <tr><td>2407</td><td>Strategic Human Resource Management</td></tr>
                                                                <tr><td>2408</td><td>Cross Cultural Human Resource Mgt.</td></tr>
                                                            </table>
                                                    </div>
                                        
                                                </li>
                                                <li>
                                                    <span style="font-weight:800">
                                                        <asp:Label ID="lbl11" Visible="false" runat="server" Text="0"></asp:Label>
                                                        <asp:LinkButton ID="mba11" runat="server" OnClick="mba11_Click">Finance</asp:LinkButton>
                                                    </span>
                                                    <div id="div11" style="margin-top:8px" runat="server" visible="false">    
                                                            <table border="2" cellspacing="0">
                                                                <tr><th>Code</th><th>Course-Info</th></tr>
                                                                <tr><td>2409</td><td>Taxation Laws and Planning</td></tr>
                                                                <tr><td>2410</td><td>Management of Banking and Insurance</td></tr>
                                                                <tr><td>2411</td><td>Security Analysis and Portfolio Mgt.</td></tr>
                                                                <tr><td>2412</td><td>Financial Derivatives</td></tr>
                                                            </table>
                                                    </div>
                                        
                                                </li>
                                                <li>
                                                    <span style="font-weight:800">
                                                        <asp:Label ID="lbl12" Visible="false" runat="server" Text="0"></asp:Label>
                                                        <asp:LinkButton ID="mba12" runat="server" OnClick="mba12_Click">Information Technology</asp:LinkButton>
                                                    </span>
                                                    <div id="div12" style="margin-top:8px" runat="server" visible="false">    
                                                            <table border="2" cellspacing="0">
                                                                <tr><th>Code</th><th>Course-Info</th></tr>
                                                                <tr><td>2413</td><td>Software Engineering</td></tr>
                                                                <tr><td>2414</td><td>Systems Analysis and Design</td></tr>
                                                                <tr><td>2415</td><td>Artificial Intelligence</td></tr>
                                                                <tr><td>2416</td><td>Programming in JAVA</td></tr>
                                                            </table>
                                                    </div>
                                        
                                                </li>
                                                <li>
                                                    <span style="font-weight:800">
                                                        <asp:Label ID="lbl13" Visible="false" runat="server" Text="0"></asp:Label>
                                                        <asp:LinkButton ID="mba13" runat="server" OnClick="mba13_Click">International Business</asp:LinkButton>
                                                    </span>
                                                    <div id="div13" style="margin-top:8px" runat="server" visible="false">    
                                                            <table border="2" cellspacing="0">
                                                                <tr><th>Code</th><th>Course-Info</th></tr>
                                                                <tr><td>2417</td><td>Global Strategic Management</td></tr>
                                                                <tr><td>2418</td><td>International Financial Management</td></tr>
                                                                <tr><td>2419</td><td>International Logistics</td></tr>
                                                                <tr><td>2420</td><td>International Accounting</td></tr>
                                                            </table>
                                                    </div>
                                        
                                                </li>
                                                <li>
                                                    <span style="font-weight:800">
                                                        <asp:Label ID="lbl14" Visible="false" runat="server" Text="0"></asp:Label>
                                                        <asp:LinkButton ID="mba14" runat="server" OnClick="mba14_Click">Marketing</asp:LinkButton>
                                                    </span>
                                                    <div id="div14" style="margin-top:8px" runat="server" visible="false">    
                                                            <table border="2" cellspacing="0">
                                                                <tr><th>Code</th><th>Course-Info</th></tr>
                                                                <tr><td>2421</td><td>Customer Relationship Management</td></tr>
                                                                <tr><td>2422</td><td>Sales and Distribution Management</td></tr>
                                                                <tr><td>2423</td><td>Retail Management</td></tr>
                                                                <tr><td>2424</td><td>Business Marketing Management</td></tr>
                                                            </table>
                                                    </div>
                                        
                                                </li>
											</ol>
                                        </p>--%>
                                        
                                    </div>
                                    </ContentTemplate></asp:UpdatePanel>
                                    <br /><br />
                                    <asp:UpdatePanel ID="UpdatePanel2" runat="server"><ContentTemplate>
                                    <div id="mca">
                                        <div class="content_heading">
                                        <div class="heading"><span style="color:#89b220 !important;font-weight:800;font-size:16px">MCA Course Structure</span> </div>
                                        </div>
                                        <span style="font-weight:800">
                                            <asp:Label ID="Label1" Visible="false" runat="server" Text="0"></asp:Label>
                                            <asp:LinkButton ID="mca1" runat="server" OnClick="mca1_Click">1st Semester</asp:LinkButton>
                                        </span>
                                        <div id="div15" style="margin-top:8px" runat="server" visible="false">    
                                                <table border="2" cellspacing="0">
                                                    <tr><th>Code</th><th>Course-Info</th></tr>
                                                    <tr><td>MCA-101</td><td>Mathematical Foundation of Computer Science</td></tr>
                                                    <tr><td>MCA-102</td><td>Computer Fundamentals & Programming in C</td></tr>
                                                    <tr><td>MCA-103</td><td>Digital Design</td></tr>
                                                    <tr><td>MCA-104</td><td>Internet and Web Designing</td></tr>
                                                    <tr><td>MCA-105</td><td>Object Oriented Programming Using C++</td></tr>
                                                    <tr><td>MCA-106</td><td>Software Lab-1<br /><ol style="margin-left:20px"><li>> Programming in C</li><li>> Web Programming Using HTML</li></ol></td></tr>
                                                    <tr><td>MCA-107</td><td>Software Lab-2<br /><ol style="margin-left:20px"><li>> Programming in C++</li><li>> Use of MS-Office</li></ol></td></tr>
                                                    <tr><td>MCA-108</td><td>Soft skills-I</td></tr>
                                                </table>
                                        </div>
                                        <br />
                                        
                                        <span style="font-weight:800">
                                            <asp:Label ID="Label2" Visible="false" runat="server" Text="0"></asp:Label>
                                            <asp:LinkButton ID="mca2" runat="server" OnClick="mca2_Click">2nd Semester</asp:LinkButton>
                                        </span>
                                        <div id="div16" style="margin-top:8px" runat="server" visible="false">    
                                                <table border="2" cellspacing="0">
                                                    <tr><th>Code</th><th>Course-Info</th></tr>
                                                    <tr><td>MCA-201</td><td>Data Structures</td></tr>
                                                    <tr><td>MCA-202</td><td>Computer Organisation & Architecture</td></tr>
                                                    <tr><td>MCA-203</td><td>Computer Based Management System & E-Commerce</td></tr>
                                                    <tr><td>MCA-204</td><td>Data Base Management Systems</td></tr>
                                                    <tr><td>MCA-205</td><td>Principles of System Programming & Compiler Design</td></tr>
                                                    <tr><td>MCA-206</td><td>Software Lab-3<br /><ol style="margin-left:20px"><li>> Data Structure implementation in C/C++</li><li>> Programming in 8086/88/80x6 Assembly</li></ol></td></tr>
                                                    <tr><td>MCA-207</td><td>Software Lab-4<br /><ol style="margin-left:20px"><li>> Oracle & SQL Prog.</li><li>> System Programming Using C/C++</li></ol></td></tr>
                                                </table>
                                        </div>
                                        <br />
                                        
                                        <span style="font-weight:800">
                                            <asp:Label ID="Label3" Visible="false" runat="server" Text="0"></asp:Label>
                                            <asp:LinkButton ID="mca3" runat="server" OnClick="mca3_Click">3rd Semester</asp:LinkButton>
                                        </span>
                                        <div id="div17" style="margin-top:8px" runat="server" visible="false">    
                                                <table border="2" cellspacing="0">
                                                    <tr><th>Code</th><th>Course-Info</th></tr>
                                                    <tr><td>MCA-301</td><td>Computer Graphics & Multimedia</td></tr>
                                                    <tr><td>MCA-302</td><td>Operating Systems</td></tr>
                                                    <tr><td>MCA-303</td><td>Artificial Intelligence & Expert Systems</td></tr>
                                                    <tr><td>MCA-304</td><td>Data Communication & Computer Networks</td></tr>
                                                    <tr><td>MCA-305</td><td>Object Technology</td></tr>
                                                    <tr><td>MCA-306</td><td>Software Lab-5<br /><ol style="margin-left:20px"><li>> Graphics Programming in C/C++.</li><li>> Use of MatLab</li><li>> PROLOG Programming</li></ol></td></tr>
                                                    <tr><td>MCA-307</td><td>Software Lab-6<br /><ol style="margin-left:20px"><li>> Java Programming</li></ol></td></tr>
                                                </table>
                                        </div>
                                        <br />
                                        <span style="font-weight:800">
                                            <asp:Label ID="Label4" Visible="false" runat="server" Text="0"></asp:Label>
                                            <asp:LinkButton ID="mca4" runat="server" OnClick="mca4_Click">4th Semester</asp:LinkButton>
                                        </span>
                                        <div id="div18" style="margin-top:8px" runat="server" visible="false">    
                                                <table border="2" cellspacing="0">
                                                    <tr><th>Code</th><th>Course-Info</th></tr>
                                                    <tr><td>MCA-401</td><td>Advanced Java Programming</td></tr>
                                                    <tr><td>MCA-402</td><td>Data Warehousing & Mining</td></tr>
                                                    <tr><td>MCA-403</td><td>Software Engineering</td></tr>
                                                    <tr><td>MCA-404</td><td>Advanced Database Systems</td></tr>
                                                    <tr><td>MCA-405</td><td>Visual Languages Programming</td></tr>
                                                    <tr><td>MCA-406</td><td>Software Lab-7<br /><ol style="margin-left:20px"><li>> Advance Java Programming</li></ol></td></tr>
                                                    <tr><td>MCA-407</td><td>Software Lab-8<br /><ol style="margin-left:20px"><li>> Visual Programming Using VB</li><li>> ADS (Working with MS SQL Server)</li></ol></td></tr>
                                                    <tr><td>MCA-408</td><td>Minor Project-I</td></tr>
                                                </table>
                                        </div>
                                        <br />
                                        <span style="font-weight:800">
                                            <asp:Label ID="Label5" Visible="false" runat="server" Text="0"></asp:Label>
                                            <asp:LinkButton ID="mca5" runat="server" OnClick="mca5_Click">5th Semester</asp:LinkButton>
                                        </span>
                                        <div id="div19" style="margin-top:8px" runat="server" visible="false">    
                                                <table border="2" cellspacing="0">
                                                    <tr><th>Code</th><th>Course-Info</th></tr>
                                                    <tr><td>MCA-501</td><td>Advanced Technology</td></tr>
                                                    <tr><td>MCA-502</td><td>Software Testing & Quality Assurance</td></tr>
                                                    <tr><td>MCA-503</td><td>Windows Programming & Visual C++</td></tr>
                                                    <tr><td>MCA-504</td><td>Elective – I* Soft Computing</td></tr>
                                                    <tr><td>MCA-505</td><td>Elective – II* Computer Security</td></tr>
                                                    <tr><td>MCA-506</td><td>Software Lab-9<br /><ol style="margin-left:20px"><li>> .NET Programming Using C# and/or VB.NET</li></ol></td></tr>
                                                    <tr><td>MCA-507</td><td>Software Lab-10<br /><ol style="margin-left:20px"><li>> Windows Programming Using Visual C++</li></ol></td></tr>
                                                    <tr><td>MCA-508</td><td>Minor Project-II</td></tr>
                                                    <tr><td colspan="2">
                                                        <h5>ELECTIVE – I*</h5>
                                                        <p>
                                                            At present only ‘Soft Computing’ course (MCA-504) is being offered under Elective-I but depending upon the availability of expertise and the required infrastructure determined by the University, any one of the following subjects could be offered in place of ‘Soft Computing’.<br /><br />
                                                            <ol style="margin-left:20px">
                                                                <li>> Simulation and Modeling</li>
                                                                <li>> Theory of Computation</li>
                                                                <li>> Unix and Network Programming</li>
                                                                <li>> Enterprise Resource Planning</li>
                                                                <li>> Object Oriented Analysis and Design</li>
                                                                <li>> Analysis & Design of Algorithms</li>
                                                                <li>> Multimedia and Its Applications</li>
                                                                <li>> Distributed Computing</li>
                                                            </ol>
                                                        </p>
                                                    </td></tr>
                                                    <tr><td colspan="2">
                                                        <h5>ELECTIVE – II*</h5>
                                                        <p>
                                                            At present only ‘Computer Security’ course (MCA-505) is being offered under Elective-II but depending upon the availability of expertise and the required infrastructure determined by the University, any one of the following subjects could be offered in place of ‘Computer Security’.<br /><br />
                                                            <ol style="margin-left:20px">
                                                                <li>> Digital Image Processing</li>
                                                                <li>> Software Project Management</li>
                                                                <li>> Embedded Systems</li>
                                                                <li>> Bio-Informatics</li>
                                                                <li>> Mobile Computing</li>
                                                                <li>> Neural Networks</li>
                                                                <li>> Perl Programming</li>
                                                            </ol>
                                                        </p>
                                                    </td></tr>
                                                </table>
                                        </div>
                                        <br />
                                        <span style="font-weight:800">
                                            <asp:Label ID="Label6" Visible="false" runat="server" Text="0"></asp:Label>
                                            <asp:LinkButton ID="mca6" runat="server" OnClick="mca6_Click">6th Semester</asp:LinkButton>
                                        </span>
                                        <div id="div20" style="margin-top:8px" runat="server" visible="false">    
                                                <table border="2" cellspacing="0">
                                                    <tr><th>Code</th><th>Course-Info</th></tr>
                                                    <tr><td>MCA-601</td><td>Major Project</td></tr>
                                                    </table>
                                        </div>
                                        <br /><br />                                        
                                    </div>
                                    </ContentTemplate></asp:UpdatePanel>
                                    <br /><br />

                                    <div id="b">
                                        <div class="content_heading">
                                            <div class="heading"><span style="color:#0086b2;font-weight:600;font-size:16px">Student Council</span> </div>
                                        </div>
                                        <p>“Excellence is our passion. Discipline, Education and Devotion out motto” instilled with these ideals, the students council of MR DAV IMS work towards fostering leadership quality and team spirit. An emphasis is laid upon total personality development and work based learning. The Council is engaged into organization extra-curricular activities providing opportunities to work in real life situations through its various arms.</p>
                                        
                                        <div class="content_heading">
                                            <div class="heading"><span style="color:#0086b2;font-weight:600;font-size:16px">Academic Programme Committee</span> </div>
                                        </div>
                                        <p>Chaired by the Dean Academics of the program, the committee looks after all the aspects of the academic program right from the continual evolution of the syllabus & contents of the specific courses for managing the actual logistics of the course.</p>
                                        
                                        <div class="content_heading">
                                            <div class="heading"><span style="color:#0086b2;font-weight:600;font-size:16px">Cultural Committee</span> </div>
                                        </div>
                                        <p>Cultural committee takes responsibility of organization Various Culture Events, Business School festival and Caters to the entertainment needs to the students</p>
                                        
                                        <div class="content_heading">
                                            <div class="heading"><span style="color:#0086b2;font-weight:600;font-size:16px">Excursion Committee</span> </div>
                                        </div>
                                        <p>Excursion committee organizes industrial tours to expose the students to observe the core areas of business prevailing in different industrial organization. The students in the past visited Maruti Udyog Ltd. Jaipur Stock Exchange, Mother Dairy Plant, Parle, and Hero-Honda to name of few.</p>
                                        
                                        <div class="content_heading">
                                            <div class="heading"><span style="color:#0086b2;font-weight:600;font-size:16px">Placement Committee</span> </div>
                                        </div>
                                        <p>Perhaps the greatest manifestation of the student’s manager participation comes in the form of placement committee. The placement committee look after all the activities related to the placement our students are getting placed in some of the most sought after companies in the country and abroad.</p>
                                        
                                        <div class="content_heading">
                                            <div class="heading"><span style="color:#0086b2;font-weight:600;font-size:16px">Business Contact</span> </div>
                                        </div>
                                        <p>The committee has contribute immensely to the richness of the course by organizing seminar, debates on current issues and buring topics to which eminent personalities are invited. At national seminars, students add to their planning and organizing skills.</p>
                                        
                                        <div class="content_heading">
                                            <div class="heading"><span style="color:#0086b2;font-weight:600;font-size:16px">Alumni Committee</span> </div>
                                        </div>
                                        <p>The alumni committee looks after all the formal and informal interactions between alumni and the institute, and also maps the progress of MR DAV IMS in their vocation. It works with a view to maintain a continuous dialogue between alumni and the alma-mater</p>
                                        
                                        <div class="content_heading">
                                            <div class="heading"><span style="color:#0086b2;font-weight:600;font-size:16px">Marketing Club</span> </div>
                                        </div>
                                        <p>The Club seeks to expose the MR DAV community to a variety of issues involved with Marketing of both goods and services. It provides a platform for holding presentation by students managers on various marketing aspects</p>
                                        
                                        <div class="content_heading">
                                            <div class="heading"><span style="color:#0086b2;font-weight:600;font-size:16px">Finance forum</span> </div>
                                        </div>
                                        <p>The Forum provides an opportunity to stay abreast of changing Financial Services Scenario. Other activities organization of Stock Exchange Simulation games, General budget recap etc.</p>
                                        
                                    </div>
                                    <br /><br />





                                </div>
                                
                            <div class="hdiv">&nbsp;</div>
                            </div>
                            
                    </div>    	
                <div class="clear"></div>
		    </div>
</asp:Content>

