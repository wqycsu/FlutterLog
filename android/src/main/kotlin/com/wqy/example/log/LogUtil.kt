package com.wqy.example.log

import android.util.Log

object LogUtil {
    fun log(level: Int, tag: String, message: String) {
        when (level) {
            0 -> Log.v(tag, message)
            1 -> Log.d(tag, message)
            2 -> Log.i(tag, message)
            3 -> Log.w(tag, message)
            4 -> Log.e(tag, message)
            else -> {
                Log.e("LogUtil", "error log level!!!")
                Log.i(tag, message)
            }
        }
    }
}