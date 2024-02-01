from email import message
from multiprocessing import context
from unicodedata import name
from urllib.request import Request
from django.http import HttpResponseRedirect
from django.shortcuts import render
from django.contrib import messages
from datetime import datetime
from control.models import userFeedback,myecf


def home(request):
    return render(request,"index.html")



def check(request):
    if request.method == 'POST':
        global index_course 
        index_course = request.POST['Course']
        global index_region 
        index_region = request.POST['Region']

    college_data = myecf.objects.all()
    c_name_link = dict()
    global x
    x = 0 if index_course.lower() == "computer" else 2 if index_course.lower() == "extc" else 4 if index_course.lower() == "civil" else 6 if index_course.lower() == "mechnical" else 8 if index_course.lower() == "chemical" else 9
    
    # 9 is for all branches

    for i in college_data:
        if index_region.lower() == "all regions":
            c_name_link[i.clg_short_name] = i.clg_link
        elif (index_region.lower()) == i.region.lower():
            if x==9:
                c_name_link[i.clg_short_name] = i.clg_link

            elif i.co_ex_ci_me_ch[x] == "1":
                c_name_link[i.clg_short_name] = i.clg_link

    return render(request,"check.html",{"coursename":index_course,"region":index_region,'collegename': c_name_link}) 


def aboutus(request):
    return render(request,"aboutUs.html")


        

    # return HttpResponseRedirect()


def cet(request):
    college_data = myecf.objects.all()
    c_name_link = dict()
    
    for i in college_data:
        if index_region.lower() == "all regions" and i.min_cet>= 40:
            c_name_link[i.clg_short_name] = i.clg_link
        elif (index_region.lower()) == i.region.lower():
            if x==9 and i.min_cet >= 40:
                    c_name_link[i.clg_short_name] = i.clg_link

            elif i.co_ex_ci_me_ch[x] == "1" and i.min_cet >= 40:
                c_name_link[i.clg_short_name] = i.clg_link
            
    return render(request,"check.html",{"coursename":index_course,"region":index_region,"cet":cet,'collegename': c_name_link})

def jee(request):
    college_data = myecf.objects.all()
    c_name_link = dict()
    for i in college_data:
        if index_region.lower() == "all regions" and i.min_jee >= 50:
            c_name_link[i.clg_short_name] = i.clg_link
        elif (index_region.lower()) == i.region.lower():
            if x==9 and i.min_jee >= 50:
                    c_name_link[i.clg_short_name] = i.clg_link

            elif i.co_ex_ci_me_ch[x] == "1" and i.min_jee >= 50:
                c_name_link[i.clg_short_name] = i.clg_link
            
    return render(request,"check.html",{"coursename":index_course,"region":index_region,"cet":cet,'collegename': c_name_link})

def male(request):
    college_data = myecf.objects.all()
    c_name_link = dict()
    for i in college_data:
        if index_region.lower() == "all regions" and i.girls_college!=1:
            c_name_link[i.clg_short_name] = i.clg_link
        elif (index_region.lower()) == i.region.lower():
            if x==9 and i.girls_college!= 1:
                    c_name_link[i.clg_short_name] = i.clg_link

            elif i.co_ex_ci_me_ch[x] == "1" and i.girls_college!= 1:
                c_name_link[i.clg_short_name] = i.clg_link
 
            
    return render(request,"check.html",{"coursename":index_course,"region":index_region,"cet":cet,'collegename': c_name_link})
    

def female(request):
    college_data = myecf.objects.all()
    c_name_link = dict()
    for i in college_data:
        if index_region.lower() == "all regions":
            c_name_link[i.clg_short_name] = i.clg_link
        elif (index_region.lower()) == i.region.lower():
            if x==9:
                    c_name_link[i.clg_short_name] = i.clg_link

            elif i.co_ex_ci_me_ch[x] == "1":
                c_name_link[i.clg_short_name] = i.clg_link 
            
    return render(request,"check.html",{"coursename":index_course,"region":index_region,"cet":cet,'collegename': c_name_link})



