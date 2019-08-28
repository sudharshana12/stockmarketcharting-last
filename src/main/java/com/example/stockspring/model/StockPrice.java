package com.example.stockspring.model;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="stockpricedetail")
public class StockPrice {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="stockcode")
	private int stockCode;
	@Column(name="company_code")
	private int companyCode;
	@Column(name="current_price")
	private double currentPrice;
	@Column(name="stock_exchange_name")
	private String stockExchange;
	@Column(name="date")
	private Date date;

	/*
	 * @ManyToOne(cascade = CascadeType.ALL )
	 * 
	 * @JoinColumn(name="company_code")
	 */
	// public Company company;

	// @Column(name = "company_code")
	

	public int getCompanyCode() {
		return companyCode;
	}

	public void setCompanyCode(int companyCode) {
		this.companyCode = companyCode;
	}

	public String getStockExchange() {
		return stockExchange;
	}

	public void setStockExchange(String stockExchange) {
		this.stockExchange = stockExchange;
	}

	public double getCurrentPrice() {
		return currentPrice;
	}

	public void setCurrentPrice(double currentPrice) {
		this.currentPrice = currentPrice;
	}

	/*
	 * public int getStockCode() { return stockCode; }
	 * 
	 * public void setStockCode(int stockCode) { this.stockCode = stockCode; }
	 * 
	 */

	public void setDate(Date date) {
		this.date = date;
	}

	public Date getDate() {
		return date;
	}

}
