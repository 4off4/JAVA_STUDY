package com.icia.web.servlet;

import java.util.Calendar;

public class CalendarBean {
		private Calendar cal;
		
		public CalendarBean()
		{
			cal = Calendar.getInstance();
		}
		
		//올해 년도 
		public int getYear() {
			return cal.get(Calendar.YEAR);
		}
		
		public int getMonth() {
			return cal.get(Calendar.MONTH) +1;
		}
		
		public int getDay() {
			return cal.get(Calendar.DATE);
		}
}
