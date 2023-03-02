package com.christiansanchez.dojosandninjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.christiansanchez.dojosandninjas.models.Dojo;

import com.christiansanchez.dojosandninjas.repositories.DojoRepository;

@Service
public class DojoService {

	@Autowired
	private DojoRepository dojoRepo;
	
	
	public DojoService(DojoRepository dojoRepo) {
		this.dojoRepo = dojoRepo;
	}
	
	
	//get all dojos
	public List<Dojo> allDojos(){
		return dojoRepo.findAll();
	}
	
	
	//create dojo
	public Dojo addDojo(Dojo dojo) {
		return dojoRepo.save(dojo);
	}
	
	
	//find dojo by id
	public Dojo oneDojo(Long id) {
		Optional<Dojo> optionalDojo = dojoRepo.findById(id);
		if(optionalDojo.isPresent()) {
			return optionalDojo.get();
		}else {
			return null;
		}
	}
	
	
}
