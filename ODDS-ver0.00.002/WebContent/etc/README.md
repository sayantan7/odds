						README.md
						=========
		
This is the miscellaneous ReadME file for the project.
Any specific directions are to be placed in this file.

Versioning:
===========
ODDS-verx.yy.zzz-artifact

x = 4:Release; 3:RC; 2:Beta; 1:Apha; 0:Dev/Nightly
y = Major implementation
z = Minor implementation
artifact = Housekeeping changes


Architecture:
=============
Platform                                              Version
-------------------------------------------------------------
JDK                                                  1.7.0_25
JEE						     7
EJB						     3.2
Struts						     2.2.1
Hibernate					     3.2
MySQL						     5.5.32
mysql-connector					     5.1.14
HTML						     5


Project Structure:
==================
src/
----
To contain all the java class files and I18N xml files.

src/com/
--------
The base package. Developers should put their respective content inside their 
own subfolders to claim ownership (and blame!). such as., com.sayantan.util etc.

src/META-INF
------------
To contain persistence.xml.
NOTE: <property name="hibernate.hbm2ddl.auto" value="update"/>
ALREADY SET. SHOULD BE DISABLED BY DB-ADMIN IF REQUIRED.

config/
-------
To contain all the configuration scripts for Struts2, Hibernate (except 
persistence.xml), Node.js etc.
Devs can create their custom mapping or use sayantan.xml.

test/
-----
To contain the java test cases. Html/jsp test cases should be put in a subfolder
inside WebContent.

WebContent/
-----------
To contain the html/jsp or any other view specific files.
Developers should put their respective content inside their own subfolders to 
claim ownership (and blame!). such as., WebCotent/sayantan/ etc.

WebContent/META-INF
-------------------
To contain Licenses and Notice files.

WebContent/etc/
---------------
To contain the miscellenaeous files viz., ReadME, executables etc.

WebContent/src/
---------------
To contain the javascript/Node.js source files.

WebContent/img/
---------------
To contain image files. Should be subfoldered w.r.t. modules.

WebContent/img/
---------------
To contain stylesheet information.


Variable Names:
===============
Always look at the src/com/sayantan/action/package.properties for existing var
mappings and use them.
If the variable doesn't exist, then create one.
Reproduce the same for all the i18n and l10n files. (if you know the languages)
Otherwise mention the non i18nised fields in the Commit comment. 


Action Mapping:
===============
goto_x_y
x: The calling form.
y: The success page.

for example: <s:form namespace="/sayantan" action="goto_login_home">
The corresponging action class'd be com/sayantan/action/Delegate_xAction.java


URL Mapping:
============
url-s should not be mapped like <a href="home.jsp"> whenever i18n/l10n is 
required. they should be mapped as:

	<s:url id="url" action="fwd_x_y" namespace="/sayantan">
        <s:param name="request_locale">de</s:param>
    </s:url>
    <s:a href="%{url}">Deutsch</s:a>
    
    x: calling url page; so that the site can fallback to that page
    	in case of validation errors.
    y: page to direct to.
    
     
Login Action:
=============
Login page should be present on a separate https:// aware context.
Passwords should reversed and be saved in md5/sha2 hash in db associated to a 
	salt.

CASE-I: EASY
-------
goto_x_login action should send:
	String email = email.getText().toString();
	String salt1 = random('salt1');
	String salt2 = random('salt2');
	String preSalt = select preSalt from db where email:=email;
	
Login page should load as:
	var salt1,salt2,preSalt
	var password.getText()

Password should be transmitted as:
	salt1 + password + salt2 + preSalt

goto_login_y action should fire:
	splice(salt1,password,salt2,preSalt)
	pwd = md5(password.reverse())
	boolean flag = (ResultSet) != null;
	if (flag == true)
		return "success";
	
where,
	ResultSet = <Select Statement>
	
	CREATE TABLE USER_AUTH (USER_ID VARCHAR(40), CRYPT_AUTH VARCHAR(32), 
		NEXT_SALT_ID VARCHAR(10));
	INSERT INTO T VALUES('uid', MD5(COMPRESS(REPEAT(CONCAT('pwd','salt'),16))), 
		'salt');
	SELECT USER_ID, CRYPT_AUTH FROM USER_AUTH WHERE USER_ID = uid	
		AND CRYPT_AUTH = MD5(COMPRESS(REPEAT(
			CONCAT((SELECT NEXT_NEXT_SALT_ID_ID FROM USER_AUTH WHERE UID='uid'),
			'pwd',
			(SELECT NEXT_NEXT_SALT_ID_ID FROM USER_AUTH WHERE UID='uid')),16)));
	
	// THE PROBLEM IS THAT PASSWORD (EVEN IN CRYPTIC COMBINATION) 
			WILL BE TRANSFERRED IN PLAIN TEXT
	// THE pwd CAN BE MD5-ed BY JAVA AND TRANSFERRED BUT THAT IS STILL IN PAIN 
			TEXT AND SUSCEPTIBLE TO DICTIONARY ATTACKS

