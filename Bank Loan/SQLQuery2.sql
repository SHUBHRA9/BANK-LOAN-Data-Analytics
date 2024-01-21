select * from bank_loan_data

select 
	month(issue_date) as month_number,
	DATENAME(month,issue_date) as month_name,
	count(id) as total_loan_applications,
	sum(loan_amount) as total_funded_amount,
	sum(total_payment) as total_received_amount
from bank_loan_data
group by month(issue_date), DATENAME(month,issue_date)
order by month(issue_date) 

select 
	address_state,
	count(id) as total_loan_applications,
	sum(loan_amount) as total_funded_amount,
	sum(total_payment) as total_received_amount
from bank_loan_data
group by address_state
order by sum(loan_amount) desc

select 
	term,
	count(id) as total_loan_applications,
	sum(loan_amount) as total_funded_amount,
	sum(total_payment) as total_received_amount
from bank_loan_data
group by term
order by term

select 
	emp_length,
	count(id) as total_loan_applications,
	sum(loan_amount) as total_funded_amount,
	sum(total_payment) as total_received_amount
from bank_loan_data
group by emp_length
order by emp_length desc

select 
	purpose,
	count(id) as total_loan_applications,
	sum(loan_amount) as total_funded_amount,
	sum(total_payment) as total_received_amount
from bank_loan_data
group by purpose
order by purpose

select 
	home_ownership,
	count(id) as total_loan_applications,
	sum(loan_amount) as total_funded_amount,
	sum(total_payment) as total_received_amount
from bank_loan_data
group by home_ownership
order by home_ownership
















