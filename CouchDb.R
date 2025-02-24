install.packages(sofa)
x<-Cushion$new()
x$ping()
db_create(x,dbname="ckt")
db_list(x)

doc1<-'{"rollno":"01","name":"ABC","GRADE":"A"}'
doc_create(x,doc1,dbname = "ckt",docid = "a_1")

doc2<-'{"rollno":"02","name":"PQR","GRADE":"A"}'
doc_create(x,doc2,dbname = "ckt",docid = "a_2")

doc3<-'{"rollno":"03","name":"xyz","GRADE":"B","REMARK":"PASS"}'
doc_create(x,doc3,dbname = "ckt",docid = "a_3")

db_changes(x,"ckt")

db_query(x,dbname="ckt")
select=list('_id'=list('$gt'=NULL))$docs


db_query(x,dbname="ckt", selector=list(GRADE="A"))$docs


db_query(x,dbname="ckt", selector=list(REMARK="PASS"))$docs

db_query(x,dbname = "ckt",selector = list(rollno=list('$gt'='02')),fields=c("name","GRADE"))$docs

library(jsonlite)
res <- db_query(x,db_name="ckt", selector=list('_id'=list('$gt'=NULL)),fields=c("name","rollno","GRADE","REMARK"),as="json")

fromJSON(res)$docs
doc_delete(x,dbname="ckt",dpcid="a_2")
doc_get(x,dbname="ckt",dpcid="a_2")


doc2<-'{"name":"abc","pastry":"TEST","note":"yummy","note2":"yay"}'
doc_update(x,dbname = "ckt",doc=doc2,docid="a_3",rev = "3-b1fb56db955b142c6efd3b3c52fe9e1b")

doc3<-'{"rollno":"01",
"name":"Klayani",
"GRADE":"A"}'

doc_update(x,dbname = "ckt",doc=doc3,docid = "a_1",rev = "1-be7c98bddf8ea7c46f4f401ff387593d")