//
//  LoggingHelper.swift
//  DENT
//
//  Created by Thomas Dingler on 16.02.15.
//  Copyright (c) 2015 TDSoftware GmbH. All rights reserved.
//

import UIKit

enum LoggingLevel {
    case Debug
    case Info
    case Warning
    case Error
}

func TDLogError(_ format: String,
                fileName: String = #file,
                line: Int = #line,
                funcName: String = #function) {
    TDLogWithLevel(LoggingLevel.Error, format: format,
                   fileName: fileName,
                   line: line,
                   funcName: funcName)
}

func TDLogDebug(_ format: String,
                fileName: String = #file,
                line: Int = #line,
                funcName: String = #function) {
    TDLogWithLevel(LoggingLevel.Debug,
                   format: format,
                   fileName: fileName,
                   line: line,
                   funcName: funcName)
}

func TDLogInfo(_ format: String,
               fileName: String = #file,
               line: Int = #line,
               funcName: String = #function) {
    TDLogWithLevel(LoggingLevel.Info,
                   format: format,
                   fileName: fileName,
                   line: line, funcName: funcName)
}

func TDLogWarning(_ format: String,
                  fileName: String = #file,
                  line: Int = #line,
                  funcName: String = #function) {
    TDLogWithLevel(LoggingLevel.Warning,
                   format: format,
                   fileName: fileName,
                   line: line,
                   funcName: funcName)
}

func TDLogWithLevel(_ level : LoggingLevel,
                    format: String,
                    fileName: String = #file,
                    line: Int = #line,
                    funcName: String = #function) {
    let log = logStringWithFormatting(level,
                                      logString: format,
                                      fileName: fileName,
                                      line: line,
                                      funcName: funcName)
    print(log)
}

fileprivate func prefixForLevel(_ level : LoggingLevel) -> String {
    switch level {
        case .Info: return "INFO"
        case .Warning: return "WARNING"
        case .Error: return "ERROR"
        case .Debug: return "DEBUG"
    }
}

fileprivate func logStringWithFormatting(_ level: LoggingLevel, logString : String, fileName: String, line: Int, funcName: String) -> String {
    let prefix = prefixForLevel(level)
    let lastPathComponentOfFileName = (fileName as NSString).lastPathComponent
    let formatWithPrefixAndCaller = "[\(prefix)] \(logString) \n{{at \(lastPathComponentOfFileName):\(funcName):\(line)}}"
    
    let datetime = NSDate()
    return "\(datetime)| \(formatWithPrefixAndCaller)"
}
