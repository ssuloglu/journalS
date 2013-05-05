from google.appengine.api import mail

from framework import bottle
from framework.bottle import *
import utilities as ut

app = Bottle()
@app.route('/<filepath:path>')
def server_static(filepath):
    return static_file(filepath, root='views')    
        
@app.get('/')
def home_index():
    subjects = ut.get_subjects()
    content = ut.get_content()
    return bottle.template("home",subjects=subjects,keyword_list="",resultingList=[])

@app.post('/')    
def search():
    subjects = ut.get_subjects()
    searchList = bottle.request.forms.getlist("subjects")
    if len(searchList) == 0:
         return bottle.template("home",subjects=subjects,keywordList=[],resultingList=[])
    keywordList = ",".join(searchList)   
    resultingList = ut.search_journals(searchList)
    return bottle.template("home",subjects=subjects,keywordList=keywordList,resultingList=resultingList)

@app.get('/contact')
def home_index():
    return bottle.template("contact", dict(email="", subject="",scontent="",notification="",s="ok"))

@app.post('/contact')
def send_mail():
    email = bottle.request.forms.get("email")
    scontent = bottle.request.forms.get("scontent")
    subject = bottle.request.forms.get("subject")
    if email == "":
        notification = "Please enter your e-mail address"
        return bottle.template("contact", dict(email="", subject="",scontent="",notification=notification,s="warning"))
    else:
        # To enable mailing, you shoudl go to the application Dashboard --> Administration --> Permissions
        # Add name@domain.com and check your mailbox to verify the account.
        message = mail.EmailMessage(sender="JournalS Support <name@domain.com>", #name@domain.com is verified by google app engine, so it should be real
                            subject="Your message has been received")

        message.to = email
        message.bcc = "your-email@domain.com" 
        message.body = """
        Dear Journal Seeker:

            Your message has been received.
            -------------------------------
        """
        message.body += scontent + "\n"
        message.body +="""
            -------------------------------
            We will contact you as soon as possible.
            Keep following and keep writing :)
        
        JournalS Team
        """
        message.send()
        notification = "Your message has been sent successfully."
        return bottle.template("contact", dict(email="", subject="",scontent="",notification=notification,s="success"))

#If you want to debug you should use
# bottle.run(app=app, server='gae', debug=True)    
bottle.run(app=app, server='gae')