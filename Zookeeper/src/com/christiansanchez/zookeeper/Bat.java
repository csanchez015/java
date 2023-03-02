package com.christiansanchez.zookeeper;

public class Bat extends Mammal{ //SUBCLASS
	
	//2. constructors
	public Bat() {
		super.setEnergyLevel(300);
	}
	
	//Methods
	public Bat fly() {
		System.out.println("Screeeech!");
		this.setEnergyLevel(this.getEnergyLevel()-50);
		return this;
	}
	
	public Bat eatHumans() {
		System.out.println("AHHHH I'M GETTING EATEN!");
		this.setEnergyLevel(this.getEnergyLevel()+25);
		return this;
	}
	
	public Bat attackTown() {
		System.out.println("The town is on fire!");
		this.setEnergyLevel(this.getEnergyLevel()-100);
		return this;
	}

}

