package com.biz.iolist.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class IoVO {
	
	private long seq;
	private String io_date;
	private String io_time;
	private String io_input;
	private String io_pname;
	private long io_price;
	private long io_quan;
	private long io_total;
	
}
