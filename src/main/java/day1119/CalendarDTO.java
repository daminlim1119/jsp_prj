package day1119;

public class CalendarDTO {
	
	private int year,month;

	public CalendarDTO() {
		super();
	}

	public CalendarDTO(int year, int month) {
		super();
		this.year = year;
		this.month = month;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public int getMonth() {
		return month;
	}

	public void setMonth(int month) {
		this.month = month;
	}

	@Override
	public String toString() {
		return "CalendarDTO [year=" + year + ", month=" + month + "]";
	}

	

	
	
	

}
