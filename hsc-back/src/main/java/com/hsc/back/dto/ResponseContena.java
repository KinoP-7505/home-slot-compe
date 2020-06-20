package com.hsc.back.dto;


import lombok.Data;

//
// レスポンスを返すクラス
//
@Data
public class ResponseContena<V, W> {
    private final V v;
    private final W w;
    
//    ResponseContena(V v, W w) {
//        this.v = v;
//        this.w = w;
//    }
    
//    public V getV() {
//        return v;
//    }
//    
//    public W getW() {
//        return w;
//    }
}
