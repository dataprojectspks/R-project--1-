

#Q1 PART 1
"read.csv(C:/Users/0000/Desktop/R assignments/R case study 1 (Retail),headers=TRUE)
 read.csv
getwd()
#cust<- read.csv("Customer", TRUE, ","  )
#custo <- read.csv("Customer", TRUE,"," )
getwd()
 "
#custom <- read.csv("Customer" , TRUE, ","  )
#read.csv()
custo <- read.csv("Customer.csv", TRUE,"," )
transa <- read.csv("Transactions.csv", TRUE , ",")
prodcat <- read.csv("prod_cat_info.csv", TRUE, ",")
#merge(trans)
#merge(custo,transa, by=c("cust_id ", "customer_Id") )

#table1 <- merge(custo,transa, by="cust_id" )
#table2 <- merge(x=custo,y=transa, by.x=custo$cust_id ,by.y =transa$customer_Id, all.y=TRUE)

#merge(custo,transa, by.x="cust_id ",by.y ="customer_Id",all.x = TRUE,all.y = TRUE)
data_list <- list(custo,transa,prodcat)
#merge
#table2
#gc()
#merge(x=custo,y=tran,
#      by.x = "customer_Id",
#     by.y = "cust_id")

#tempdir()
#C:\Users\0000\AppData\Local\Temp\Rtmp86bEoJ\Rtxt32dcef24de2
#dir.create(tempdir())

tablea <- merge(x=custo,y=transa,
                by.x = "customer_Id",
                by.y = "cust_id")
Customer_Final <- merge(x=tablea,y=prodcat,by = "prod_cat_code", all = TRUE)    #MAIN TABLE USED THROUGH THE ASSIGNMNET 

"
#Q1 PART 2

#full_join(x=custo,y=transa,
          by.x = "customer_Id",
          by.y = "cust_id")

full_join(x=custo,y=transa,
          by = "customer_Id",
          )


full_join(custo,transa,
          by = "customer_Id")
rlang::last_error()
rlang::last_trace()