CASE-II: COMPLICATED
--------
	CREATE TABLE USER_AUTH (USER_ID VARCHAR(40), EMAIL_ID VARCHAR(40), 
		CRYPT_AUTH BLOB, NEXT_SALT_ID BLOB);
	INSERT INTO USER_AUTH VALUES('uid', 'e@mail', 
		AES_ENCRYPT(DES_ENCRYPT('salt'), SHA2('pwd',512)), 
		DES_ENCRYPT('salt'));
	SELECT * FROM USER_AUTH WHERE USER_ID='uid' AND CRYPT_AUTH=AES_ENCRYPT
		((SELECT NEXT_SALT_ID FROM USER_AUTH WHERE USER_EMAIL='e@mail'), 
		SHA2('pwd',512));
	
	// THE FUNCTION SHA2('pwd',512) SHOULD BE EXECUTED INSIDE JAVA AND THEN 
			TRANSFERRED.
	// THE EXECUTION SHOULD BE ATTACHED TO ONCHANGE() FUNCTION OF THE TEXTBOX.
	
	ONCHANGE():
	-----------
		1. only uid field is visible.
		2. user enters uid. Press Enter.
		3. make uid field invsible. put the value in property uid. 
			make visible pass field. 
		4. user enters pass. Press Enter. make pass field invidible.
			take the value, calculate sha2('pass',512). 
			and put in new_pass property. make property pass=null;
		5. make visible email field. user enters email. clicks enter.
		6. make email field invisible. make visible LOG_IN button. user clicks. 
			POST uid, new_pass and email.
		7. on success, show home.jsp and put uid and email in session.
		
		NOTE: new_pass should be transferred as stream (like a file).
		
CASE-III: EASIEST
---------
	load uid field on login page.
	SELECT MOBILE_NUMBER AND EMAIL_ID FROM USER_AUTH WHERE USER_ID='uid';
	Generate a random number (1234) eveytime and send to registered mobile/mail
	UPDATE TABLE USER_AUTH SET CRYPT_AUTH='1234' WHERE USER_ID='uid'
	user enters that 1234 in pass field. pass sent as plain text. no probs.
	SELECT USER_ID, CRYPT_AUTH FROM USER_AUTH WHERE USER_ID='uid' AND CRYPT_AUTH
		= 1234
	return "success";
		UPDATE TABLE USER_AUTH SET CRYPT_AUTH='0000' WHERE USER_ID='uid'
	
	// ONLY ISSUE IS ACCOUNT CAN BE COMPROMIZED WHEN MOBILE LOST.
			OR DURING DATA TRANSFER TO TELEPHONE OPERATOR OR MAIL SEND.
			BUT THE BLAME CAN BE ESCHEWED! (USER SHOULD BE FOREWARNED)
	// ALSO CARRIER MIGHT IMPOSE CHARGES FOR USING THEIR SERVICES.
	// ALSO POSES UNNECESSARY HASSLE FOR USER.

CASE-IV: SAFEST
--------
	-- certificate based authentication.  
	user uploads a pass_file file (with any random text) during registration. 
	that file is digitally signed and  PGP encrypted by server
	the file is sent back to user via email.
	-- the email should be instructed to be destroyed for added safety.
	user needs to keep the file safe and upload it on every login.
	-- the file can be sha2 hashed during transfer for added security.
	when the user wants to change the password, 
	     simply a different pass_file will be uploaded.
	
	// THE NOVICE USER CAN FIND THIS METHOD MOST CUMBERSOME AND CONFUSING.
	// THERE MIGHT BE HEAVY LOAD IN THE INITIAL PHASE DUE TO MASS REGISTRATION.	
	// DIFFICULT TO MAINTAIN FOR RETAIL AND NOVICE USER. 
	// EASY TO COMPROMIZE (FOR RETAIL VILLAGERS). 
		IF THE KEY AND SIGNATURE ARE SWINDLED.
	
	
	
