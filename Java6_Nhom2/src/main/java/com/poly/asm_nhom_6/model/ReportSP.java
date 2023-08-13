package com.poly.asm_nhom_6.model;

import java.io.Serializable;

import javax.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@Data
@AllArgsConstructor
@NoArgsConstructor
public class ReportSP {
	@Id
	Serializable group;
	Long sum;
	Long count;
}
