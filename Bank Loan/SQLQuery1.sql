select * from bank_loan_data

select count(id) as total_loan_applicaions from bank_loan_data

select count(id) as mtd_total_loan_applications from bank_loan_data where MONTH(issue_date) = 12 and YEAR(issue_date)=2021

select count(id) as pmtd_total_loan_applications from bank_loan_data where MONTH(issue_date) = 11 and YEAR(issue_date)=2021

select sum(loan_amount) as total_funded_amnt from bank_loan_data

select sum(loan_amount) as mtd_total_funded_amnt from bank_loan_data where month(issue_date)=12 and year(issue_date)=2021

select sum(loan_amount) as pmtd_total_funded_amnt from bank_loan_data where month(issue_date)=11 and year(issue_date)=2021

select sum(total_payment) as total_amnt_received from bank_loan_data

select sum(total_payment) as mtd_total_amnt_received from bank_loan_data where month(issue_date)=12 and year(issue_date)=2021

select avg(int_rate) as avg_interest_rate from bank_loan_data

select avg(int_rate) * 100 as avg_interest_rate from bank_loan_data

select round(avg(dti),4) * 100 as avg_dti from bank_loan_data

select (count(case when loan_status='Fully Paid' or loan_status='Current' then id end)*100)
/
count(id) as good_loan_percentage from bank_loan_data

select count(id) as good_loan_applications from bank_loan_data where loan_status = 'Fully Paid' or loan_status='Current'

select sum(loan_amount) as good_loan_funded_amnt from bank_loan_data where loan_status = 'Fully Paid' or loan_status='Current'

select sum(total_payment) as good_loan_amnt_received from bank_loan_data where loan_status = 'Fully Paid' or loan_status='Current'

select
(count(case when loan_status='Charged Off' then id end)*100)/
count(id) as bad_loan_per from bank_loan_data

select count(id) as bad_loan_applications from bank_loan_data where loan_status='Charged Off'

select sum(loan_amount) as bad_loan_funded_amnt from bank_loan_data where loan_status='Charged Off'

select sum(total_payment) as bad_loan_amnt_received from bank_loan_data where loan_status ='Charged Off'





