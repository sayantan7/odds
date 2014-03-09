O&nbsp;D&nbsp;D&nbsp;S
====

<b>Online&nbsp;Drug&nbsp;Delivery&nbsp;System</b><br><hr>

<b>About the Project</b><br>
This is my pet <a href="http://en.wikipedia.org/wiki/Telemedicine">Telemedicine</a> based project.<br>
Anyone interested in healthcare may join. Plus, as you can see, we are using a myriad number of technologies, rookie or experienced, all are welcome.<br>


<b>Project&nbsp;Description</b><br>
------------------------------------------------------------------------------------
<b>Phase-I:</b>&nbsp;Create&nbsp;the&nbsp;portal.&nbsp;Create&nbsp;the&nbsp;data&nbsp;repo.<br>
<b>Phase-II:</b>&nbsp;Create&nbsp;the&nbsp;mobile&nbsp;portal.&nbsp;Enable&nbsp;video&nbsp;chat.&nbsp;<br>
<b>Phase-III:</b>&nbsp;Create&nbsp;the&nbsp;hardware.&nbsp;Code&nbsp;on&nbsp;Raspberry/Mango&nbsp;Pi.<br>
<b>Phase-IV:</b>&nbsp;Code&nbsp;for&nbsp;ATVM&nbsp;Machine.

Architecture:
=============
<b>Platform</b><br>
JDK           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.7.0_25<br>
JEE						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;7<br>
EJB						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.x<br>

<b>Framework</b><br>
Struts						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.3.x<br>
Spring-web-mvc	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;				4.x<br>
Spring-security	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;				4.x<br>
Spring-roo			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;			4.x<br>

<b>ORM</b><br>
Hibernate					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4.x<br>
JPA								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.x<br>

<b>Database</b><br>
MySQL						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5.5.x<br>
mysql-connector					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5.1.x<br>

<b>Js</b><br>
Jquery&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Latest<br>
JQuery-AJAX&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Latest<br>
Jquery-Mobile&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Latest<br>
Angular.js&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Latest<br>

<b>Js-Server</b><br>
Node.js&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0.10.x<br>
Total.js&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.x<br>
Angular.js&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Latest<br>

<b>View</b><br>
HTML						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5<br>
Liferay					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;		6.2<br>

<b>Templating</b><br>
Jade&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Latest<br>
Freemarker&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bundled&nbsp;with&nbsp;struts2<br>

<b>Scripting/Automation</b><br>
Perl&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5.10.x <br>
Grunt&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Latest<br>
Clojure&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Latest<br>
R&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.x<br>


Architechture Notes:
--------------------
<span style="font-size: 4">
<i><smallcaps>Any&nbsp;software&nbsp;choice&nbsp;should&nbsp;be&nbsp;platform&nbsp;independent</smallcaps></i><br>
All software choice should be <b>gratis libre</b><br>
Java is the choice of coding since the same code can run on pretty much all the hardaware required.<br>
All else is open to discussion and change <br>
<b>Arch:</b><br>
Java7&nbsp;(will&nbsp;certainly&nbsp;be&nbsp;migrated&nbsp;to&nbsp;Java8&nbsp;after&nbsp;its&nbsp;release)
<br>
<b>Framework:</b><br>
Struts2.3;&nbsp;
Spring&nbsp;MVC&nbsp;4.x&nbsp;--&nbsp;mostly&nbsp;for&nbsp;Spring&nbsp;Security;<br>
//<i>I&nbsp;am&nbsp;using&nbsp;both&nbsp;the&nbsp;frameworks&nbsp;becuase&nbsp;Struts2&nbsp;is&nbsp;easier&nbsp;and&nbsp;more&nbsp;compatible&nbsp;with&nbsp;other&nbsp;frameworks.
Whereas,&nbsp;Spring&nbsp;MVC&nbsp;is&nbsp;more&nbsp;popular&nbsp;and&nbsp;provides&nbsp;better&nbsp;role&nbsp;based&nbsp;security.</i><br>
<b>Database</b><br>
I have chosen mysql, oracle is out due to licensing requirements, as I intend to use most of the work in java and not resorting to write procs and functions. They are great but documenting them is a pain and migrating to other databases is non-compatible mostly and that kicks our postgres. I like postgres, kinda, so the final production db server might be on the elephant (or mammoth?)
<br>
MongoDB should be used only as a temporary data store. Mysql should be used for permament persistence to harness its relational system.<br>
<b>Js-server</b><br>
Node.js&nbsp;--&nbsp;for&nbsp;the&nbsp;chat&nbsp;module. What can be achieved with Node should be done with Node instead of writing humungous lines of code in Spring/Struts<br>
Total.js should be used instead of Express (wherever possible) for its excellent integration with Angular.js<br>
I decided against using Backbone.js since it makes js code too much water tight and adds an extra layer of crap (considering i am not building a full blown js app)<br> 
<b>Templating</b><br>
I decided against tiles and other options just becuase of excellent inbuilt integration of freemarker with struts2.<br>
<b>Scripting/Automation</b><br>
I would definitely like to see Haskell in the list. But nobody (here) knows or wants to learn it. I would be happy to be proved wrong.<br>
Perl should always be the language of choice other than functional and mathematical bits. It will be upgraded to version 6 -- if one ever comes!<br>
I decided against python becuase I already have java as a programming platform. I only need small scripts. Perl is the best Extraction and Reporting Language for that.<br>
R is best for formulae. R output should always be XML or CSV files which can be read by Java/Clojure/Perl using REST api.<br>
</span>


<b>Hardware:</b>
------------------------------------------------------------------------------------
<b>Kernel:</b>
Linux3
<br>
<b>OS:</b>
Fedora/Ubuntu<br>
--&nbsp;<i>Fedora&nbsp;provides&nbsp;out-of-the-box&nbsp;excellent&nbsp;networking&nbsp;capabilities&nbsp;but&nbsp;is&nbsp;pretty&nbsp;hard-nosed&nbsp;about&nbsp;proprietary&nbsp;software&nbsp;and&nbsp;hardware.</i><br>
--&nbsp;<i>Ubuntu&nbsp;has&nbsp;Apt&nbsp;(with&nbsp;Super&nbsp;Cow&nbsp;Powers&nbsp;</i>;-P<i>)&nbsp;plus&nbsp;supports&nbsp;almost&nbsp;any&nbsp;hardware&nbsp;but&nbsp;demands&nbsp;a&nbsp;lot&nbsp;of&nbsp;tweaking.</i>
<br><b>Platform:</b>
As&nbsp;of&nbsp;now:&nbsp;Desktop;
Later&nbsp;to&nbsp;be&nbsp;migrated&nbsp;to&nbsp;mobile;&nbsp;
and&nbsp;then&nbsp;to&nbsp;Raspberry&nbsp;Pi&nbsp;(or&nbsp;any&nbsp;other&nbsp;suitable&nbsp;ARM&nbsp;based&nbsp;platform)

<hr>

