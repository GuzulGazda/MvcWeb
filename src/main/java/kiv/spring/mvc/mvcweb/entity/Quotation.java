package kiv.spring.mvc.mvcweb.entity;

import java.io.Serializable;
import javax.persistence.Column;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="quotation")
public class Quotation implements Serializable{

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name = "message", nullable = false, length=5000)
	private String message;
	
	@Column(name="author", nullable = false, length=1000)
	private String author;
	
	
	public Quotation() {
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}



	@Override
	public String toString() {
		return "Customer [id=" + id + ", firstName=" + message + ", lastName=" + author + "]";
	}
}





