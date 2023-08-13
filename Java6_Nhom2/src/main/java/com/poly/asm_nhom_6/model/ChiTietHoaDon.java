package com.poly.asm_nhom_6.model;

import java.io.Serializable;

import com.fasterxml.jackson.annotation.JsonBackReference;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "Chi_Tiet_Hoa_Don")
public class ChiTietHoaDon implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ma_chi_tiet_hoa_don")
	Integer maHoaDonChiTiet;

	@Column(name = "so_luong")
	Integer soLuong;

	@Column(name = "gia_ban")
	Integer giaBan;

	@Column(name = "gia_nhap")
	Integer giaNhap;

	@ManyToOne
	@JoinColumn(name = "ma_hoa_don")
	@JsonBackReference
	HoaDon hoaDon;

	@ManyToOne
	@JoinColumn(name = "ma_sp")
	@JsonBackReference
	SanPham sanPham;
}
