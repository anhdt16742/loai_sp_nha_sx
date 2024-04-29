package com.example.duantn.model;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "SanPham")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Data
public class SanPham extends BaseModel {
    @Column(name = "Ma")
    private String ma;

    @Column(name = "Ten")
    private String ten;

    @Column(name = "MoTa")
    private String moTa;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "IdDotKhuyenMai", referencedColumnName = "Id")
    private DotKhuyenMai dotKhuyenMai;

}
