package com.jsp.foodapp.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jsp.foodapp.dto.FoodOrder;

@Repository
public class FoodOrderDao {
	@Autowired
	EntityManagerFactory emf;
	public List<FoodOrder> getallfoodorders(){
		EntityManager em=emf.createEntityManager();
		Query q=em.createQuery("Select f from FoodOrder f");
		return q.getResultList();
	}
}
