//
//  DateIntervalOperators.swift
//  SyncTime
//
//  Created by Tim Schmitz on 2/2/15.
//  Copyright (c) 2015 Tap and Tonic. All rights reserved.
//

import Foundation

extension Int {
	func day() -> NSDateComponents {
		let components = NSDateComponents()
		components.day = self
		return components
	}
	func days() -> NSDateComponents { return self.day() }
	
	func week() -> NSDateComponents {
		let components = NSDateComponents()
		components.weekOfYear = self
		return components
	}
	func weeks() -> NSDateComponents { return self.week() }
	
	func month() -> NSDateComponents {
		let components = NSDateComponents()
		components.month = self
		return components
	}
	func months() -> NSDateComponents { return self.month() }
	
	func year() -> NSDateComponents {
		let components = NSDateComponents()
		components.year = self
		return components
	}
	func years() -> NSDateComponents { return self.year() }
	
	func second() -> NSDateComponents {
		let components = NSDateComponents()
		components.second = self
		return components
	}
	func seconds() -> NSDateComponents { return self.second() }
	
	func minute() -> NSDateComponents {
		let components = NSDateComponents()
		components.minute = self
		return components
	}
	func minutes() -> NSDateComponents { return self.minute() }
	
	func hour() -> NSDateComponents {
		let components = NSDateComponents()
		components.hour = self
		return components
	}
	func hours() -> NSDateComponents { return self.hour() }
}

func +(lhs: NSDate, rhs: NSDateComponents) -> NSDate {
	return NSCalendar.currentCalendar().dateByAddingComponents(rhs, toDate: lhs, options: nil) ?? lhs
}

func -(lhs: NSDate, rhs: NSDateComponents) -> NSDate {
	if rhs.era != Int(NSUndefinedDateComponent) { rhs.era *= -1 }
	if rhs.year != Int(NSUndefinedDateComponent) { rhs.year *= -1 }
	if rhs.month != Int(NSUndefinedDateComponent) { rhs.month *= -1 }
	if rhs.day != Int(NSUndefinedDateComponent) { rhs.day *= -1 }
	if rhs.hour != Int(NSUndefinedDateComponent) { rhs.hour *= -1 }
	if rhs.minute != Int(NSUndefinedDateComponent) { rhs.minute *= -1 }
	if rhs.second != Int(NSUndefinedDateComponent) { rhs.second *= -1 }
	if rhs.nanosecond != Int(NSUndefinedDateComponent) { rhs.nanosecond *= -1 }
	if rhs.weekday != Int(NSUndefinedDateComponent) { rhs.weekday *= -1 }
	if rhs.weekdayOrdinal != Int(NSUndefinedDateComponent) { rhs.weekdayOrdinal *= -1 }
	if rhs.quarter != Int(NSUndefinedDateComponent) { rhs.quarter *= -1 }
	if rhs.weekOfMonth != Int(NSUndefinedDateComponent) { rhs.weekOfMonth *= -1 }
	if rhs.weekOfYear != Int(NSUndefinedDateComponent) { rhs.weekOfYear *= -1 }
	if rhs.yearForWeekOfYear != Int(NSUndefinedDateComponent) { rhs.yearForWeekOfYear *= -1 }
	
	return NSCalendar.currentCalendar().dateByAddingComponents(rhs, toDate: lhs, options: nil) ?? lhs
}