#!/usr/bin/env python
import xlrd

"""Natural Sciences Journal lists gathered from http://fef.metu.edu.tr/en/node/167"""
journals = {"SCI-A-Tipi-Dergilerin-Listesi.xls":"A", "SCI-B-Tipi-Dergilerin-Listesi.xls":"B"}
"""A list of selected search subjects"""
search_list = []
"""Prepared dictionary of journals, each of which includes its abbreviation, full title, ISSN and journal type (A or B)"""
journalContent = {}
"""A list of subjects"""
allSubjects = []
"""A boolean representing whether content is read and processed"""
dataPrepared = False

"""Index each row with regard to its subjects, prepare a list
   with 0.index:abbreviation,1.index:full title,2.index: ISSN, 4.index:type (A or B) 
"""
def index_row(row,jType):
    subjectList = row[4].value.split(";")
    newRow = [row[i].value for i in [1,2,3]]
    newRow.append(jType)
    
    for s in subjectList:
        s = s.strip()
        if s in journalContent:
            journalContent[s].append(newRow)
        else: 
            journalContent[s] = [newRow]
            
"""The search is based on inverted index, therefore for each row of A and B 
   indexed journal is indexed with regard to its subjects."""        
def startup():
    tempList = []
    for filename in journals:
        book = xlrd.open_workbook(filename)
        sh = book.sheet_by_index(0)
        for rx in range(sh.nrows):
            row = sh.row(rx)
            if rx != 0:
                index_row(row,journals[filename])
                tempList.extend(row[4].value.split(";"))
        tempSet = set(tempList)
        global allSubjects
        allSubjects = [i for i in tempSet]  
        allSubjects.sort()
    global dataPrepared
    dataPrepared = True

""" Search among inverted indexes and return a concatination of results if more than one
    sucject is searched.
"""    
def search_journals(searchList):
    sList = [journalContent[s] for s in searchList if s in journalContent]
    tempList = []
    for js in sList:
        for j in js:
            if not j in tempList:
                tempList.append(j)
    
    # Seperating A and B indexed journals 
    finalList = [t for t in tempList if t[3]=="A"]
    finalList.extend([t for t in tempList if t[3]=="B"])
    return finalList 

""" Return subject list.
    If subject list is not prepared which means that inverted index is not constructed,
    then, for once startup is called.
"""    
def get_subjects():
    if not dataPrepared:
        startup()
    return allSubjects
""" Return inverted index dictionary.
"""
def get_content():
    return journalContent    
      
    
    

    