<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/main.css" rel="stylesheet" />
</head>
<body>
<%
out.println("<div>");
out.println("        <header>");
out.println("            <div style=\"img\">");
out.println("                <img class=\"img1\" src=\"images/img1-2.jpg\">");
out.println("            </div>");
out.println("            <nav class=\"inline\">");
out.println("                <ul class=\"menu\">");
out.println("                    <li><a style=\"color:#f9fd04\">綜合討論</a></li>");
out.println("                    <li><a href=\"html/[知識].html\">知識</a></li>");
out.println("                    <li><a href=\"html/[揪團].html\">揪團</a></li>");
out.println("                    <li><a href=\"html/[雜症求助].html\">雜症求助</a></li>");
out.println("                    <li><a href=\"html/[失物招領] .html\">失物招領</a></li>");
out.println("                </ul>");
out.println("            </nav>");
out.println("            ");
out.println("        </header>");
out.println("    </div>");
out.println("    <!-- <main> -->");
out.println("        <div class=\"board\">");
out.println("            <div class=\"listTable_thead\">");
out.println("                <div class=\"listTable_tr listTable_tr_1\">");
out.println("                    <div class=\"listTable_td\">");
out.println("                        <span>主題</span></div>");
out.println("                        <div class=\"listTable_td listTable_td_time\">");
out.println("                    <span>發佈時間</span></div>");
out.println("                    <div class=\"listTable_td listTable_td_time\">");
out.println("                        <span>最後討論時間</span></div>");
out.println("                        <div class=\"listTable_td listTable_td_time\">");
out.println("                            <span>回復次數</span></div>");
out.println("                        </div>");
out.println("                    </div>");
out.println("                    ");
out.println("                    <article>");
out.println("                        ");
out.println("                        ");
out.println("                        <!-- to do -->");
out.println("                        <div class=\"listTable_tbody\">");
out.println("                            <div class=\"listTable_tr\">");
out.println("                                <div class=\"listTable_td\">");
out.println("                                    <div>");
out.println("                                        ");
out.println("                                        <a href=\"html/公告.html\" class=\"c_link u_ellipsis\">公告</a>");
out.println("                                    </div>");
out.println("                                </div>");
out.println("                                <div class=\"listTable_td listTable_td_time\">");
out.println("                                    <a href=\"發文者\" class=\"c_link u_ellipsis\">user_Cheng</a>");
out.println("                                    <a class=\"\">2020/10/03</a>");
out.println("                                </div>");
out.println("                                <div class=\"listTable_td listTable_td_time\">");
out.println("                                    <a href=\"回復人\" class=\"c_link u_ellipsis\">user_Cheng</a>");
out.println("                                    <a class=\"\">2020/10/04</a>");
out.println("                                </div>");
out.println("                                <div class=\"listTable_td listTable_td_count\">");
out.println("                                    <a class=\"\">回應次數:25</a>");
out.println("                                </div>");
out.println("                            </div>");
out.println("                            ");
out.println("                            <div class=\"listTable_tr\">");
out.println("                                <div class=\"listTable_td\">");
out.println("                                    <a href=\"html/版規.html\" class=\"c_link u_ellipsis\">版規</a>");
out.println("                                </div>");
out.println("                                <div class=\"listTable_td listTable_td_time\">");
out.println("                                    <a href=\"\" class=\"c_link u_ellipsis\">user_001</a>");
out.println("                                    <a class=\"\">2020/10/03</a>");
out.println("                                </div>");
out.println("                                <div class=\"listTable_td listTable_td_time\">");
out.println("                                    <a href=\"回復人\" class=\"c_link u_ellipsis\">user_001</a>");
out.println("                                    <a class=\"\">2020/10/05</a>");
out.println("                                </div>");
out.println("                                <div class=\"listTable_td listTable_td_count\">");
out.println("                                    <a class=\"\">回應次數:5</a>");
out.println("                                </div>");
out.println("                            </div>");
out.println("                            ");
out.println("                            <div class=\"listTable_tr\">");
out.println("                                <div class=\"listTable_td\">");
out.println("                                    <a href=\"html/討論區.html\" class=\"c_link u_ellipsis\">討論區</a>");
out.println("                                </div>");
out.println("                                <div class=\"listTable_td listTable_td_time\">");
out.println("                                    <a href=\"發文者\" class=\"c_link u_ellipsis\">蔡英文</a>");
out.println("                                    <a class=\"\">2020/10/02</a>");
out.println("                                </div>");
out.println("                                <div class=\"listTable_td listTable_td_time\">");
out.println("                                    <a href=\"回復人\" class=\"c_link u_ellipsis\">賴清德</a>");
out.println("                                    <a class=\"\">2020/10/06</a>");
out.println("                                </div>");
out.println("                                <div class=\"listTable_td listTable_td_count\">");
out.println("                                    <a class=\"\">回應次數111</a>");
out.println("                                    <!-- <a href='https://www.hit-counts.com/'><img src='http://www.hit-counts.com/counter.php?t=MTQ1MjM4OQ==' border='0' alt='logo creation'></a><BR><a href='https://www.glowgraphics.co.uk/'>logo creation</a> -->");
out.println("                                    </div>");
out.println("                                </div>");
out.println("                            </div>");
out.println("                        </article>");
out.println("                        <nav class=\"inline1\">");
out.println("                            <div class=\"menu\">");
out.println("                                <a href=\"../fragment/frame.jsp\">返回躍進者</a>");
out.println("                            </div>");
out.println("                        </nav>");
out.println("                        <div class=\"st02\">");
out.println("                            <button type=\"button\" value=\"發文\"><a href=\"html/發文表單.html\">我要發文</a></button>");
out.println("                        </div>");
out.println("                        <div class=\"count\">");
out.println("                            <a style=\"color: rgb(255, 255, 255);\">網站訪問次數</a>");
out.println("                            <hr>");
out.println("                            <a href='https://www.hit-counts.com/'><img src='http://www.hit-counts.com/counter.php?t=MTQ1MjM3NA=='");
out.println("                                border='0' alt='logo services'></a><BR><a href='https://www.glowgraphics.co.uk/'>logo services</a>");
out.println("                                </div>");
out.println("                                ");
out.println("                            </div>");
%>
</body>
</html>