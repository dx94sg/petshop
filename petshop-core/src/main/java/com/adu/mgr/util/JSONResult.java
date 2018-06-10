package com.adu.mgr.util;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class JSONResult {

    private boolean success = true;//是否响应成功
    private String msg;//错误信息
    private Object data;

    public JSONResult() {
    }

    public void mark(String msg) {
        this.success = false;
        this.msg = msg;
    }

}
