package com.christiansanchez.zookeeper;

public class GorillaTest {
		
	public static void main(String[] args) {
				
		System.out.println("------Gorilla Test------");
		Gorilla gorilla1 = new Gorilla();
				
		gorilla1.throwSomething().eatBananas().throwSomething()
		.climb().eatBananas().throwSomething();
		
		gorilla1.displayEnergy();
				
	}

}













