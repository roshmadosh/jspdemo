package link.hiroshisprojects.jspdemo;

public class FunUtils {

	public static String makeLowerCase(String string) {
		return string.toLowerCase();
	}
	
	public enum Country {
		USA ("United States"),
		UK ("United Kingdom"),
		JAPAN ("Japan"),
		S_KOREA ("South Korea"),
		GHANA ("Ghana");
		
		private final String label;
		
		Country(String label) {
			this.label = label;
		}
		
		public String getLabel() {
			return label;
		}
	}
}
