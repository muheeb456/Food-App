package com.jsp.foodapp.dao;


import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceException;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jsp.foodapp.dto.User;

@Repository
public class UserDao {
	@Autowired
	EntityManagerFactory emf;
	
	public boolean adduser(User u) {
		EntityManager em= emf.createEntityManager();
		EntityTransaction et=em.getTransaction();
		
		et.begin();
		try{
			em.persist(u);
		}
		catch(PersistenceException s) {
			return false;
		}
		et.commit();
		return true;
	}
	
	public User loginuser(String email, String password) {
		EntityManager em= emf.createEntityManager();
		
		Query q=em.createQuery("Select u from User u where u.email=?1 and u.password=?2");
		q.setParameter(1, email);
		q.setParameter(2, password);
		
		try {
			return (User)q.getSingleResult();
		} catch (NoResultException e) {
			return null;
		}
	}
	
	public void updateuser(User u) {
		EntityManager em=emf.createEntityManager();
		EntityTransaction et=em.getTransaction();
		
		et.begin();
		em.merge(u);
		et.commit();
	}
	
	
}
