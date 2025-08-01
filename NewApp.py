from flask import Flask, render_template, flash, request, session
from flask import render_template, redirect, url_for, request
import mysql.connector
import sys, fsdk, math, ctypes, time
import datetime

app = Flask(__name__)
app.config['DEBUG']
app.config['SECRET_KEY'] = '7d441f27d441f27567d441f2b6176a'


@app.route("/")
def homepage():
    return render_template('NewUser.html')





@app.route("/newuser", methods=['GET', 'POST'])
def NewStudent1():
    if request.method == 'POST':
        uname = request.form['uname']
        fname = request.form['fname']
        gender = request.form['gender']
        Age = request.form['Age']
        email = request.form['email']
        pnumber = request.form['pnumber']
        address = request.form['address']
        vid = request.form['vid']
        aid = request.form['aid']

        conn = mysql.connector.connect(user='root', password='root', host='localhost',port='3306', database='5facevotedb')
        cursor = conn.cursor()
        cursor.execute(
            "insert into regtb values('" + uname + "','" + fname + "','" + gender + "','" + Age + "','" + email + "','" + pnumber + "','" + address + "','" + vid + "','" + aid + "')")
        conn.commit()
        conn.close()

        import LiveRecognition  as liv

        liv.att()
        del sys.modules["LiveRecognition"]

    conn = mysql.connector.connect(user='root', password='root', host='localhost',port='3306', database='5facevotedb')
    cur = conn.cursor()
    cur.execute("SELECT * FROM regtb")
    data = cur.fetchall()
    flash('Record Save..!')
    return render_template("NewUser.html", data=data)


def sendmsg(targetno, message):
    import requests
    requests.post(
        "http://sms.creativepoint.in/api/push.json?apikey=6555c521622c1&route=transsms&sender=FSSMSS&mobileno=" + targetno + "&text=Dear customer your msg is " + message + "  Sent By FSMSG FSSMSS")


if __name__ == '__main__':
    app.run(host='0.0.0.0',debug=True, use_reloader=True)
