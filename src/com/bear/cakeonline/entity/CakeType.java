package com.bear.cakeonline.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name="caketype")
public class CakeType {
	private int id;
	private String name;
	private Set cakeSet = new HashSet<Cake>();
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	@OneToMany(mappedBy="cakeType", targetEntity=Cake.class, 
	            cascade=CascadeType.ALL)
	public Set getCakeSet() {
		return cakeSet;
	}
	public void setCakeSet(Set cakeSet) {
		this.cakeSet = cakeSet;
	}
	
	
	
}
