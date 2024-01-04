package com.jsp.foodapp.dao;

import java.util.List;

import javax.persistence.EntityExistsException;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import com.jsp.foodapp.dto.Product;

@Repository
public class ProductDao {
	@Autowired
	EntityManagerFactory emf;
	
	public boolean saveprod(Product p) {
		EntityManager em= emf.createEntityManager();
		EntityTransaction et= em.getTransaction();
		
		et.begin();
		try {
			em.persist(p);
			et.commit();
			return true;
		} catch (EntityExistsException e) {
			return false;
		}
	}
	
	public List<Product> getproducts(){
		EntityManager em=emf.createEntityManager();
		Query q=em.createQuery("Select p from Product p");
		return q.getResultList();
	}
	
	public Product getproductbyid(int id) {
		EntityManager em= emf.createEntityManager();
		Product p= em.find(Product.class, id );
		return p;
	}
	
	public boolean updateproduct(Product p) {
		EntityManager entityManager= emf.createEntityManager();
		EntityTransaction et= entityManager.getTransaction();
		
		et.begin();
		try {
			entityManager.merge(p);
			et.commit();
			return true;
		} catch (IllegalArgumentException e) {
			return false;
		}
	}
	
	public void deletebyid(int id) {
		EntityManager entityManager= emf.createEntityManager();
		EntityTransaction et= entityManager.getTransaction();
		
		et.begin();
		entityManager.remove(entityManager.find(Product.class, id));
		et.commit();
	}
	
	
}
