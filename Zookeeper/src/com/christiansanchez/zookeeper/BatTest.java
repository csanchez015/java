package com.christiansanchez.zookeeper;

public class BatTest {

	public static void main(String[] args) {
		
		System.out.println("------Bat Test------");
		Bat bat1 = new Bat();
		
		bat1.displayEnergy();
		
		bat1.fly().attackTown().eatHumans()
		.attackTown().fly().attackTown()
		.eatHumans();
		
		bat1.displayEnergy();
		
	}

}

