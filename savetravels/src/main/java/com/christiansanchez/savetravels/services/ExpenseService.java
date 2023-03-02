package com.christiansanchez.savetravels.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.christiansanchez.savetravels.models.Expense;
import com.christiansanchez.savetravels.repositories.ExpenseRepository;

@Service
public class ExpenseService {
	
	
	@Autowired
	private ExpenseRepository expenseRepo;
	
	
	//create expense
	public Expense addExpense(Expense newExpense) {
		return expenseRepo.save(newExpense);
	}
	
	
	//get one expense
	public Expense oneExpense(Long id) {
		Optional<Expense> optionalExpense = expenseRepo.findById(id);
		if(optionalExpense.isPresent()) {
			return optionalExpense.get();
		}else {
			return null;
		}
	}
	
	
	//get all expenses
	public List<Expense> allExpenses(){
		return expenseRepo.findAll();
	}
	
	
	//edit expense
	public Expense editExpense(Expense foundExpense) {
		return expenseRepo.save(foundExpense);
	}
	
	
	//delete expense
	public void deleteExpense(Long id) {
		expenseRepo.deleteById(id);
	}

}
