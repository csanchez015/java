package com.christiansanchez.zookeeper;

public class Gorilla extends Mammal{ //SUBCLASS


	//2. constructors
	public Gorilla() {
		super.displayEnergy();
	}
	
	//Methods
	public Gorilla throwSomething() {
		System.out.println("The gorilla has thrown something!");
		this.setEnergyLevel(this.getEnergyLevel()-5);
		return this;
	}
	
	public Gorilla eatBananas() {
		System.out.println("Yummm the gorilla has eaten! The gorilla is satisfied!");
		this.setEnergyLevel(this.getEnergyLevel()+10);
		return this;
	}

	public Gorilla climb() {
		System.out.println("The gorilla climbed a tree!");
		this.setEnergyLevel(this.getEnergyLevel()-10);
		return this;
	}

}
