package com.ibm.icp.coc;

public class User {
	
	private String id;
	private String first;
	private String last;
	private String address;
	private String city;
	private String state;
	private String zip;
	private String employer;
	private int years;
	private int cards;
	private float currentDebt;
	private float currentLoans;
	private float loanAmount;
	private int expMonth;
	
	public User( String id, String first, String last) {
		this.id = id;
		this.first = first;
		this.last = last;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getFullName() {
		return first + " " + last;
	}
	public String getFirst() {
		return first;
	}
	public void setFirst(String first) {
		this.first = first;
	}
	public String getLast() {
		return last;
	}
	public void setLast(String last) {
		this.last = last;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getZip() {
		return zip;
	}
	public void setZip(String zip) {
		this.zip = zip;
	}
	public String getEmployer() {
		return employer;
	}
	public void setEmployer(String employer) {
		this.employer = employer;
	}
	public int getYears() {
		return years;
	}
	public void setYears(int years) {
		this.years = years;
	}
	public int getCards() {
		return cards;
	}
	public void setCards(int cards) {
		this.cards = cards;
	}
	public float getCurrentDebt() {
		return currentDebt;
	}
	public void setCurrentDebt(float currentDebt) {
		this.currentDebt = currentDebt;
	}
	public float getCurrentLoans() {
		return currentLoans;
	}
	public void setCurrentLoans(float currentLoans) {
		this.currentLoans = currentLoans;
	}
	public float getLoanAmount() {
		return loanAmount;
	}
	public void setLoanAmount(float loanAmount) {
		this.loanAmount = loanAmount;
	}
	public int getExpMonth() {
		return expMonth;
	}
	public void setExpMonth(int expMonth) {
		this.expMonth = expMonth;
	}
	
	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder();
		sb.append("User: ");
		sb.append(id);
		sb.append("\nName: ").append(first).append(" ").append(last).append("\n");
		sb.append("Addr: ").append(address).append(" ").append(state).append(" ").append(zip).append("\n");
		sb.append("Employer: ").append(employer).append(" ").append(years).append(" yrs.\n");
		sb.append("Cards: ").append(cards).append(" Current Debt: ").append(currentDebt).append(" Current Loans: ").append(currentLoans).append("\n");
		sb.append("Loan Amount: ").append(loanAmount).append(" Exp Month: ").append(expMonth);
		return sb.toString();
	}
	

}