full_join(custo,transa,
#          by.x = "customer_Id",
#          by.y = "cust_id")
rlang::last_error()
rlang::last_trace()


full_join(custo,transa)

#full_join(custo,transa, by=c("customer_Id","cust_id"))

rlang::last_error()
rlang::last_trace()

"


full_join(custo,transa, by=c("customer_Id"="cust_id"))
table1 <- full_join(custo,transa, by=c("customer_Id"="cust_id"))

Customer_Final2 <- full_join(table1,prodcat, by="prod_cat_code")   #practice  table NOT USED in the assignment 



#Q2 A

#colnames <- NULL
#remove(colnames)
#str <- (Customer_Final)
colnames(Customer_Final,do.NULL = TRUE, prefix = "col")

sapply(Customer_Final,class)

#Q2 B

sort(Customer_Final$total_amt,FALSE)

#top_n

#slice_min(Customer_Final$total_amt,10)


#top_n(Customer_Final$total_amt,10)

"

top_n(Customer_Final,10)


slice_min(Customer_Final,10,total_amt)


rlang::last_error()

rlang::last_trace()


#Customer_Final <- Customer_Final[with(data,order(-),total_amt)

#Customer_Final <- Customer_Final[1:10,]

"

head(Customer_Final[order(-Customer_Final$total_amt),], 10)


tail(Customer_Final[order(-Customer_Final$total_amt),], 10) 





#Q2 c

#fivenum(Customer_Final,na.rm = TRUE)

fivenum(Customer_Final$Qty,na.rm = TRUE)
fivenum(Customer_Final$total_amt,na.rm = TRUE)


#Subset the columns and then use summary, summary(df[list]). For eg for mtcars, cols <- c("mpg", "cyl");summary(mtcars[cols])

#summary(df[list]). For eg for mtcars, cols <- c("mpg", "cyl");summary(mtcars[cols])

#cols <- c("qty","total_amt","rate","tax")

#cols <- NULL


#cols <- subset(Customer_Final,select =c("qty","total_amt","rate","tax") )



#cols <- subset(Customer_Final,select=c("qty","total_amt","rate","tax"),  )




#cols <- c["qty","total_amt","rate","tax"]
#("qty","total_amt","rate","tax")


#cols <- select(c("qty","total_amt","rate","tax"))

#select()
cols <- Customer_Final %>% select(total_amt,Rate,Tax,Qty)

#Summary(Customer_Final[cols])
#summary(Customer_Final[cols])



summary(cols)



#Q2 D

#table(Customer_Final$prod_cat_code,Customer_Final$customer_Id,Customer_Final$DOB,Customer_Final$Gender,Customer_Final$city_code,Customer_Final$tran_date)
#table(Customer_Final)


#table(Customer_Final$prod_cat_code)
#table(Customer_Final$prod_cat_code,Customer_Final$customer_Id)
table()

#list1 <- (Customer_Final$prod_cat_code,Customer_Final$customer_Id,Customer_Final$DOB,Customer_Final$Gender,Customer_Final$city_code,Customer_Final$tran_date)

#list1 <- list(Customer_Final$prod_cat_code,Customer_Final$customer_Id,Customer_Final$DOB,Customer_Final$Gender,Customer_Final$city_code,Customer_Final$tran_date)
#table1 <- table(list1)


#table(Customer_Final$customer_Id)
table()

list1 <- NA
list1 <- list(Customer_Final$prod_cat_code,Customer_Final$Gender,Customer_Final$city_code,Customer_Final$prod_subcat_code,Customer_Final$Store_type,Customer_Final$prod_cat)
table2 <- table(list1)
table2 <- NA




table(Customer_Final$prod_cat_code,Customer_Final$Gender,Customer_Final$city_code,Customer_Final$prod_subcat_code,Customer_Final$Store_type,Customer_Final$prod_cat)
table(Customer_Final$Gender)
table(Customer_Final$city_code)


#Q3

hist(total_amt)
hist(Customer_Final$Qty)
#list2 <- list(Customer_Final$Qty,Customer_Final$Rate,Customer_Final$Tax,Customer_Final$total_amt)
#hist(list2)
hist(Customer_Final$Rate)

hist(Customer_Final$Tax)

hist(Customer_Final$total_amt)
#part2

plot(Customer_Final$prod_cat_code)
plot(Customer_Final$Gender)



barplot(Customer_Final$Gender)
Customer_Final$Gender
#frequency(Customer_Final$Gender)

#barplot(Customer_Final,main ="absolute frequency",col = Gender )
barplot(table(Customer_Final$Gender))
table(Customer_Final$Gender)
barplot(table(Customer_Final$Gender),)
#prop.table(Customer_Final$Gender)

barplot(table(Customer_Final$city_code))
#barplot(Customer_Final$city_code)
barplot(table(Customer_Final$prod_cat_code))


barplot(table(Customer_Final$prod_cat_code),xlab = "CODE",ylab = "FREQUENCY", main ="PRODUCT CAT CODE" )


barplot(table(Customer_Final$Gender),xlab = "GENDER",ylab = "FREQUENCY", main ="GENDER FREQUENCY" )


barplot(table(Customer_Final$city_code),xlab = "CODE",ylab = "FREQUENCY", main ="CITY  CODE" )

barplot(table(Customer_Final$prod_subcat_code),xlab = "SUBCATEGORY CODE",ylab = "FREQUENCY", main ="SUB CAT CODE" )

#barplot(table(Customer_Final$Store_type),xlab = "STORE TYPE",ylab = "FREQUENCY", main ="STORE TYPE",width = 4  )


barplot(table(Customer_Final$prod_cat),xlab = "CATEGORY",ylab = "FREQUENCY", main ="PRODUCT CATEGORY " )



barplot(table(Customer_Final$prod_subcat),xlab = "SUB CATEGORY",ylab = "FREQUENCY", main ="PRODUCT SUBCATEGORY" )


#Q4 A 	Time period of the available transaction data

date_names()

#mutate(Customer_Final$tran_date


str(Customer_Final)       
Customer_Final2$tran_date <- as.Date(Customer_Final2$tran_date)          
#Customer_Final2$tran_date <- as.Date(Customer_Final2$tran_date,format = "%d/%m/%y")   #WRONG TO MANY NA

summary(Customer_Final2$tran_date)       
is.Date(Customer_Final2$tran_date)
head(Customer_Final2$tran_date,na.rn=TRUE)
tail(Customer_Final2$tran_date,na.rn=TRUE)
min(Customer_Final2$tran_date) 
max(Customer_Final2$tran_date)


Customer_Final$tran_date <- as.Date(Customer_Final$tran_date)

summary(Customer_Final$tran_date)
min(Customer_Final$tran_date)
max(Customer_Final$tran_date)


customer_final3=customer_final %>%
select(tran_date) %>%
format(tran_date, "%yyyy- %mm- %dd") %>%
sort()


format(my_date, "%d-%m-%Y")             # Applying format function
format(tran_date, "%yyyy- %mm- %dd")

# nzd$date <- format(as.Date(nzd$date, format = "%d/%m/%Y"), "%Y-%m-%d")

#customer_finala=customer_Final
#customer_finala

#str(Customer_Final)

#Customer_Final$tran_date <- format(as.Date(Customer_Final$tran_date, format="%d-%m-%Y","%Y-%m-%d" ))



customer_Final3 <- Customer_Final



lubridate::parse_date_time(Customer_Final$tran_date,orders = c('dmy','dym','mdy','myd','ydm','ymd') )

Customer_Final$tran_date <- parse_date_time(Customer_Final$tran_date,orders = c('dmy','dym','mdy','myd','ydm','ymd') )  #COrrect final ans 



min(Customer_Final$tran_date)
max(Customer_Final$tran_date)

print("Time period of the transcation is 2011 to 2014") #final ans 



#Q4 B Count of transactions where the total amount of transaction was negative

#count(Customer_Final,tran_date )

# count(-(Customer_Final$tran_date))

#starwars %>% count(sex, gender, sort = TRUE)

#Customer_Final %>% count(trans_date<, sort = FALSE)

#count(Customer_Final$tran_date<0, sort=FALSE)

#count(Customer_Final$total_amt)

count(Customer_Final$total_amt)

summary(Customer_Final$total_amt)

Customer_Final %>%  count(total_amt<0, sort = FALSE)

#count(Customer_Final$total_amt<0, sort=FALSE)

print("count of transacations <0 is 9294")



count_negative <- Customer_Final %>%   #correct final
select(total_amt) %>%
filter(total_amt<0) %>%
count(total_amt) %>%
#group_by() %>%
  distinct()%>%  
  ungroup()

count_negative2 <- Customer_Final %>% #correct final
  select(total_amt) %>%
  filter(total_amt<0) %>%
  count(total_amt) %>%
  group_by() %>%
  distinct()%>%  
  ungroup()





negative <- sum(count_negative2$n)     #correct final
negative

print("count of negative transacations <0 is is 9294") 


#Do the groupby and summarise with the relevant variables once you filter 
#the negative records as there can be duplicate transaction id's


Customer_Final %>%
  select(total_amt) %>%
  filter(total_amt<0) %>%
  count(total_amt) %>%
  group_by(total_amt) %>%
  distinct()%>%  
  ungroup()






#Q5 Analyze which product categories are more popular among females vs male customers.

Customer_Final%>%count(Gender, sort = FALSE)

"
count.fields(

)



subset(Customer_Final, c(qty,prodcat,gender))

tableq5 <- 
sort()

customers_age = dataset %>%
   select(User_ID, Age) %>%
   distinct() %>%
   count(Age)
customers_age


customers_location =  dataset %>%
   select(User_ID, City_Category) %>%
   distinct()
head(customers_location)

customers_total_purchase_amount = dataset %>%
                                    group_by(User_ID) %>%
                                    summarise(Purchase_Amount = sum(Purchase))

head(customers_total_purchase_amount)

#groupby the data set on the basis of "Gender" and "prod_cat"
#product_gender = customer_final.groupby(["Gender","prod_cat"])[["Qty"]].sum().reset_index() python

"
customers_gender <- Customer_Final %>%
  select(prod_cat,Gender,Qty)   %>%
  count(Qty)

customers_gender

rlang::last_error()

rlang::last_trace()


#"
#dataset_gender = dataset %>%
#  select(User_ID, Gender) %>%
#  group_by(User_ID) %>%
# distinct()  

#head(dataset_gender)

#summary(dataset_gender$Gender)
#"

customers_gender = Customer_Final %>%
  select(customer_Id,Gender)   %>%
  group_by(customer_Id)      %>%
  distinct()
head(customers_gender)
summary(customers_gender$Gender)
summary(customers_gender)
summarise(customers_gender)
head(customers_gender)



total_purchase_gender = Customer_Final %>%
  select(customer_Id,Gender,total_amt,prod_cat ) %>%
  group_by(customer_Id,prod_cat) %>%
  arrange(customer_Id,prod_cat) %>%
  summarise(Total_Purchase = sum(total_amt))
head(total_purchase_gender)


user_purchase_gender = full_join(total_purchase_gender, customers_gender, by ="customer_Id" )
head(user_purchase_gender,10)
summary(user_purchase_gender)
count(user_purchase_gender)
str(user_purchase_gender)


user_purchase_gender2=Customer_Final  %>%      #correct ans 
  select(customer_Id,Gender,total_amt,prod_cat)   %>%
group_by(Gender,prod_cat)%>%
  summarise(sumtotal4=sum(total_amt))  %>%
  distinct()  %>%
  ungroup()





  
  
  
  
  

  


"
plot(user_purchase_gender)
#barplot(table(Customer_Final$prod_cat),xlab = "CATEGORY",ylab = "FREQUENCY", main ="PRODUCT CATEGORY " )#
#barplot(table(user_purchase_gender$prod_cat),xlab = "CATEGORY",ylab = "FREQUENCY", main ="PRODUCT CATEGORY " )

#ggplot(high_tier1l)+ aes(x=Division, y=value , fill=name ) + geom_bar(stat = "identity", position = "dodge") +facet_grid(.~name)#correct 

#ggplot(user_purchase_gender)+ aes(x=prod_cat, y=Total_Purchase , fill=Gender ) + geom_bar(stat = "identity", position = "dodge") #+facet_grid(.~name)#correct 

#ggplot(user_purchase_gender)+ aes(x=prod_cat, y=Total_Purchase , fill=Gender ) + geom_bar(stat = "identity")#, position = "dodge") #+facet_grid(.~name)#correct 
"
ggplot(user_purchase_gender2)+ aes(x=prod_cat, y=sumtotal4 , fill=Gender ) + geom_bar(stat = "identity", position = "dodge") #+facet_grid(.~name)#correct final



print ("books electronics and kitchen are the most popular for females and males")

#Q6 Which City code has the maximum customers and what was the percentage of customers from that city  #correct

#head(tablea)

#count(tablea$city_code)

#summary(tablea)
is.numeric(Customer_Final$city_code)

dataset_citycustomer = Customer_Final %>% #correct
  select(city_code,customer_Id ) %>%
  count(city_code) %>%
  group_by() %>%
  distinct()  

head(Customer_Final$city_code)
head(dataset_citycustomer)
print("city code 4 has maximum number of customers ")

#ggplot(dataset_citycustomer)+ aes(x=customer_Id, y=city_code fill=customer_Id) 

#ggplot2.barplot(data=dataset_citycustomer, xName="city_code ", yName='n')

 #ggplot(data =dataset_citycustomer , aes(x =customer_Id )) + geom_histogram(binwidth = 100)

 ggplot(dataset_citycustomer, aes(x=city_code, y=n)) +
   geom_bar(stat="identity")

#summary(Customer_Final$city_code)

 print("city code 4 has maximum number of customers ")
 
"average_spending_gender = user_purchase_gender %>%
   group_by(Gender) %>%
   summarize(Purchase = sum(as.numeric(Total_Purchase)), 
             Count = n(), 
             Average = Purchase/Count)
head(average_spending_gender)
"


#Q7 Which store type sells the maximum products by value and by quantity? #final ans  

storevalue_quantity=Customer_Final2  %>%
  select(Store_type,Qty,total_amt) %>%
  group_by() %>%
  distinct()  

head(storevalue_quantity,20)
#plot(barstorevalue_quantity,10)
#barplot(table(Customer_Final$city_code),xlab = "CODE",ylab = "FREQUENCY", main ="CITY  CODE" )
#barplot(storevalue_quantity,)
#ggplot(data = head(storevalue_quantity),10)
#ggplot(data = , mapping = aes(x=date, y=car_count, fill=site)) +
# geom_col()

print("e shop store  sells max amount of products by value and quantity")


#Q8 What was the total amount earned from the "Electronics" and "Clothing" categories from Flagship Stores? #corect


#"customers_City =  dataset %>%
#   select(User_ID, City_Category) %>%
#  group_by(User_ID) %>%
#  distinct() %>%
#  ungroup() %>%
#   left_join(customers, customers_City, by = 'User_ID') 
#head(customers_City)

#city_purchases_count = customers_City %>%
#  select(City_Category, n) %>%
#  group_by(City_Category) %>%
#   summarise(CountOfPurchases = sum(n))
#city_purchases_count
#"

"elcl_sum = Customer_Final2%>%
   select(Store_type,prod_cat)    %>%
    group_by(Store_type)    %>%
    distinct()    %>%
     ungroup() %>%
    left_join( elcl_sum, by = 'Store_type') 
   
head(elcl_sum)
"

elcl_sum = Customer_Final2 %>%
  select(Store_type,prod_cat) %>%
  group_by(Store_type) %>%
  distinct(Store_type) %>%
  ungroup() %>%
  summary(Store_type)
head(elcl_sum)



elcl_sum2=Customer_Final  %>%   #correct final
select(Store_type,prod_cat,total_amt) %>%
group_by(Store_type="Flagship store",prod_cat)  %>%
  summarise(sumt=sum(total_amt)) %>%
distinct()  %>%
  ungroup()



print("total amt earned from Electronics is  53612318 and cloting is 18753412")#correct final

#9.What was the total amount earned from "Male" customers under the "Electronics" category? # correct final 

customers_malelectronics = Customer_Final2 %>%
  select(prod_cat,Gender,total_amt)   %>%
  group_by(prod_cat,Gender)      %>%
  distinct(prod_cat)
head(customers_malelectronics)
summary(customers_malelectronics$Gender)
summary(customers_malelectronics)
head(customers_malelectronics)

customers_malelectronics = Customer_Final2 %>%
  select(prod_cat,Gender,total_amt)   %>%
  group_by(prod_cat,Gender,total_amt)  %>%
  arrange(Gender,prod_cat) %>%
  distinct(prod_cat)
summarise(Total_Purchase = sum(total_amt))
head(customers_malelectronics,10)

customers_malelectronics8=Customer_Final  %>%
  select(Gender,prodcat,total_amt)  %>%
  group_by(Gender="M" & prodcat="Electronics")  %>%
  summarise(summe=sum(total_amt))%>%
  distinct() %>%
  ungroup()
  
customers_malelectronics6 = Customer_Final2 %>%  #correct final
  filter(Customer_Final2$prod_cat == 'Electronics' & Customer_Final2$Gender == 'M') %>%
  select(Gender,prod_cat,total_amt) %>%
  #filter(Customer_Final2$Gender=="M") %>%
  summarise(total=sum(total_amt), prod_cat,Gender)  %>%  
  group_by(Gender) %>%
  distinct() %>%
  ungroup()

print("Total amount earned from the elecronics store under the male category is 28515547")

  
  


"total_purchase_maleelec = Customer_Final2 %>%
   select(Gender,total_amt,prod_cat ) %>%
   group_by(Gender,prod_cat,total_amt) %>%
   arrange(Gender,prod_cat) %>%
   distinct(prod_cat)
   summarise(Total_Purchase = sum(total_amt))
head(total_purchase_maleelec,10)
total_purchase_maleelec=NULL
"

#   10.	How many customers have more than 10 unique transactions, after removing all transactions which have any negative amounts? #correct final ans 


Customer_ten <- Customer_Final2  %>%
  select(customer_Id,total_amt,transaction_id)  %>%
  filter(total_amt>0 ,customer_Id>=10) %>%
  unique()%>%
   ungroup()
    

length(which(table(Customer_ten$customer_Id)>10))
print("the number of customers with 10 unique tranactions is 6")

"
#length(which(Customer_ten$customer_Id(v)>10))
length(unique(Customer_ten$customer_Id))
length(which(table(Customer_ten$customer_Id)>10))

n_occur <- data.frame(table(vocabulary$id))
n_occur[n_occur$Freq > 1,]

n_occur
"

#Q11  #11.	For all customers aged between 25 - 35, find out:
#a.	What was the total amount spent for "Electronics" and "Books" product categories?
  #b.	What was the total amount spent by these customers between 1st Jan, 2014 to 1st Mar, 2014?


#a

is.numeric(Customer_Final$DOB)
is.date(Customer_Final$DOB)

customer_final <- as.Date(Customer_Final$DOB)



str(Customer_Final)
str(Customer_Final2)
library(lubridate)



#as.Date(parse_date_time(dates, c("ymd", "dmy")))
## [1] "2022-04-08" "2021-01-26" "2021-07-14" "2021-12-27"

#as.Date((parse_date_time(Customer_Final$DOB,  "dmy"))) #wrong corrupting orginal data 
## [1] "2022-04-08" "2021-01-26" "2021-07-14" "2021-12-27"

str(customer_final)
str(Customer_Final2)
is.Date(customer_Final3$DOB)
Customer_Final$DOB

#library(lubridate)
#day<-"31/08/2011"
#as.Date(parse_date_time(day,"dmy"))
#[1] "2011-08-31"
#nzd$date <- dmy(nzd$date)


as.Date(parse_date_time(customer_Final3$DOB,"dmy"))




is.Date(customer_Final3$DOB)




lubridate::parse_date_time(Customer_Final$tran_date,orders = c('dmy','dym','mdy','myd','ydm','ymd') )

Customer_Final$tran_date <- parse_date_time(Customer_Final$tran_date,orders = c('dmy','dym','mdy','myd','ydm','ymd') )


is.atomic(customer_final$tran_date)



#consults_dates$colum_name <- parse_date_time(consults_dates$colum_name, "dmy HM")
"
#Customer_Final$DOB <- parse_date_time(Customer_Final$DOB, "dmy")
is.Date(Customer_Final$DOB)

lubridate::parse_date_time(Customer_Final$DOB,orders = c('dmy') )
is.Date(Customer_Final$DOB)
is.character(Customer_Final$DOB)
Customer_Final$DOB <- parse_date_time(Customer_Final$DOB, 'dmy')


str(Customer_Final)



as.Date(Customer_Final$DOB)


is.Date(Customer_Final$DOB)


Customer_Final$age <- age_calc (Customer_Final$DOB,
                                Sys.Date(),
                                units = "years")

"

Customer_Final$DOB <- as.Date(parse_date_time(Customer_Final$DOB, c('dmy','dym','mdy','myd','ydm','ymd')))   #correct final
class((Customer_Final$DOB))

"
Customer_Final$Age <- ifelse(Customer_Final$tran_date-Customer_Final$DOB,Customer_Final$Age)

class(Customer_Final$tran_date)
Customer_Final$tran_date

Customer_Final$tran_date <- as.Date(parse_date_time(Customer_Final$tran_date, c('dmy','dym','mdy','myd','ydm','ymd')))   #correct final
class((Customer_Final$tran_date))

Customer_Final$Age <-  (Customer_Final$tran_date-Customer_Final$DOB) / years(1)

Customer_Finala4$profit_bank[Customer_Finala4$profit_bank <0] <- NA

Customer_Final$Age[Customer_Final$profit_bank <0] <- NA

Customer_Final$Age <- NULL

"

#require(lubridate)

#trunc((birth_date %--% x_date) / years(1))



lubridate:: 
  Customer_Final$Age2 <- trunc(Customer_Final$tran_date  %--% Customer_Final$DOB)/ years(1)

Customer_Final$Age2 <- trunc(Customer_Final$DOB  %--% Customer_Final$tran_date)/ years(1)    #correct final


#Q11  #11.	For all customers aged between 25 - 35, find out:
#a.	What was the total amount spent for "Electronics" and "Books" product categories?

#df %>% mutate(new_bin = cut(variable_name, breaks=3))

#Customer_Final  %>% 
#mutate(age2bin=cut(Age2,breaks = 5))



class(Customer_Final$Age2)

#exprs[] <- lapply(exprs, as.integer)

#Customer_Final[] <- lapply(Customer_Final$Age2, as.integer)

Customer_Final$Age2 <- lapply(Customer_Final$Age2, as.integer)


Customer_Final$Age2 <- as.numeric(Customer_Final$Age2)

class(Customer_Final$Age2)



Customer_Final <- Customer_Final  %>%                  #correct final
  mutate(age2bin=cut(Age2,breaks = c(0,5,10,15,20,25,30,35,40,45)))


userpurchase_bookelect <- Customer_Final   %>%                  
    select(age2bin,prodcat,total_amt)                  
    filter(prodcat="Electronics" & prodcat="Books" & Age2bin="(25,30]")
    summarise(suma6=sum(total_amt),prodcat)
     group_by(age2bin)
    distinct()
    ungroup()
    
    
    
    
    
    userpurchase_bookelect <- Customer_Final   %>%                  
      select(age2bin,prodcat,total_amt)  %>%                       
    filter(Customer_Final$prodcat="Electronics" & Customer_Final$prodcat="Books" ) %>%  
    summarise(suma6=sum(total_amt),prodcat) %>%  
    group_by(age2bin)%>%  
    distinct()%>%  
    ungroup()
    
    
    
    
    
    userpurchase_bookelect <- Customer_Final   %>%                  
      filter(Customer_Final$prodcat="Electronics" & Customer_Final$prodcat="Books" ) %>%  
            select(prodcat,total_amt,age2bin)  %>%                       
      summarise(suma6=sum(total_amt),prodcat) %>%  
      group_by(prodcat)%>%  
      distinct()%>%  
      ungroup()
    
    "
    userpurchase_bookelect <- Customer_Final   %>%                  
      filter(Customer_Final$prodcat="Electronics"  ) %>%  
      select(prodcat,total_amt,age2bin)  %>%                       
      summarise(suma6=sum(total_amt),prodcat) %>%  
      group_by(prodcat)%>%  
      distinct()%>%  
      ungroup()
    
    
    
    customers_malelectronics6 = Customer_Final2 %>%  #correct final
      filter(Customer_Final2$prod_cat == 'Electronics' & Customer_Final2$Gender == 'M' ) %>%
      select(Gender,prod_cat,total_amt) %>%
      #filter(Customer_Final2$Gender=="M") %>%
      summarise(total=sum(total_amt), prod_cat,Gender)  %>%  
      group_by(Gender) %>%
      distinct() %>%
      ungroup()
    
    
    "
    
    

    
    userpurchase_bookelect <- Customer_Final   %>%                  
      filter(Customer_Final$prodcat=="Electronics" & Customer_Final$prodcat=="Books" ) %>%  
      select(prodcat,total_amt,age2bin)  %>%                       
      summarise(suma6=sum(total_amt),prodcat,tototal_amt,age2bin) %>%  
      group_by(prodcat)%>%  
      distinct()%>%  
      ungroup()
    
    
    
    userpurchase_book <- Customer_Final   %>%                  
      as_tibble %>% 
      select(prodcat,total_amt,age2bin)  %>%       
      filter(Customer_Final$prodcat="Books" ) %>%  
      summarise(suma7=sum(total_amt),prodcat,age2bin) %>%  
      group_by()%>%  
      distinct()%>%  
      ungroup()
    
    class(Customer_Final$total_amt)
    
    
    

    #userpurchase_book <- Customer_Final   %>%    
      select(prod_cat,total_amt,age2bin) %>%
    group_by(prod_cat="Books",age2bin="(25,30]",prod_cat="Electronics",) %>%
    summarise(suma7=sum(total_amt),prod_cat) %>%
      distinct() %>%
    ungroup()
      
    
    
    userpurchase_book <- Customer_Final   %>%    #correct final
      select(prod_cat,total_amt,age2bin) %>%
      group_by(prod_cat="Books",age2bin="(25,30]") %>%
      summarise(suma7=sum(total_amt),prod_cat) %>%
      distinct() %>%
      ungroup()
    
    "
    userpurchase_bookfa <- Customer_Final   %>%    
      select(prod_cat,total_amt,age2bin) %>%
      group_by(prod_cat="Books",age2bin="(25,30]") %>%
      summarise(suma7=sum(total_amt)) %>%
      distinct() %>%
      ungroup()
    userpurchase_bookfa <- NULL
    "
    
    userpurchase_elect <- Customer_Final   %>%    #correct final
      select(prod_cat,total_amt,age2bin) %>%
      filter(age2bin=="(25,30]" ) %>%  
      group_by(prod_cat="Electronics") %>%
      summarise(suma8=sum(total_amt),prod_cat,age2bin) %>%
      distinct() %>%
      ungroup()
    
    
    userpurchase_bookf <- NULL
    userpurchase_book2 <- NULL
    
    user_prurchase_bookelct <- merge(x=userpurchase_book,y=userpurchase_elect,by="prod_cat",all = TRUE)
      
    user_prurchase_bookelct <- na.omit(user_prurchase_bookelct)
      
      
      
    user_prurchase_bookelct2 <- merge(x=userpurchase_book,y=userpurchase_elect,by="age2bin",all = TRUE) #correct final
    
    
    print("The total amount spent for Electronics and Books product categories is given by table user_prurchase_bookelct2")
    
      
      
    
    #Q11
    #b.	What was the total amount spent by these customers between 1st Jan, 2014 to 1st Mar, 2014?
    
   
    class(Customer_Final$tran_date)
    
    
    
    
     #userpurchase_book_D <- Customer_Final   %>%    
      select(prod_cat,total_amt,age2bin) %>%
      group_by(prod_cat="Books",age2bin="(25,30]") %>%
      summarise(suma7=sum(total_amt),prod_cat) %>%
      distinct() %>%
      ungroup()
    
    
    
     #userpurchase_elect_D<- Customer_Final   %>%    
       select(prod_cat,total_amt,age2bin) %>%
       filter(age2bin=="(25,30]" ) %>%  
       filter(tran_date= ) %>%  
        group_by(prod_cat="Electronics") %>%
       summarise(suma8=sum(total_amt),prod_cat,age2bin) %>%
       distinct() %>%
       ungroup()
     
    
     
     

     

     
     Customer_Final$Monthly_trans <- format(as.Date(Customer_Final$tran_date,format="%Y-%m-%d"),"%B")    #NOT NECESSARY
     
     
     Customer_Final$QTR_trans=if_else(Customer_Final$Monthly_trans=='January'|Customer_Final$Monthly_trans=='February'|Customer_Final$Monthly_trans=='March','QTR1',                                          #CORRECT ANS 
                         if_else(Customer_Final$Monthly_trans=='April'|Customer_Final$Monthly_trans=='May'|Customer_Final$Monthly_trans=='June','QTR2',
                                 if_else(Customer_Final$Monthly_trans=='July'|Customer_Final$Monthly_trans=='August'|Customer_Final$Monthly_trans=='September','QTR3',
                                         if_else(Customer_Final$Monthly_trans=='October'|Customer_Final$Monthly_trans=='November'|Customer_Final$Monthly_trans=='December','QTR4',NULL))))                                             
     
     
     
     
     Customer_Final$Yearly_trans <- format(as.Date(Customer_Final$tran_date,format="%Y-%m-%d"),"%Y")      #NOT NECESSARY
     
     
     
     
     
     #userpurchase_book_D <- Customer_Final   %>%    
       select(prod_cat,total_amt,age2bin) %>%
       group_by(prod_cat="Books",age2bin="(25,30]") %>%
       summarise(suma7=sum(total_amt),prod_cat) %>%
       distinct() %>%
       ungroup()
     
     
     #userpurchase_elect_D<- Customer_Final   %>%    
       select(prod_cat,total_amt,age2bin) %>%
       filter(age2bin=="(25,30]" ) %>%  
       filter(Yearly_trans="2014" ) %>% 
       Filter(QTR_trans="QTR1")
       group_by(prod_cat="Electronics") %>%
       summarise(suma8=sum(total_amt),prod_cat,age2bin) %>%
       distinct() %>%
       ungroup()
     
     
       #userpurchase_elect_D1<- Customer_Final   %>%   
         select(prod_cat,total_amt,age2bin) %>%
         filter(age2bin=="(25,30]" ) %>%  
         filter(Yearly_trans="2014" ) %>% 
         Filter(QTR_trans="QTR1")
       #group_by(prod_cat="Electronics") %>%
         summarise(suma8=sum(total_amt),prod_cat,age2bin) %>%
         distinct() %>%
         ungroup()
       
     
         
         
         
         
         subset(temp, date> "2014-12-03" & date < "2014-12-05")
     
         
         
        # userpurchase_elect_D<- Customer_Final   %>%    
           select(prod_cat,total_amt,age2bin) %>%
           subset(Customer_Final$tran_date, tran_date> "2014-01-01" & tran_date < "2014-03-01")  %>%    #1st Jan, 2014 to 1st Mar, 2014
                    #filter(age2bin=="(25,30]" ) %>%  
           #filter(Yearly_trans="2014" ) %>% 
           #Filter(QTR_trans="QTR1")
         group_by(prod_cat="Electronics") %>%
         summarise(suma8=sum(total_amt),prod_cat,age2bin) %>%
           distinct() %>%
           ungroup()
         
         
         
         filter(mydf, between(date, as.Date("2014-12-02"), as.Date("2014-12-05")))
         
         
         #userpurchase_elect_D <- Customer_Final   %>%    
           select(prod_cat,total_amt,age2bin) %>%
           filter(age2bin=="(25,30]" ) %>%  
           filter( between(tran_date, as.Date("2014-01-01"), as.Date("2014-03-01")))   %>%
           group_by(prod_cat="Electronics") %>%
           summarise(suma10=sum(total_amt),prod_cat,age2bin) %>%
           distinct() %>%
           ungroup()
         
         
         
         filter(mydf, date >= "2014-12-02", date <= "2014-12-05")
         filter(mydf, date >= "2014-12-02" & date <= "2014-12-05")
         
         
         
         userpurchase_elect_D <- Customer_Final   %>%    #correct check
           select(prod_cat,total_amt,age2bin) %>%
           filter(age2bin=="(25,30]" &  Customer_Final$tran_date >= "2014-01-01", Customer_Final$tran_date <= "2014-03-01") %>%  
           #filter(Customer_Final, tran_date >= "2014-01-01", tran_date <= "2014-03-01")
         #filter(mydf, tran_date >= "2014-12-02" & tran_date <= "2014-12-05")
           #filter( between(tran_date, as.Date("2014-01-01"), as.Date("2014-03-01")))   %>%
           group_by(prod_cat="Electronics") %>%
           summarise(suma11=sum(total_amt),prod_cat,age2bin) %>%
           distinct() %>%
           ungroup()
         
         
         
         userpurchase_BOOK_D <- Customer_Final   %>%    #correct check
           select(prod_cat,total_amt,age2bin) %>%
           filter(age2bin=="(25,30]" &  Customer_Final$tran_date >= "2014-01-01", Customer_Final$tran_date <= "2014-03-01") %>%  
           #filter(Customer_Final, tran_date >= "2014-01-01", tran_date <= "2014-03-01")
           #filter(mydf, tran_date >= "2014-12-02" & tran_date <= "2014-12-05")
           #filter( between(tran_date, as.Date("2014-01-01"), as.Date("2014-03-01")))   %>%
           group_by(prod_cat="Books") %>%
           summarise(suma12=sum(total_amt),prod_cat,age2bin) %>%
           distinct() %>%
           ungroup()
         
         
         
         
         
         
         userpurchase_book_D1 <- Customer_Final   %>%       #correct final
         select(prod_cat,total_amt,age2bin) %>%
           group_by(prod_cat="Books",age2bin="(25,30]") %>%
           filter(Customer_Final$tran_date >= "2014-01-01", Customer_Final$tran_date <= "2014-03-01") %>%  
           summarise(suma14=sum(total_amt),prod_cat) %>%
           distinct() %>%
           ungroup()
         
         
         
         userpurchase_elect_D1 <- Customer_Final   %>%     #correct final
           select(prod_cat,total_amt,age2bin) %>%
           group_by(prod_cat="Electronics",age2bin="(25,30]") %>%
           filter(Customer_Final$tran_date >= "2014-01-01" , Customer_Final$tran_date <= "2014-03-01") %>%  
           summarise(suma15=sum(total_amt),prod_cat) %>%
           distinct() %>%
           ungroup()
         
         User_prurchase_bookelct_DATE2014 <-  merge(x=userpurchase_book_D1,y=userpurchase_elect_D1,by="age2bin",all = TRUE) #correct final

         #User_prurchase_bookelct_DATE2014Q1 <- NULL
         
         
         print("The total amount spent for Electronics and Books product categories in 2014 between 1 jan and 1 march is given by table User_prurchase_bookelct_DATE2014 ")
         