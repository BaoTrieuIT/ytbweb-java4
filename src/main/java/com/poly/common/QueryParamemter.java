package com.poly.common;
import jakarta.persistence.TemporalType;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class QueryParamemter {
	private String key;
	private Object value;
	private TemporalType temporalType;
	private int posistion;
	
	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public Object getValue() {
		return value;
	}

	public void setValue(Object value) {
		this.value = value;
	}

	public TemporalType getTemporalType() {
		return temporalType;
	}

	public void setTemporalType(TemporalType temporalType) {
		this.temporalType = temporalType;
	}

	public int getPosistion() {
		return posistion;
	}

	public void setPosistion(int posistion) {
		this.posistion = posistion;
	}

	public QueryParamemter(String key, Object value) {
		this.key=key;
		this.value=value;
	}
	
	public QueryParamemter(int posistion, Object value) {
		this.posistion = posistion;
		this.value=value;
	}

	public QueryParamemter(String key, Object value, TemporalType temporalType) {
		this.key = key;
		this.value = value;
		this.temporalType = temporalType;
	}
}