def obc(request):
    college_data = myecf.objects.all()
    c_name_link = dict()
    for i in college_data:
        if index_region.lower() == "all regions":
            c_name_link[i.clg_short_name] = i.clg_link
        elif (index_region.lower()) == i.region.lower():
            if x==9 and i.obc_sc_st_nt_open[0] == "1":
                    c_name_link[i.clg_short_name] = i.clg_link

            elif i.co_ex_ci_me_ch[x] == "1" and i.obc_sc_st_nt_open[0] == "1":
                c_name_link[i.clg_short_name] = i.clg_link 
            
    return render(request,"check.html",{"coursename":index_course,"region":index_region,"cet":cet,'collegename': c_name_link})




def sc(request):
    college_data = myecf.objects.all()
    c_name_link = dict()
    for i in college_data:
        if index_region.lower() == "all regions":
            c_name_link[i.clg_short_name] = i.clg_link
        elif (index_region.lower()) == i.region.lower():
            if x==9 and i.obc_sc_st_nt_open[2] == "1":
                    c_name_link[i.clg_short_name] = i.clg_link

            elif i.co_ex_ci_me_ch[x] == "1" and i.obc_sc_st_nt_open[2] == "1":
                c_name_link[i.clg_short_name] = i.clg_link 
    return render(request,"check.html",{"coursename":index_course,"region":index_region,"cet":cet,'collegename': c_name_link})



def st(request):
    college_data = myecf.objects.all()
    c_name_link = dict()
    for i in college_data:
        if index_region.lower() == "all regions":
            c_name_link[i.clg_short_name] = i.clg_link
        elif (index_region.lower()) == i.region.lower():
            if x==9 and i.obc_sc_st_nt_open[4] == "1":
                    c_name_link[i.clg_short_name] = i.clg_link

            elif i.co_ex_ci_me_ch[x] == "1" and i.obc_sc_st_nt_open[4] == "1":
                c_name_link[i.clg_short_name] = i.clg_link 
    return render(request,"check.html",{"coursename":index_course,"region":index_region,"cet":cet,'collegename': c_name_link})



def nt(request):
    college_data = myecf.objects.all()
    c_name_link = dict()
    for i in college_data:
        if index_region.lower() == "all regions":
            c_name_link[i.clg_short_name] = i.clg_link
        elif (index_region.lower()) == i.region.lower():
            if x==9 and i.obc_sc_st_nt_open[6] == "1":
                    c_name_link[i.clg_short_name] = i.clg_link

            elif i.co_ex_ci_me_ch[x] == "1" and i.obc_sc_st_nt_open[6] == "1":
                c_name_link[i.clg_short_name] = i.clg_link 
    return render(request,"check.html",{"coursename":index_course,"region":index_region,"cet":cet,'collegename': c_name_link})



def open(request):
    college_data = myecf.objects.all()
    c_name_link = dict()
    for i in college_data:
        if index_region.lower() == "all regions":
            c_name_link[i.clg_short_name] = i.clg_link
        elif (index_region.lower()) == i.region.lower():
            if x==9 and i.obc_sc_st_nt_open[8] == "1":
                    c_name_link[i.clg_short_name] = i.clg_link

            elif i.co_ex_ci_me_ch[x] == "1" and i.obc_sc_st_nt_open[8] == "1":
                c_name_link[i.clg_short_name] = i.clg_link 
    return render(request,"check.html",{"coursename":index_course,"region":index_region,"cet":cet,'collegename': c_name_link})




    # def userFeedback(request):
#     if request.method == "post":
#         name = request.POST.get('name')
#         phone = request.POST.get('phone')
#         email = request.POST.get('email')
#         desc = request.POST.get('desc')
        
#         userFeedback = userFeedback(name=name,phone=phone,email=email,desc=desc,date=datetime.today())
#         userFeedback.save()