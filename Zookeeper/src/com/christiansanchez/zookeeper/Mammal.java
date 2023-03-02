package com.christiansanchez.zookeeper;

public class Mammal { //SUPERCLASS
	
	//1. attributes
	private int energyLevel;
	
	//2. constructors
	public Mammal() {
		this.energyLevel = 100;
	}
	
	//Methods
	public void displayEnergy() {
		System.out.println("Energy Level: " + this.energyLevel);
	}

	//3. getters/setters
	public int getEnergyLevel() {
		return energyLevel;
	}

	public void setEnergyLevel(int energyLevel) {
		this.energyLevel = energyLevel;
	}
	
}
