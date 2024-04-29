package com.example.duantn.request;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class PhanTrangRequest {
    private Integer currentPage;
    private Integer pageLimit;

}
