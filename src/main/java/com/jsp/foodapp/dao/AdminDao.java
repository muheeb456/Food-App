package com.jsp.foodapp.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jsp.foodapp.dto.Admin;

@Repository
public class AdminDao {
	@Autowired
	EntityManagerFactory emf;
	
	public void addAdmin(Admin admin) {
		EntityManager em= emf.createEntityManager();
		EntityTransaction et= em.getTransaction();
		
		et.begin();
		em.persist(admin);
		et.commit();
	}
	
	public Admin getAdmin(String email, String password) {
		EntityManager em= emf.createEntityManager();
		Query q=em.createQuery("Select a from Admin a where a.email=?1 and a.password=?2");
		q.setParameter(1, email);
		q.setParameter(2, password);
		try {
			return (Admin) q.getSingleResult();
			
		} catch (NoResultException e) {
			return null;
		}
	}
}
