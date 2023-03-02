package com.christiansanchez.dojosandninjas.services;


import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.christiansanchez.dojosandninjas.models.Dojo;
import com.christiansanchez.dojosandninjas.models.Ninja;
import com.christiansanchez.dojosandninjas.repositories.NinjaRepository;

@Service
public class NinjaService {

	@Autowired
	private NinjaRepository ninjaRepo;
	
	
	public NinjaService(NinjaRepository ninjaRepo) {
		this.ninjaRepo = ninjaRepo;
	}
	
	
	//create ninja
	public Ninja addNinja(Ninja ninja) {
		return ninjaRepo.save(ninja);
	}
	
	
	//get all ninjas
	public List<Ninja> allNinjas(){
		return ninjaRepo.findAll();
	}
	
	
	//update ninja
	public Ninja updateNinja(Ninja ninja) {
		return ninjaRepo.save(ninja);
	}
	
	
	//delete ninja
	public void deleteNinja(Ninja ninja) {
		ninja.setDojo(null);
		ninjaRepo.save(ninja);
	}
	
	
	//find ninja by dojo id
	public List<Ninja> dojoNinjas(Long dojoId){
		return ninjaRepo.findByDojoIdIs(dojoId);
	}
		
		
	//add ninja to dojo
	public void addToDojo(Ninja ninja, Dojo dojo) {
		ninja.setDojo(dojo);
		ninjaRepo.save(ninja);
	}
	
	
	//find ninja by id
	public Ninja findNinja(Long id) {
		Optional<Ninja> optionalNinja = ninjaRepo.findById(id);
		if(optionalNinja.isPresent()) {
			return optionalNinja.get();
		}else {
			return null;
		}
	}

}
