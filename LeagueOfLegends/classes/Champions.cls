public class Champions {

	public class Seraphine {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		@AuraEnabled public Stats_AAZ stats {get;set;} 

		public Seraphine(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_AAZ(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Seraphine consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Image {
		@AuraEnabled public String full {get;set;} 
		@AuraEnabled public String sprite {get;set;} 
		@AuraEnabled public String group_Z {get;set;} // in json: group
		@AuraEnabled public Integer x {get;set;} 
		@AuraEnabled public Integer y {get;set;} 
		@AuraEnabled public Integer w {get;set;} 
		@AuraEnabled public Integer h {get;set;} 

		public Image(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'full') {
							full = parser.getText();
						} else if (text == 'sprite') {
							sprite = parser.getText();
						} else if (text == 'group') {
							group_Z = parser.getText();
						} else if (text == 'x') {
							x = parser.getIntegerValue();
						} else if (text == 'y') {
							y = parser.getIntegerValue();
						} else if (text == 'w') {
							w = parser.getIntegerValue();
						} else if (text == 'h') {
							h = parser.getIntegerValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Image consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Kaisa {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		public Stats_AW stats {get;set;} 

		public Kaisa(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_AW(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Kaisa consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Fiora {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		public Stats_H stats {get;set;} 

		public Fiora(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_H(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Fiora consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Jhin {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		public Stats_AY stats {get;set;} 

		public Jhin(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_AY(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Jhin consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class LeeSin {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		public Stats_AS stats {get;set;} 

		public LeeSin(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_AS(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'LeeSin consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Ornn {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		public Stats_AI stats {get;set;} 

		public Ornn(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_AI(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Ornn consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class MissFortune {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		public Stats_AM stats {get;set;} 

		public MissFortune(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_AM(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'MissFortune consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Senna {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		public Stats_AA stats {get;set;} 

		public Senna(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_AA(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Senna consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Draven {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		public Stats_L stats {get;set;} 

		public Draven(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_L(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Draven consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Rell {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		public Stats_AE stats {get;set;} 

		public Rell(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_AE(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Rell consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Hecarim {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		public Stats_C stats {get;set;} 

		public Hecarim(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_C(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Hecarim consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Fizz {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		public Stats_G stats {get;set;} 

		public Fizz(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_G(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Fizz consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	@AuraEnabled public String type_Z {get;set;} // in json: type
	@AuraEnabled public String format {get;set;} 
	@AuraEnabled public String version {get;set;} 
	@AuraEnabled public Data data {get;set;} 

	public Champions(JSONParser parser) {
		while (parser.nextToken() != System.JSONToken.END_OBJECT) {
			if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
				String text = parser.getText();
				if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
					if (text == 'type') {
						type_Z = parser.getText();
					} else if (text == 'format') {
						format = parser.getText();
					} else if (text == 'version') {
						version = parser.getText();
					} else if (text == 'data') {
						data = new Data(parser);
					} else {
						System.debug(LoggingLevel.WARN, 'Champions consuming unrecognized property: '+text);
						consumeObject(parser);
					}
				}
			}
		}
	}
	
	public class Jinx {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		public Stats_AX stats {get;set;} 

		public Jinx(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_AX(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Jinx consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Fiddlesticks {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		public Stats_I stats {get;set;} 

		public Fiddlesticks(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_I(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Fiddlesticks consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Pantheon {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		public Stats_AH stats {get;set;} 

		public Pantheon(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_AH(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Pantheon consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Gangplank {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		public Stats_F stats {get;set;} 

		public Gangplank(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_F(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Gangplank consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Gnar {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		public Stats_D stats {get;set;} 

		public Gnar(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_D(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Gnar consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Mordekaiser {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		public Stats_AK stats {get;set;} 

		public Mordekaiser(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_AK(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Mordekaiser consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Azir {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		public Stats_S stats {get;set;} 

		public Azir(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_S(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Azir consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Riven {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		public Stats_AD stats {get;set;} 

		public Riven(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_AD(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Riven consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Aatrox {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		public Stats stats {get;set;} 

		public Aatrox(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Aatrox consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Pyke {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		public Stats_AG stats {get;set;} 

		public Pyke(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_AG(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Pyke consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Heimerdinger {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		public Stats_B stats {get;set;} 

		public Heimerdinger(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_B(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Heimerdinger consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Alistar {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		public Stats_X stats {get;set;} 

		public Alistar(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_X(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Alistar consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Lucian {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		public Stats_AR stats {get;set;} 

		public Lucian(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_AR(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Lucian consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Volibear {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		public Stats_AAV stats {get;set;} 

		public Volibear(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_AAV(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Volibear consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Sejuani {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		public Stats_AB stats {get;set;} 

		public Sejuani(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_AB(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Sejuani consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Garen {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		public Stats_E stats {get;set;} 

		public Garen(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_E(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Garen consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_AS {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Integer mp {get;set;} 
		@AuraEnabled public Integer mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Double armorperlevel {get;set;} 
		@AuraEnabled public Integer spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Double hpregen {get;set;} 
		@AuraEnabled public Double hpregenperlevel {get;set;} 
		@AuraEnabled public Integer mpregen {get;set;} 
		@AuraEnabled public Integer mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Double attackdamageperlevel {get;set;} 
		@AuraEnabled public Integer attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_AS(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getIntegerValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getIntegerValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getDoubleValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getIntegerValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getDoubleValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getDoubleValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getIntegerValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getIntegerValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getIntegerValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_AS consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_AT {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Integer mp {get;set;} 
		@AuraEnabled public Integer mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Double armorperlevel {get;set;} 
		@AuraEnabled public Integer spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Double hpregen {get;set;} 
		@AuraEnabled public Double hpregenperlevel {get;set;} 
		@AuraEnabled public Integer mpregen {get;set;} 
		@AuraEnabled public Integer mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Double attackdamageperlevel {get;set;} 
		@AuraEnabled public Double attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_AT(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getIntegerValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getIntegerValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getDoubleValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getIntegerValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getDoubleValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getDoubleValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getIntegerValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getIntegerValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_AT consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_AQ {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Integer mp {get;set;} 
		@AuraEnabled public Double mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Integer armorperlevel {get;set;} 
		@AuraEnabled public Integer spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Double hpregen {get;set;} 
		@AuraEnabled public Double hpregenperlevel {get;set;} 
		@AuraEnabled public Integer mpregen {get;set;} 
		@AuraEnabled public Double mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Double attackdamageperlevel {get;set;} 
		@AuraEnabled public Integer attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_AQ(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getIntegerValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getDoubleValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getIntegerValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getIntegerValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getDoubleValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getDoubleValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getIntegerValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getDoubleValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getIntegerValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_AQ consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_AR {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Double mp {get;set;} 
		@AuraEnabled public Integer mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Integer armorperlevel {get;set;} 
		@AuraEnabled public Integer spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Double hpregen {get;set;} 
		@AuraEnabled public Double hpregenperlevel {get;set;} 
		@AuraEnabled public Double mpregen {get;set;} 
		@AuraEnabled public Double mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Double attackdamageperlevel {get;set;} 
		@AuraEnabled public Double attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_AR(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getDoubleValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getIntegerValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getIntegerValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getIntegerValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getDoubleValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getDoubleValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getDoubleValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getDoubleValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_AR consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_AW {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Double mp {get;set;} 
		@AuraEnabled public Integer mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Integer armorperlevel {get;set;} 
		@AuraEnabled public Integer spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Double hpregen {get;set;} 
		@AuraEnabled public Double hpregenperlevel {get;set;} 
		@AuraEnabled public Double mpregen {get;set;} 
		@AuraEnabled public Double mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Integer attackdamageperlevel {get;set;} 
		@AuraEnabled public Double attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_AW(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getDoubleValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getIntegerValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getIntegerValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getIntegerValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getDoubleValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getDoubleValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getDoubleValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getDoubleValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getIntegerValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_AW consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_AX {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Integer mp {get;set;} 
		@AuraEnabled public Integer mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Double armorperlevel {get;set;} 
		@AuraEnabled public Integer spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Double hpregen {get;set;} 
		@AuraEnabled public Double hpregenperlevel {get;set;} 
		@AuraEnabled public Double mpregen {get;set;} 
		@AuraEnabled public Integer mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Double attackdamageperlevel {get;set;} 
		@AuraEnabled public Integer attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_AX(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getIntegerValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getIntegerValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getDoubleValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getIntegerValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getDoubleValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getDoubleValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getDoubleValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getIntegerValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getIntegerValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_AX consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_AU {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Integer mp {get;set;} 
		@AuraEnabled public Double mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Double armorperlevel {get;set;} 
		@AuraEnabled public Integer spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Double hpregen {get;set;} 
		@AuraEnabled public Double hpregenperlevel {get;set;} 
		@AuraEnabled public Integer mpregen {get;set;} 
		@AuraEnabled public Double mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Double attackdamageperlevel {get;set;} 
		@AuraEnabled public Double attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_AU(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getIntegerValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getDoubleValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getDoubleValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getIntegerValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getDoubleValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getDoubleValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getIntegerValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getDoubleValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_AU consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_AV {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Integer mp {get;set;} 
		@AuraEnabled public Integer mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Integer armorperlevel {get;set;} 
		@AuraEnabled public Integer spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Double hpregen {get;set;} 
		@AuraEnabled public Double hpregenperlevel {get;set;} 
		@AuraEnabled public Double mpregen {get;set;} 
		@AuraEnabled public Double mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Double attackdamageperlevel {get;set;} 
		@AuraEnabled public Integer attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_AV(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getIntegerValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getIntegerValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getIntegerValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getIntegerValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getDoubleValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getDoubleValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getDoubleValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getDoubleValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getIntegerValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_AV consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Ekko {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		public Stats_K stats {get;set;} 

		public Ekko(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_K(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Ekko consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_AY {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Integer mp {get;set;} 
		@AuraEnabled public Integer mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Double armorperlevel {get;set;} 
		@AuraEnabled public Integer spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Double hpregen {get;set;} 
		@AuraEnabled public Double hpregenperlevel {get;set;} 
		@AuraEnabled public Integer mpregen {get;set;} 
		@AuraEnabled public Double mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Double attackdamageperlevel {get;set;} 
		@AuraEnabled public Integer attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_AY(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getIntegerValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getIntegerValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getDoubleValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getIntegerValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getDoubleValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getDoubleValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getIntegerValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getDoubleValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getIntegerValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_AY consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_AZ {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Integer mp {get;set;} 
		@AuraEnabled public Integer mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Double armorperlevel {get;set;} 
		@AuraEnabled public Integer spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Integer hpregen {get;set;} 
		@AuraEnabled public Double hpregenperlevel {get;set;} 
		@AuraEnabled public Integer mpregen {get;set;} 
		@AuraEnabled public Double mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Double attackdamageperlevel {get;set;} 
		@AuraEnabled public Integer attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_AZ(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getIntegerValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getIntegerValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getDoubleValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getIntegerValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getIntegerValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getDoubleValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getIntegerValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getDoubleValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getIntegerValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_AZ consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Swain {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		@AuraEnabled public Stats_AAY stats {get;set;} 

		public Swain(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_AAY(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Swain consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Aphelios {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		public Stats_U stats {get;set;} 

		public Aphelios(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_U(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Aphelios consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_AC {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Integer mp {get;set;} 
		@AuraEnabled public Integer mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Integer armorperlevel {get;set;} 
		@AuraEnabled public Integer spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Integer hpregen {get;set;} 
		@AuraEnabled public Double hpregenperlevel {get;set;} 
		@AuraEnabled public Integer mpregen {get;set;} 
		@AuraEnabled public Integer mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Integer attackdamageperlevel {get;set;} 
		@AuraEnabled public Double attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_AC(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getIntegerValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getIntegerValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getIntegerValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getIntegerValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getIntegerValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getDoubleValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getIntegerValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getIntegerValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getIntegerValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_AC consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_AAW {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Integer mp {get;set;} 
		@AuraEnabled public Integer mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Double armorperlevel {get;set;} 
		@AuraEnabled public Integer spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Integer hpregen {get;set;} 
		@AuraEnabled public Double hpregenperlevel {get;set;} 
		@AuraEnabled public Integer mpregen {get;set;} 
		@AuraEnabled public Integer mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Integer attackdamageperlevel {get;set;} 
		@AuraEnabled public Integer attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_AAW(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getIntegerValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getIntegerValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getDoubleValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getIntegerValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getIntegerValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getDoubleValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getIntegerValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getIntegerValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getIntegerValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getIntegerValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_AAW consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_AD {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Integer mp {get;set;} 
		@AuraEnabled public Integer mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Double armorperlevel {get;set;} 
		@AuraEnabled public Integer spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Double hpregen {get;set;} 
		@AuraEnabled public Double hpregenperlevel {get;set;} 
		@AuraEnabled public Integer mpregen {get;set;} 
		@AuraEnabled public Integer mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Integer attackdamageperlevel {get;set;} 
		@AuraEnabled public Double attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_AD(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getIntegerValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getIntegerValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getDoubleValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getIntegerValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getDoubleValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getDoubleValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getIntegerValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getIntegerValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getIntegerValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_AD consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_AAV {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Integer mp {get;set;} 
		@AuraEnabled public Integer mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Integer armorperlevel {get;set;} 
		@AuraEnabled public Integer spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Integer hpregen {get;set;} 
		@AuraEnabled public Double hpregenperlevel {get;set;} 
		@AuraEnabled public Double mpregen {get;set;} 
		@AuraEnabled public Double mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Integer attackdamageperlevel {get;set;} 
		@AuraEnabled public Integer attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_AAV(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getIntegerValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getIntegerValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getIntegerValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getIntegerValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getIntegerValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getDoubleValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getDoubleValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getDoubleValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getIntegerValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getIntegerValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_AAV consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_AA {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Integer mp {get;set;} 
		@AuraEnabled public Integer mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Double armorperlevel {get;set;} 
		@AuraEnabled public Integer spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Double hpregen {get;set;} 
		@AuraEnabled public Double hpregenperlevel {get;set;} 
		@AuraEnabled public Double mpregen {get;set;} 
		@AuraEnabled public Double mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Integer attackdamageperlevel {get;set;} 
		@AuraEnabled public Integer attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_AA(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getIntegerValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getIntegerValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getDoubleValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getIntegerValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getDoubleValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getDoubleValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getDoubleValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getDoubleValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getIntegerValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getIntegerValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_AA consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_AAU {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Integer mp {get;set;} 
		@AuraEnabled public Double mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Double armorperlevel {get;set;} 
		@AuraEnabled public Integer spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Double hpregen {get;set;} 
		@AuraEnabled public Double hpregenperlevel {get;set;} 
		@AuraEnabled public Integer mpregen {get;set;} 
		@AuraEnabled public Double mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Double attackdamageperlevel {get;set;} 
		@AuraEnabled public Integer attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_AAU(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getIntegerValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getDoubleValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getDoubleValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getIntegerValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getDoubleValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getDoubleValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getIntegerValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getDoubleValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getIntegerValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_AAU consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_AB {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Integer mp {get;set;} 
		@AuraEnabled public Integer mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Double armorperlevel {get;set;} 
		@AuraEnabled public Integer spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Double hpregen {get;set;} 
		@AuraEnabled public Integer hpregenperlevel {get;set;} 
		@AuraEnabled public Integer mpregen {get;set;} 
		@AuraEnabled public Double mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Integer attackdamageperlevel {get;set;} 
		@AuraEnabled public Double attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_AB(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getIntegerValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getIntegerValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getDoubleValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getIntegerValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getDoubleValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getIntegerValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getIntegerValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getDoubleValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getIntegerValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_AB consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_AG {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Integer mp {get;set;} 
		@AuraEnabled public Integer mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Double armorperlevel {get;set;} 
		@AuraEnabled public Integer spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Integer hpregen {get;set;} 
		@AuraEnabled public Double hpregenperlevel {get;set;} 
		@AuraEnabled public Integer mpregen {get;set;} 
		@AuraEnabled public Integer mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Integer attackdamageperlevel {get;set;} 
		@AuraEnabled public Double attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_AG(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getIntegerValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getIntegerValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getDoubleValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getIntegerValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getIntegerValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getDoubleValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getIntegerValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getIntegerValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getIntegerValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_AG consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_AH {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Double mp {get;set;} 
		@AuraEnabled public Integer mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Double armorperlevel {get;set;} 
		@AuraEnabled public Integer spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Integer hpregen {get;set;} 
		@AuraEnabled public Double hpregenperlevel {get;set;} 
		@AuraEnabled public Double mpregen {get;set;} 
		@AuraEnabled public Double mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Double attackdamageperlevel {get;set;} 
		@AuraEnabled public Double attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_AH(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getDoubleValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getIntegerValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getDoubleValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getIntegerValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getIntegerValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getDoubleValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getDoubleValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getDoubleValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_AH consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_AE {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Integer mp {get;set;} 
		@AuraEnabled public Integer mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Integer armorperlevel {get;set;} 
		@AuraEnabled public Double spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Integer hpregen {get;set;} 
		@AuraEnabled public Double hpregenperlevel {get;set;} 
		@AuraEnabled public Integer mpregen {get;set;} 
		@AuraEnabled public Double mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Integer attackdamageperlevel {get;set;} 
		@AuraEnabled public Integer attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_AE(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getIntegerValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getIntegerValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getIntegerValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getDoubleValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getIntegerValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getDoubleValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getIntegerValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getDoubleValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getIntegerValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getIntegerValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_AE consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_AF {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Integer mp {get;set;} 
		@AuraEnabled public Integer mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Double armorperlevel {get;set;} 
		@AuraEnabled public Integer spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Integer hpregen {get;set;} 
		@AuraEnabled public Double hpregenperlevel {get;set;} 
		@AuraEnabled public Double mpregen {get;set;} 
		@AuraEnabled public Double mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Double attackdamageperlevel {get;set;} 
		@AuraEnabled public Integer attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_AF(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getIntegerValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getIntegerValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getDoubleValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getIntegerValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getIntegerValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getDoubleValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getDoubleValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getDoubleValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getIntegerValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_AF consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_AK {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Integer mp {get;set;} 
		@AuraEnabled public Integer mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Integer armorperlevel {get;set;} 
		@AuraEnabled public Integer spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Integer hpregen {get;set;} 
		@AuraEnabled public Double hpregenperlevel {get;set;} 
		@AuraEnabled public Integer mpregen {get;set;} 
		@AuraEnabled public Integer mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Integer attackdamageperlevel {get;set;} 
		@AuraEnabled public Integer attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_AK(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getIntegerValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getIntegerValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getIntegerValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getIntegerValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getIntegerValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getDoubleValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getIntegerValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getIntegerValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getIntegerValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getIntegerValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_AK consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Rakan {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		public Stats_AF stats {get;set;} 

		public Rakan(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_AF(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Rakan consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_AL {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Integer mp {get;set;} 
		@AuraEnabled public Integer mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Double armorperlevel {get;set;} 
		@AuraEnabled public Integer spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Integer hpregen {get;set;} 
		@AuraEnabled public Double hpregenperlevel {get;set;} 
		@AuraEnabled public Integer mpregen {get;set;} 
		@AuraEnabled public Double mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Integer attackdamageperlevel {get;set;} 
		@AuraEnabled public Integer attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_AL(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getIntegerValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getIntegerValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getDoubleValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getIntegerValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getIntegerValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getDoubleValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getIntegerValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getDoubleValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getIntegerValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getIntegerValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_AL consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_AI {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Double mp {get;set;} 
		@AuraEnabled public Integer mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Integer armorperlevel {get;set;} 
		@AuraEnabled public Integer spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Integer hpregen {get;set;} 
		@AuraEnabled public Double hpregenperlevel {get;set;} 
		@AuraEnabled public Double mpregen {get;set;} 
		@AuraEnabled public Double mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Double attackdamageperlevel {get;set;} 
		@AuraEnabled public Integer attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_AI(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getDoubleValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getIntegerValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getIntegerValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getIntegerValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getIntegerValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getDoubleValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getDoubleValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getDoubleValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getIntegerValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_AI consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_AJ {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Integer mp {get;set;} 
		@AuraEnabled public Integer mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Double armorperlevel {get;set;} 
		@AuraEnabled public Integer spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Double hpregen {get;set;} 
		@AuraEnabled public Double hpregenperlevel {get;set;} 
		@AuraEnabled public Double mpregen {get;set;} 
		@AuraEnabled public Double mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Double attackdamageperlevel {get;set;} 
		@AuraEnabled public Integer attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_AJ(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getIntegerValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getIntegerValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getDoubleValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getIntegerValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getDoubleValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getDoubleValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getDoubleValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getDoubleValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getIntegerValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_AJ consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_AO {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Integer mp {get;set;} 
		@AuraEnabled public Double mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Double armorperlevel {get;set;} 
		@AuraEnabled public Integer spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Integer hpregen {get;set;} 
		@AuraEnabled public Double hpregenperlevel {get;set;} 
		@AuraEnabled public Integer mpregen {get;set;} 
		@AuraEnabled public Double mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Integer attackdamageperlevel {get;set;} 
		@AuraEnabled public Double attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_AO(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getIntegerValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getDoubleValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getDoubleValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getIntegerValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getIntegerValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getDoubleValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getIntegerValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getDoubleValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getIntegerValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_AO consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_AP {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Integer mp {get;set;} 
		@AuraEnabled public Integer mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Double armorperlevel {get;set;} 
		@AuraEnabled public Integer spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Integer hpregen {get;set;} 
		@AuraEnabled public Double hpregenperlevel {get;set;} 
		@AuraEnabled public Double mpregen {get;set;} 
		@AuraEnabled public Double mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Integer attackdamageperlevel {get;set;} 
		@AuraEnabled public Double attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_AP(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getIntegerValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getIntegerValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getDoubleValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getIntegerValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getIntegerValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getDoubleValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getDoubleValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getDoubleValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getIntegerValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_AP consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_AAZ {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Integer mp {get;set;} 
		@AuraEnabled public Integer mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Integer armorperlevel {get;set;} 
		@AuraEnabled public Integer spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Double hpregen {get;set;} 
		@AuraEnabled public Double hpregenperlevel {get;set;} 
		@AuraEnabled public Integer mpregen {get;set;} 
		@AuraEnabled public Integer mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Integer attackdamageperlevel {get;set;} 
		@AuraEnabled public Integer attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_AAZ(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getIntegerValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getIntegerValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getIntegerValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getIntegerValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getDoubleValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getDoubleValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getIntegerValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getIntegerValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getIntegerValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getIntegerValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_AAZ consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Braum {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		public Stats_P stats {get;set;} 

		public Braum(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_P(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Braum consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_AM {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Double mp {get;set;} 
		@AuraEnabled public Integer mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Integer armorperlevel {get;set;} 
		@AuraEnabled public Integer spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Double hpregen {get;set;} 
		@AuraEnabled public Double hpregenperlevel {get;set;} 
		@AuraEnabled public Double mpregen {get;set;} 
		@AuraEnabled public Double mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Double attackdamageperlevel {get;set;} 
		@AuraEnabled public Integer attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_AM(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getDoubleValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getIntegerValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getIntegerValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getIntegerValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getDoubleValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getDoubleValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getDoubleValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getDoubleValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getIntegerValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_AM consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_AAY {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Integer mp {get;set;} 
		@AuraEnabled public Double mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Integer armorperlevel {get;set;} 
		@AuraEnabled public Integer spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Integer hpregen {get;set;} 
		@AuraEnabled public Double hpregenperlevel {get;set;} 
		@AuraEnabled public Integer mpregen {get;set;} 
		@AuraEnabled public Double mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Double attackdamageperlevel {get;set;} 
		@AuraEnabled public Double attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_AAY(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getIntegerValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getDoubleValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getIntegerValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getIntegerValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getIntegerValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getDoubleValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getIntegerValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getDoubleValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_AAY consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_AN {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Integer mp {get;set;} 
		@AuraEnabled public Integer mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Integer armorperlevel {get;set;} 
		@AuraEnabled public Integer spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Double hpregen {get;set;} 
		@AuraEnabled public Double hpregenperlevel {get;set;} 
		@AuraEnabled public Double mpregen {get;set;} 
		@AuraEnabled public Double mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Integer attackdamageperlevel {get;set;} 
		@AuraEnabled public Integer attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_AN(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getIntegerValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getIntegerValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getIntegerValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getIntegerValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getDoubleValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getDoubleValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getDoubleValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getDoubleValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getIntegerValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getIntegerValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_AN consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_AAX {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Integer mp {get;set;} 
		@AuraEnabled public Integer mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Integer armorperlevel {get;set;} 
		@AuraEnabled public Integer spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Integer hpregen {get;set;} 
		@AuraEnabled public Integer hpregenperlevel {get;set;} 
		@AuraEnabled public Integer mpregen {get;set;} 
		@AuraEnabled public Double mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Double attackdamageperlevel {get;set;} 
		@AuraEnabled public Integer attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_AAX(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getIntegerValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getIntegerValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getIntegerValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getIntegerValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getIntegerValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getIntegerValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getIntegerValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getDoubleValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getIntegerValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_AAX consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_D {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Integer mp {get;set;} 
		@AuraEnabled public Integer mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Double armorperlevel {get;set;} 
		@AuraEnabled public Integer spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Double hpregen {get;set;} 
		@AuraEnabled public Double hpregenperlevel {get;set;} 
		@AuraEnabled public Integer mpregen {get;set;} 
		@AuraEnabled public Integer mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Integer attackdamageperlevel {get;set;} 
		@AuraEnabled public Integer attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_D(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getIntegerValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getIntegerValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getDoubleValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getIntegerValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getDoubleValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getDoubleValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getIntegerValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getIntegerValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getIntegerValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getIntegerValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_D consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Nautilus {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		public Stats_AJ stats {get;set;} 

		public Nautilus(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_AJ(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Nautilus consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Ahri {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		public Stats_Z stats {get;set;} 

		public Ahri(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_Z(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Ahri consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_E {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Integer mp {get;set;} 
		@AuraEnabled public Integer mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Integer armorperlevel {get;set;} 
		@AuraEnabled public Integer spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Integer hpregen {get;set;} 
		@AuraEnabled public Double hpregenperlevel {get;set;} 
		@AuraEnabled public Integer mpregen {get;set;} 
		@AuraEnabled public Integer mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Double attackdamageperlevel {get;set;} 
		@AuraEnabled public Double attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_E(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getIntegerValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getIntegerValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getIntegerValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getIntegerValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getIntegerValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getDoubleValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getIntegerValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getIntegerValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_E consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_F {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Integer mp {get;set;} 
		@AuraEnabled public Integer mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Integer armorperlevel {get;set;} 
		@AuraEnabled public Integer spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Integer hpregen {get;set;} 
		@AuraEnabled public Double hpregenperlevel {get;set;} 
		@AuraEnabled public Double mpregen {get;set;} 
		@AuraEnabled public Double mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Integer attackdamageperlevel {get;set;} 
		@AuraEnabled public Double attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_F(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getIntegerValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getIntegerValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getIntegerValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getIntegerValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getIntegerValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getDoubleValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getDoubleValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getDoubleValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getIntegerValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_F consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_G {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Integer mp {get;set;} 
		@AuraEnabled public Integer mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Double armorperlevel {get;set;} 
		@AuraEnabled public Integer spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Integer hpregen {get;set;} 
		@AuraEnabled public Double hpregenperlevel {get;set;} 
		@AuraEnabled public Integer mpregen {get;set;} 
		@AuraEnabled public Double mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Integer attackdamageperlevel {get;set;} 
		@AuraEnabled public Double attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_G(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getIntegerValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getIntegerValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getDoubleValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getIntegerValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getIntegerValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getDoubleValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getIntegerValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getDoubleValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getIntegerValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_G consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Jayce {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		public Stats_AZ stats {get;set;} 

		public Jayce(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_AZ(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Jayce consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_A {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Integer mp {get;set;} 
		@AuraEnabled public Integer mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Integer armorperlevel {get;set;} 
		@AuraEnabled public Integer spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Double hpregen {get;set;} 
		@AuraEnabled public Double hpregenperlevel {get;set;} 
		@AuraEnabled public Integer mpregen {get;set;} 
		@AuraEnabled public Double mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Integer attackdamageperlevel {get;set;} 
		@AuraEnabled public Double attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_A(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getIntegerValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getIntegerValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getIntegerValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getIntegerValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getDoubleValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getDoubleValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getIntegerValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getDoubleValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getIntegerValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_A consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_B {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Integer mp {get;set;} 
		@AuraEnabled public Integer mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Integer armorperlevel {get;set;} 
		@AuraEnabled public Integer spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Integer hpregen {get;set;} 
		@AuraEnabled public Double hpregenperlevel {get;set;} 
		@AuraEnabled public Integer mpregen {get;set;} 
		@AuraEnabled public Double mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Double attackdamageperlevel {get;set;} 
		@AuraEnabled public Double attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_B(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getIntegerValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getIntegerValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getIntegerValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getIntegerValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getIntegerValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getDoubleValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getIntegerValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getDoubleValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_B consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Darius {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		public Stats_M stats {get;set;} 

		public Darius(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_M(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Darius consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_C {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Integer mp {get;set;} 
		@AuraEnabled public Integer mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Integer armorperlevel {get;set;} 
		@AuraEnabled public Integer spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Integer hpregen {get;set;} 
		@AuraEnabled public Double hpregenperlevel {get;set;} 
		@AuraEnabled public Double mpregen {get;set;} 
		@AuraEnabled public Double mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Double attackdamageperlevel {get;set;} 
		@AuraEnabled public Double attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_C(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getIntegerValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getIntegerValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getIntegerValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getIntegerValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getIntegerValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getDoubleValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getDoubleValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getDoubleValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_C consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_L {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Double mp {get;set;} 
		@AuraEnabled public Integer mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Double armorperlevel {get;set;} 
		@AuraEnabled public Integer spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Double hpregen {get;set;} 
		@AuraEnabled public Double hpregenperlevel {get;set;} 
		@AuraEnabled public Double mpregen {get;set;} 
		@AuraEnabled public Double mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Double attackdamageperlevel {get;set;} 
		@AuraEnabled public Double attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_L(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getDoubleValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getIntegerValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getDoubleValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getIntegerValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getDoubleValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getDoubleValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getDoubleValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getDoubleValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_L consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_M {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Integer mp {get;set;} 
		@AuraEnabled public Double mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Integer armorperlevel {get;set;} 
		@AuraEnabled public Integer spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Integer hpregen {get;set;} 
		@AuraEnabled public Double hpregenperlevel {get;set;} 
		@AuraEnabled public Double mpregen {get;set;} 
		@AuraEnabled public Double mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Integer attackdamageperlevel {get;set;} 
		@AuraEnabled public Integer attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_M(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getIntegerValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getDoubleValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getIntegerValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getIntegerValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getIntegerValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getDoubleValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getDoubleValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getDoubleValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getIntegerValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getIntegerValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_M consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_N {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Integer mp {get;set;} 
		@AuraEnabled public Integer mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Double armorperlevel {get;set;} 
		@AuraEnabled public Integer spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Double hpregen {get;set;} 
		@AuraEnabled public Double hpregenperlevel {get;set;} 
		@AuraEnabled public Integer mpregen {get;set;} 
		@AuraEnabled public Double mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Integer attackdamageperlevel {get;set;} 
		@AuraEnabled public Double attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_N(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getIntegerValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getIntegerValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getDoubleValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getIntegerValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getDoubleValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getDoubleValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getIntegerValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getDoubleValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getIntegerValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_N consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_O {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Integer mp {get;set;} 
		@AuraEnabled public Integer mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Double armorperlevel {get;set;} 
		@AuraEnabled public Double spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Double hpregen {get;set;} 
		@AuraEnabled public Double hpregenperlevel {get;set;} 
		@AuraEnabled public Double mpregen {get;set;} 
		@AuraEnabled public Double mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Double attackdamageperlevel {get;set;} 
		@AuraEnabled public Double attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_O(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getIntegerValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getIntegerValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getDoubleValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getDoubleValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getDoubleValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getDoubleValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getDoubleValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getDoubleValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_O consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_H {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Integer mp {get;set;} 
		@AuraEnabled public Integer mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Double armorperlevel {get;set;} 
		@AuraEnabled public Integer spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Double hpregen {get;set;} 
		@AuraEnabled public Double hpregenperlevel {get;set;} 
		@AuraEnabled public Integer mpregen {get;set;} 
		@AuraEnabled public Double mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Double attackdamageperlevel {get;set;} 
		@AuraEnabled public Double attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_H(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getIntegerValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getIntegerValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getDoubleValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getIntegerValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getDoubleValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getDoubleValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getIntegerValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getDoubleValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_H consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_I {
		@AuraEnabled public Double hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Integer mp {get;set;} 
		@AuraEnabled public Integer mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Double armorperlevel {get;set;} 
		@AuraEnabled public Integer spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Double hpregen {get;set;} 
		@AuraEnabled public Double hpregenperlevel {get;set;} 
		@AuraEnabled public Integer mpregen {get;set;} 
		@AuraEnabled public Double mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Double attackdamage {get;set;} 
		@AuraEnabled public Double attackdamageperlevel {get;set;} 
		@AuraEnabled public Double attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_I(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getDoubleValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getIntegerValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getIntegerValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getDoubleValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getIntegerValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getDoubleValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getDoubleValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getIntegerValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getDoubleValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getDoubleValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_I consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_J {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Integer mp {get;set;} 
		@AuraEnabled public Integer mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Double armorperlevel {get;set;} 
		@AuraEnabled public Double spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Double hpregen {get;set;} 
		@AuraEnabled public Double hpregenperlevel {get;set;} 
		@AuraEnabled public Double mpregen {get;set;} 
		@AuraEnabled public Double mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Integer attackdamageperlevel {get;set;} 
		@AuraEnabled public Double attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_J(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getIntegerValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getIntegerValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getDoubleValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getDoubleValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getDoubleValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getDoubleValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getDoubleValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getDoubleValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getIntegerValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_J consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_K {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Integer mp {get;set;} 
		@AuraEnabled public Integer mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Integer armorperlevel {get;set;} 
		@AuraEnabled public Integer spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Integer hpregen {get;set;} 
		@AuraEnabled public Double hpregenperlevel {get;set;} 
		@AuraEnabled public Integer mpregen {get;set;} 
		@AuraEnabled public Double mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Integer attackdamageperlevel {get;set;} 
		@AuraEnabled public Double attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_K(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getIntegerValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getIntegerValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getIntegerValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getIntegerValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getIntegerValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getDoubleValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getIntegerValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getDoubleValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getIntegerValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_K consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_T {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Integer mp {get;set;} 
		@AuraEnabled public Integer mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Double armorperlevel {get;set;} 
		@AuraEnabled public Integer spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Integer hpregen {get;set;} 
		@AuraEnabled public Double hpregenperlevel {get;set;} 
		@AuraEnabled public Integer mpregen {get;set;} 
		@AuraEnabled public Double mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Double attackdamageperlevel {get;set;} 
		@AuraEnabled public Double attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_T(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getIntegerValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getIntegerValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getDoubleValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getIntegerValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getIntegerValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getDoubleValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getIntegerValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getDoubleValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_T consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Brand {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		public Stats_Q stats {get;set;} 

		public Brand(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_Q(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Brand consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_U {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Integer mp {get;set;} 
		@AuraEnabled public Integer mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Integer armorperlevel {get;set;} 
		@AuraEnabled public Integer spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Double hpregen {get;set;} 
		@AuraEnabled public Double hpregenperlevel {get;set;} 
		@AuraEnabled public Double mpregen {get;set;} 
		@AuraEnabled public Double mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Double attackdamageperlevel {get;set;} 
		@AuraEnabled public Double attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_U(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getIntegerValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getIntegerValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getIntegerValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getIntegerValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getDoubleValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getDoubleValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getDoubleValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getDoubleValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_U consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_V {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Integer mp {get;set;} 
		@AuraEnabled public Integer mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Integer armorperlevel {get;set;} 
		@AuraEnabled public Integer spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Double hpregen {get;set;} 
		@AuraEnabled public Double hpregenperlevel {get;set;} 
		@AuraEnabled public Integer mpregen {get;set;} 
		@AuraEnabled public Double mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Double attackdamageperlevel {get;set;} 
		@AuraEnabled public Double attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_V(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getIntegerValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getIntegerValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getIntegerValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getIntegerValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getDoubleValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getDoubleValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getIntegerValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getDoubleValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_V consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_W {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Integer mp {get;set;} 
		@AuraEnabled public Integer mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Double armorperlevel {get;set;} 
		@AuraEnabled public Integer spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Integer hpregen {get;set;} 
		@AuraEnabled public Double hpregenperlevel {get;set;} 
		@AuraEnabled public Double mpregen {get;set;} 
		@AuraEnabled public Double mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Double attackdamageperlevel {get;set;} 
		@AuraEnabled public Double attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_W(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getIntegerValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getIntegerValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getDoubleValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getIntegerValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getIntegerValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getDoubleValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getDoubleValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getDoubleValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_W consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_P {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Integer mp {get;set;} 
		@AuraEnabled public Integer mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Integer armorperlevel {get;set;} 
		@AuraEnabled public Integer spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Double hpregen {get;set;} 
		@AuraEnabled public Integer hpregenperlevel {get;set;} 
		@AuraEnabled public Integer mpregen {get;set;} 
		@AuraEnabled public Double mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Double attackdamageperlevel {get;set;} 
		@AuraEnabled public Double attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_P(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getIntegerValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getIntegerValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getIntegerValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getIntegerValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getDoubleValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getIntegerValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getIntegerValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getDoubleValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_P consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_Q {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Integer mp {get;set;} 
		@AuraEnabled public Integer mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Double armorperlevel {get;set;} 
		@AuraEnabled public Integer spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Double hpregen {get;set;} 
		@AuraEnabled public Double hpregenperlevel {get;set;} 
		@AuraEnabled public Double mpregen {get;set;} 
		@AuraEnabled public Double mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Integer attackdamageperlevel {get;set;} 
		@AuraEnabled public Double attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_Q(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getIntegerValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getIntegerValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getDoubleValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getIntegerValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getDoubleValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getDoubleValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getDoubleValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getDoubleValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getIntegerValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_Q consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_R {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Integer mp {get;set;} 
		@AuraEnabled public Integer mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Integer armorperlevel {get;set;} 
		@AuraEnabled public Integer spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Double hpregen {get;set;} 
		@AuraEnabled public Double hpregenperlevel {get;set;} 
		@AuraEnabled public Integer mpregen {get;set;} 
		@AuraEnabled public Double mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Integer attackdamageperlevel {get;set;} 
		@AuraEnabled public Integer attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_R(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getIntegerValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getIntegerValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getIntegerValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getIntegerValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getDoubleValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getDoubleValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getIntegerValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getDoubleValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getIntegerValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getIntegerValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_R consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_S {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Integer mp {get;set;} 
		@AuraEnabled public Integer mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Integer armorperlevel {get;set;} 
		@AuraEnabled public Integer spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Integer hpregen {get;set;} 
		@AuraEnabled public Double hpregenperlevel {get;set;} 
		@AuraEnabled public Integer mpregen {get;set;} 
		@AuraEnabled public Double mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Double attackdamageperlevel {get;set;} 
		@AuraEnabled public Integer attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_S(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getIntegerValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getIntegerValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getIntegerValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getIntegerValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getIntegerValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getDoubleValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getIntegerValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getDoubleValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getIntegerValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_S consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Integer mp {get;set;} 
		@AuraEnabled public Integer mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Double armorperlevel {get;set;} 
		@AuraEnabled public Integer spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Integer hpregen {get;set;} 
		@AuraEnabled public Integer hpregenperlevel {get;set;} 
		@AuraEnabled public Integer mpregen {get;set;} 
		@AuraEnabled public Integer mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Integer attackdamageperlevel {get;set;} 
		@AuraEnabled public Double attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getIntegerValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getIntegerValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getDoubleValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getIntegerValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getIntegerValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getIntegerValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getIntegerValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getIntegerValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getIntegerValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Karthus {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		public Stats_AU stats {get;set;} 

		public Karthus(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_AU(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Karthus consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Vladimir {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		@AuraEnabled public Stats_AAW stats {get;set;} 

		public Vladimir(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_AAW(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Vladimir consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_X {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Integer mp {get;set;} 
		@AuraEnabled public Integer mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Double armorperlevel {get;set;} 
		@AuraEnabled public Integer spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Double hpregen {get;set;} 
		@AuraEnabled public Double hpregenperlevel {get;set;} 
		@AuraEnabled public Double mpregen {get;set;} 
		@AuraEnabled public Double mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Double attackdamageperlevel {get;set;} 
		@AuraEnabled public Double attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_X(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getIntegerValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getIntegerValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getDoubleValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getIntegerValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getDoubleValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getDoubleValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getDoubleValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getDoubleValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_X consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_Y {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Integer mp {get;set;} 
		@AuraEnabled public Integer mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Double armorperlevel {get;set;} 
		@AuraEnabled public Integer spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Integer hpregen {get;set;} 
		@AuraEnabled public Double hpregenperlevel {get;set;} 
		@AuraEnabled public Integer mpregen {get;set;} 
		@AuraEnabled public Integer mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Double attackdamageperlevel {get;set;} 
		@AuraEnabled public Double attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_Y(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getIntegerValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getIntegerValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getDoubleValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getIntegerValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getIntegerValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getDoubleValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getIntegerValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getIntegerValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getDoubleValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_Y consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stats_Z {
		@AuraEnabled public Integer hp {get;set;} 
		@AuraEnabled public Integer hpperlevel {get;set;} 
		@AuraEnabled public Integer mp {get;set;} 
		@AuraEnabled public Integer mpperlevel {get;set;} 
		@AuraEnabled public Integer movespeed {get;set;} 
		@AuraEnabled public Integer armor {get;set;} 
		@AuraEnabled public Double armorperlevel {get;set;} 
		@AuraEnabled public Integer spellblock {get;set;} 
		@AuraEnabled public Double spellblockperlevel {get;set;} 
		@AuraEnabled public Integer attackrange {get;set;} 
		@AuraEnabled public Double hpregen {get;set;} 
		@AuraEnabled public Double hpregenperlevel {get;set;} 
		@AuraEnabled public Integer mpregen {get;set;} 
		@AuraEnabled public Double mpregenperlevel {get;set;} 
		@AuraEnabled public Integer crit {get;set;} 
		@AuraEnabled public Integer critperlevel {get;set;} 
		@AuraEnabled public Integer attackdamage {get;set;} 
		@AuraEnabled public Integer attackdamageperlevel {get;set;} 
		@AuraEnabled public Integer attackspeedperlevel {get;set;} 
		@AuraEnabled public Double attackspeed {get;set;} 

		public Stats_Z(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'hp') {
							hp = parser.getIntegerValue();
						} else if (text == 'hpperlevel') {
							hpperlevel = parser.getIntegerValue();
						} else if (text == 'mp') {
							mp = parser.getIntegerValue();
						} else if (text == 'mpperlevel') {
							mpperlevel = parser.getIntegerValue();
						} else if (text == 'movespeed') {
							movespeed = parser.getIntegerValue();
						} else if (text == 'armor') {
							armor = parser.getIntegerValue();
						} else if (text == 'armorperlevel') {
							armorperlevel = parser.getDoubleValue();
						} else if (text == 'spellblock') {
							spellblock = parser.getIntegerValue();
						} else if (text == 'spellblockperlevel') {
							spellblockperlevel = parser.getDoubleValue();
						} else if (text == 'attackrange') {
							attackrange = parser.getIntegerValue();
						} else if (text == 'hpregen') {
							hpregen = parser.getDoubleValue();
						} else if (text == 'hpregenperlevel') {
							hpregenperlevel = parser.getDoubleValue();
						} else if (text == 'mpregen') {
							mpregen = parser.getIntegerValue();
						} else if (text == 'mpregenperlevel') {
							mpregenperlevel = parser.getDoubleValue();
						} else if (text == 'crit') {
							crit = parser.getIntegerValue();
						} else if (text == 'critperlevel') {
							critperlevel = parser.getIntegerValue();
						} else if (text == 'attackdamage') {
							attackdamage = parser.getIntegerValue();
						} else if (text == 'attackdamageperlevel') {
							attackdamageperlevel = parser.getIntegerValue();
						} else if (text == 'attackspeedperlevel') {
							attackspeedperlevel = parser.getIntegerValue();
						} else if (text == 'attackspeed') {
							attackspeed = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Stats_Z consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Katarina {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		public Stats_AT stats {get;set;} 

		public Katarina(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_AT(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Katarina consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Ziggs {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		public Stats_AAU stats {get;set;} 

		public Ziggs(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_AAU(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Ziggs consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Bard {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		public Stats_R stats {get;set;} 

		public Bard(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_R(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Bard consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Irelia {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		public Stats_A stats {get;set;} 

		public Irelia(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_A(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Irelia consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class MonkeyKing {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		public Stats_AL stats {get;set;} 

		public MonkeyKing(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_AL(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'MonkeyKing consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Kalista {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		public Stats_AV stats {get;set;} 

		public Kalista(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_AV(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Kalista consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Akali {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		public Stats_Y stats {get;set;} 

		public Akali(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_Y(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Akali consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Vi {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		public Stats_AAX stats {get;set;} 

		public Vi(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_AAX(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Vi consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Amumu {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		public Stats_W stats {get;set;} 

		public Amumu(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_W(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Amumu consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class AurelionSol {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		public Stats_T stats {get;set;} 

		public AurelionSol(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_T(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'AurelionSol consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Cassiopeia {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		public Stats_N stats {get;set;} 

		public Cassiopeia(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_N(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Cassiopeia consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Data {
		@AuraEnabled public Aatrox Aatrox {get;set;} 
		@AuraEnabled public Ahri Ahri {get;set;} 
		@AuraEnabled public Akali Akali {get;set;} 
		@AuraEnabled public Alistar Alistar {get;set;} 
		@AuraEnabled public Amumu Amumu {get;set;} 
		@AuraEnabled public Anivia Anivia {get;set;} 
		@AuraEnabled public Anivia Annie {get;set;} 
		@AuraEnabled public Aphelios Aphelios {get;set;} 
		@AuraEnabled public Alistar Ashe {get;set;} 
		@AuraEnabled public AurelionSol AurelionSol {get;set;} 
		@AuraEnabled public Azir Azir {get;set;} 
		@AuraEnabled public Bard Bard {get;set;} 
		@AuraEnabled public Alistar Blitzcrank {get;set;} 
		@AuraEnabled public Brand Brand {get;set;} 
		@AuraEnabled public Braum Braum {get;set;} 
		@AuraEnabled public Alistar Caitlyn {get;set;} 
		@AuraEnabled public Camille Camille {get;set;} 
		@AuraEnabled public Cassiopeia Cassiopeia {get;set;} 
		@AuraEnabled public Amumu Chogath {get;set;} 
		@AuraEnabled public Alistar Corki {get;set;} 
		@AuraEnabled public Darius Darius {get;set;} 
		@AuraEnabled public Cassiopeia Diana {get;set;} 
		@AuraEnabled public Draven Draven {get;set;} 
		@AuraEnabled public Akali DrMundo {get;set;} 
		@AuraEnabled public Ekko Ekko {get;set;} 
		@AuraEnabled public Cassiopeia Elise {get;set;} 
		@AuraEnabled public Evelynn Evelynn {get;set;} 
		@AuraEnabled public Amumu Ezreal {get;set;} 
		@AuraEnabled public Fiddlesticks Fiddlesticks {get;set;} 
		@AuraEnabled public Fiora Fiora {get;set;} 
		@AuraEnabled public Fizz Fizz {get;set;} 
		@AuraEnabled public Amumu Galio {get;set;} 
		@AuraEnabled public Gangplank Gangplank {get;set;} 
		@AuraEnabled public Garen Garen {get;set;} 
		@AuraEnabled public Gnar Gnar {get;set;} 
		@AuraEnabled public Fiora Gragas {get;set;} 
		@AuraEnabled public Fizz Graves {get;set;} 
		@AuraEnabled public Hecarim Hecarim {get;set;} 
		@AuraEnabled public Heimerdinger Heimerdinger {get;set;} 
		@AuraEnabled public Brand Illaoi {get;set;} 
		@AuraEnabled public Irelia Irelia {get;set;} 
		@AuraEnabled public Fizz Ivern {get;set;} 
		@AuraEnabled public Alistar Janna {get;set;} 
		@AuraEnabled public Amumu JarvanIV {get;set;} 
		@AuraEnabled public Aphelios Jax {get;set;} 
		@AuraEnabled public Jayce Jayce {get;set;} 
		@AuraEnabled public Jhin Jhin {get;set;} 
		@AuraEnabled public Jinx Jinx {get;set;} 
		@AuraEnabled public Kaisa Kaisa {get;set;} 
		@AuraEnabled public Kalista Kalista {get;set;} 
		@AuraEnabled public Alistar Karma {get;set;} 
		@AuraEnabled public Karthus Karthus {get;set;} 
		@AuraEnabled public AurelionSol Kassadin {get;set;} 
		@AuraEnabled public Katarina Katarina {get;set;} 
		@AuraEnabled public Heimerdinger Kayle {get;set;} 
		@AuraEnabled public Amumu Kayn {get;set;} 
		@AuraEnabled public Katarina Kennen {get;set;} 
		@AuraEnabled public Aphelios Khazix {get;set;} 
		@AuraEnabled public AurelionSol Kindred {get;set;} 
		@AuraEnabled public Garen Kled {get;set;} 
		@AuraEnabled public Alistar KogMaw {get;set;} 
		@AuraEnabled public Fiora Leblanc {get;set;} 
		@AuraEnabled public LeeSin LeeSin {get;set;} 
		@AuraEnabled public Cassiopeia Leona {get;set;} 
		@AuraEnabled public Hecarim Lillia {get;set;} 
		@AuraEnabled public AurelionSol Lissandra {get;set;} 
		@AuraEnabled public Lucian Lucian {get;set;} 
		@AuraEnabled public AurelionSol Lulu {get;set;} 
		@AuraEnabled public Lux Lux {get;set;} 
		@AuraEnabled public Malphite Malphite {get;set;} 
		@AuraEnabled public Malzahar Malzahar {get;set;} 
		@AuraEnabled public Hecarim Maokai {get;set;} 
		@AuraEnabled public MasterYi MasterYi {get;set;} 
		@AuraEnabled public MissFortune MissFortune {get;set;} 
		@AuraEnabled public MonkeyKing MonkeyKing {get;set;} 
		@AuraEnabled public Mordekaiser Mordekaiser {get;set;} 
		@AuraEnabled public Fiora Morgana {get;set;} 
		@AuraEnabled public Aphelios Nami {get;set;} 
		@AuraEnabled public Amumu Nasus {get;set;} 
		@AuraEnabled public Nautilus Nautilus {get;set;} 
		@AuraEnabled public Anivia Neeko {get;set;} 
		@AuraEnabled public AurelionSol Nidalee {get;set;} 
		@AuraEnabled public AurelionSol Nocturne {get;set;} 
		@AuraEnabled public Ekko Nunu {get;set;} 
		@AuraEnabled public Aphelios Olaf {get;set;} 
		@AuraEnabled public Heimerdinger Orianna {get;set;} 
		@AuraEnabled public Ornn Ornn {get;set;} 
		@AuraEnabled public Pantheon Pantheon {get;set;} 
		@AuraEnabled public Fizz Poppy {get;set;} 
		@AuraEnabled public Pyke Pyke {get;set;} 
		@AuraEnabled public AurelionSol Qiyana {get;set;} 
		@AuraEnabled public Alistar Quinn {get;set;} 
		@AuraEnabled public Rakan Rakan {get;set;} 
		@AuraEnabled public Amumu Rammus {get;set;} 
		@AuraEnabled public Gnar RekSai {get;set;} 
		@AuraEnabled public Rell Rell {get;set;} 
		@AuraEnabled public Garen Renekton {get;set;} 
		@AuraEnabled public Mordekaiser Rengar {get;set;} 
		@AuraEnabled public Riven Riven {get;set;} 
		@AuraEnabled public Akali Rumble {get;set;} 
		@AuraEnabled public Ryze Ryze {get;set;} 
		@AuraEnabled public Lucian Samira {get;set;} 
		@AuraEnabled public Sejuani Sejuani {get;set;} 
		@AuraEnabled public Senna Senna {get;set;} 
		@AuraEnabled public Seraphine Seraphine {get;set;} 
		@AuraEnabled public Ryze Sett {get;set;} 
		@AuraEnabled public Senna Shaco {get;set;} 
		@AuraEnabled public Seraphine Shen {get;set;} 
		@AuraEnabled public Katarina Shyvana {get;set;} 
		@AuraEnabled public Alistar Singed {get;set;} 
		@AuraEnabled public Irelia Sion {get;set;} 
		@AuraEnabled public Cassiopeia Sivir {get;set;} 
		@AuraEnabled public Amumu Skarner {get;set;} 
		@AuraEnabled public Brand Sona {get;set;} 
		@AuraEnabled public Brand Soraka {get;set;} 
		@AuraEnabled public Swain Swain {get;set;} 
		@AuraEnabled public Ekko Sylas {get;set;} 
		@AuraEnabled public Jhin Syndra {get;set;} 
		@AuraEnabled public Katarina TahmKench {get;set;} 
		@AuraEnabled public Amumu Taliyah {get;set;} 
		@AuraEnabled public Draven Talon {get;set;} 
		@AuraEnabled public Rakan Taric {get;set;} 
		@AuraEnabled public Brand Teemo {get;set;} 
		@AuraEnabled public Heimerdinger Thresh {get;set;} 
		@AuraEnabled public Aphelios Tristana {get;set;} 
		@AuraEnabled public Malphite Trundle {get;set;} 
		@AuraEnabled public Katarina Tryndamere {get;set;} 
		@AuraEnabled public Fiora TwistedFate {get;set;} 
		@AuraEnabled public Lucian Twitch {get;set;} 
		@AuraEnabled public Gangplank Udyr {get;set;} 
		@AuraEnabled public Brand Urgot {get;set;} 
		@AuraEnabled public Ahri Varus {get;set;} 
		@AuraEnabled public Draven Vayne {get;set;} 
		@AuraEnabled public Fiora Veigar {get;set;} 
		@AuraEnabled public Fiora Velkoz {get;set;} 
		@AuraEnabled public Vi Vi {get;set;} 
		@AuraEnabled public Garen Viego {get;set;} 
		@AuraEnabled public Ekko Viktor {get;set;} 
		@AuraEnabled public Vladimir Vladimir {get;set;} 
		@AuraEnabled public Volibear Volibear {get;set;} 
		@AuraEnabled public Malphite Warwick {get;set;} 
		@AuraEnabled public Aphelios Xayah {get;set;} 
		@AuraEnabled public Cassiopeia Xerath {get;set;} 
		@AuraEnabled public Malphite XinZhao {get;set;} 
		@AuraEnabled public Katarina Yasuo {get;set;} 
		@AuraEnabled public Riven Yone {get;set;} 
		@AuraEnabled public Volibear Yorick {get;set;} 
		@AuraEnabled public Azir Yuumi {get;set;} 
		@AuraEnabled public Akali Zac {get;set;} 
		@AuraEnabled public Akali Zed {get;set;} 
		@AuraEnabled public Ziggs Ziggs {get;set;} 
		@AuraEnabled public Brand Zilean {get;set;} 
		@AuraEnabled public Fiora Zoe {get;set;} 
		@AuraEnabled public Anivia Zyra {get;set;} 

		public Data(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'Aatrox') {
							Aatrox = new Aatrox(parser);
						} else if (text == 'Ahri') {
							Ahri = new Ahri(parser);
						} else if (text == 'Akali') {
							Akali = new Akali(parser);
						} else if (text == 'Alistar') {
							Alistar = new Alistar(parser);
						} else if (text == 'Amumu') {
							Amumu = new Amumu(parser);
						} else if (text == 'Anivia') {
							Anivia = new Anivia(parser);
						} else if (text == 'Annie') {
							Annie = new Anivia(parser);
						} else if (text == 'Aphelios') {
							Aphelios = new Aphelios(parser);
						} else if (text == 'Ashe') {
							Ashe = new Alistar(parser);
						} else if (text == 'AurelionSol') {
							AurelionSol = new AurelionSol(parser);
						} else if (text == 'Azir') {
							Azir = new Azir(parser);
						} else if (text == 'Bard') {
							Bard = new Bard(parser);
						} else if (text == 'Blitzcrank') {
							Blitzcrank = new Alistar(parser);
						} else if (text == 'Brand') {
							Brand = new Brand(parser);
						} else if (text == 'Braum') {
							Braum = new Braum(parser);
						} else if (text == 'Caitlyn') {
							Caitlyn = new Alistar(parser);
						} else if (text == 'Camille') {
							Camille = new Camille(parser);
						} else if (text == 'Cassiopeia') {
							Cassiopeia = new Cassiopeia(parser);
						} else if (text == 'Chogath') {
							Chogath = new Amumu(parser);
						} else if (text == 'Corki') {
							Corki = new Alistar(parser);
						} else if (text == 'Darius') {
							Darius = new Darius(parser);
						} else if (text == 'Diana') {
							Diana = new Cassiopeia(parser);
						} else if (text == 'Draven') {
							Draven = new Draven(parser);
						} else if (text == 'DrMundo') {
							DrMundo = new Akali(parser);
						} else if (text == 'Ekko') {
							Ekko = new Ekko(parser);
						} else if (text == 'Elise') {
							Elise = new Cassiopeia(parser);
						} else if (text == 'Evelynn') {
							Evelynn = new Evelynn(parser);
						} else if (text == 'Ezreal') {
							Ezreal = new Amumu(parser);
						} else if (text == 'Fiddlesticks') {
							Fiddlesticks = new Fiddlesticks(parser);
						} else if (text == 'Fiora') {
							Fiora = new Fiora(parser);
						} else if (text == 'Fizz') {
							Fizz = new Fizz(parser);
						} else if (text == 'Galio') {
							Galio = new Amumu(parser);
						} else if (text == 'Gangplank') {
							Gangplank = new Gangplank(parser);
						} else if (text == 'Garen') {
							Garen = new Garen(parser);
						} else if (text == 'Gnar') {
							Gnar = new Gnar(parser);
						} else if (text == 'Gragas') {
							Gragas = new Fiora(parser);
						} else if (text == 'Graves') {
							Graves = new Fizz(parser);
						} else if (text == 'Hecarim') {
							Hecarim = new Hecarim(parser);
						} else if (text == 'Heimerdinger') {
							Heimerdinger = new Heimerdinger(parser);
						} else if (text == 'Illaoi') {
							Illaoi = new Brand(parser);
						} else if (text == 'Irelia') {
							Irelia = new Irelia(parser);
						} else if (text == 'Ivern') {
							Ivern = new Fizz(parser);
						} else if (text == 'Janna') {
							Janna = new Alistar(parser);
						} else if (text == 'JarvanIV') {
							JarvanIV = new Amumu(parser);
						} else if (text == 'Jax') {
							Jax = new Aphelios(parser);
						} else if (text == 'Jayce') {
							Jayce = new Jayce(parser);
						} else if (text == 'Jhin') {
							Jhin = new Jhin(parser);
						} else if (text == 'Jinx') {
							Jinx = new Jinx(parser);
						} else if (text == 'Kaisa') {
							Kaisa = new Kaisa(parser);
						} else if (text == 'Kalista') {
							Kalista = new Kalista(parser);
						} else if (text == 'Karma') {
							Karma = new Alistar(parser);
						} else if (text == 'Karthus') {
							Karthus = new Karthus(parser);
						} else if (text == 'Kassadin') {
							Kassadin = new AurelionSol(parser);
						} else if (text == 'Katarina') {
							Katarina = new Katarina(parser);
						} else if (text == 'Kayle') {
							Kayle = new Heimerdinger(parser);
						} else if (text == 'Kayn') {
							Kayn = new Amumu(parser);
						} else if (text == 'Kennen') {
							Kennen = new Katarina(parser);
						} else if (text == 'Khazix') {
							Khazix = new Aphelios(parser);
						} else if (text == 'Kindred') {
							Kindred = new AurelionSol(parser);
						} else if (text == 'Kled') {
							Kled = new Garen(parser);
						} else if (text == 'KogMaw') {
							KogMaw = new Alistar(parser);
						} else if (text == 'Leblanc') {
							Leblanc = new Fiora(parser);
						} else if (text == 'LeeSin') {
							LeeSin = new LeeSin(parser);
						} else if (text == 'Leona') {
							Leona = new Cassiopeia(parser);
						} else if (text == 'Lillia') {
							Lillia = new Hecarim(parser);
						} else if (text == 'Lissandra') {
							Lissandra = new AurelionSol(parser);
						} else if (text == 'Lucian') {
							Lucian = new Lucian(parser);
						} else if (text == 'Lulu') {
							Lulu = new AurelionSol(parser);
						} else if (text == 'Lux') {
							Lux = new Lux(parser);
						} else if (text == 'Malphite') {
							Malphite = new Malphite(parser);
						} else if (text == 'Malzahar') {
							Malzahar = new Malzahar(parser);
						} else if (text == 'Maokai') {
							Maokai = new Hecarim(parser);
						} else if (text == 'MasterYi') {
							MasterYi = new MasterYi(parser);
						} else if (text == 'MissFortune') {
							MissFortune = new MissFortune(parser);
						} else if (text == 'MonkeyKing') {
							MonkeyKing = new MonkeyKing(parser);
						} else if (text == 'Mordekaiser') {
							Mordekaiser = new Mordekaiser(parser);
						} else if (text == 'Morgana') {
							Morgana = new Fiora(parser);
						} else if (text == 'Nami') {
							Nami = new Aphelios(parser);
						} else if (text == 'Nasus') {
							Nasus = new Amumu(parser);
						} else if (text == 'Nautilus') {
							Nautilus = new Nautilus(parser);
						} else if (text == 'Neeko') {
							Neeko = new Anivia(parser);
						} else if (text == 'Nidalee') {
							Nidalee = new AurelionSol(parser);
						} else if (text == 'Nocturne') {
							Nocturne = new AurelionSol(parser);
						} else if (text == 'Nunu') {
							Nunu = new Ekko(parser);
						} else if (text == 'Olaf') {
							Olaf = new Aphelios(parser);
						} else if (text == 'Orianna') {
							Orianna = new Heimerdinger(parser);
						} else if (text == 'Ornn') {
							Ornn = new Ornn(parser);
						} else if (text == 'Pantheon') {
							Pantheon = new Pantheon(parser);
						} else if (text == 'Poppy') {
							Poppy = new Fizz(parser);
						} else if (text == 'Pyke') {
							Pyke = new Pyke(parser);
						} else if (text == 'Qiyana') {
							Qiyana = new AurelionSol(parser);
						} else if (text == 'Quinn') {
							Quinn = new Alistar(parser);
						} else if (text == 'Rakan') {
							Rakan = new Rakan(parser);
						} else if (text == 'Rammus') {
							Rammus = new Amumu(parser);
						} else if (text == 'RekSai') {
							RekSai = new Gnar(parser);
						} else if (text == 'Rell') {
							Rell = new Rell(parser);
						} else if (text == 'Renekton') {
							Renekton = new Garen(parser);
						} else if (text == 'Rengar') {
							Rengar = new Mordekaiser(parser);
						} else if (text == 'Riven') {
							Riven = new Riven(parser);
						} else if (text == 'Rumble') {
							Rumble = new Akali(parser);
						} else if (text == 'Ryze') {
							Ryze = new Ryze(parser);
						} else if (text == 'Samira') {
							Samira = new Lucian(parser);
						} else if (text == 'Sejuani') {
							Sejuani = new Sejuani(parser);
						} else if (text == 'Senna') {
							Senna = new Senna(parser);
						} else if (text == 'Seraphine') {
							Seraphine = new Seraphine(parser);
						} else if (text == 'Sett') {
							Sett = new Ryze(parser);
						} else if (text == 'Shaco') {
							Shaco = new Senna(parser);
						} else if (text == 'Shen') {
							Shen = new Seraphine(parser);
						} else if (text == 'Shyvana') {
							Shyvana = new Katarina(parser);
						} else if (text == 'Singed') {
							Singed = new Alistar(parser);
						} else if (text == 'Sion') {
							Sion = new Irelia(parser);
						} else if (text == 'Sivir') {
							Sivir = new Cassiopeia(parser);
						} else if (text == 'Skarner') {
							Skarner = new Amumu(parser);
						} else if (text == 'Sona') {
							Sona = new Brand(parser);
						} else if (text == 'Soraka') {
							Soraka = new Brand(parser);
						} else if (text == 'Swain') {
							Swain = new Swain(parser);
						} else if (text == 'Sylas') {
							Sylas = new Ekko(parser);
						} else if (text == 'Syndra') {
							Syndra = new Jhin(parser);
						} else if (text == 'TahmKench') {
							TahmKench = new Katarina(parser);
						} else if (text == 'Taliyah') {
							Taliyah = new Amumu(parser);
						} else if (text == 'Talon') {
							Talon = new Draven(parser);
						} else if (text == 'Taric') {
							Taric = new Rakan(parser);
						} else if (text == 'Teemo') {
							Teemo = new Brand(parser);
						} else if (text == 'Thresh') {
							Thresh = new Heimerdinger(parser);
						} else if (text == 'Tristana') {
							Tristana = new Aphelios(parser);
						} else if (text == 'Trundle') {
							Trundle = new Malphite(parser);
						} else if (text == 'Tryndamere') {
							Tryndamere = new Katarina(parser);
						} else if (text == 'TwistedFate') {
							TwistedFate = new Fiora(parser);
						} else if (text == 'Twitch') {
							Twitch = new Lucian(parser);
						} else if (text == 'Udyr') {
							Udyr = new Gangplank(parser);
						} else if (text == 'Urgot') {
							Urgot = new Brand(parser);
						} else if (text == 'Varus') {
							Varus = new Ahri(parser);
						} else if (text == 'Vayne') {
							Vayne = new Draven(parser);
						} else if (text == 'Veigar') {
							Veigar = new Fiora(parser);
						} else if (text == 'Velkoz') {
							Velkoz = new Fiora(parser);
						} else if (text == 'Vi') {
							Vi = new Vi(parser);
						} else if (text == 'Viego') {
							Viego = new Garen(parser);
						} else if (text == 'Viktor') {
							Viktor = new Ekko(parser);
						} else if (text == 'Vladimir') {
							Vladimir = new Vladimir(parser);
						} else if (text == 'Volibear') {
							Volibear = new Volibear(parser);
						} else if (text == 'Warwick') {
							Warwick = new Malphite(parser);
						} else if (text == 'Xayah') {
							Xayah = new Aphelios(parser);
						} else if (text == 'Xerath') {
							Xerath = new Cassiopeia(parser);
						} else if (text == 'XinZhao') {
							XinZhao = new Malphite(parser);
						} else if (text == 'Yasuo') {
							Yasuo = new Katarina(parser);
						} else if (text == 'Yone') {
							Yone = new Riven(parser);
						} else if (text == 'Yorick') {
							Yorick = new Volibear(parser);
						} else if (text == 'Yuumi') {
							Yuumi = new Azir(parser);
						} else if (text == 'Zac') {
							Zac = new Akali(parser);
						} else if (text == 'Zed') {
							Zed = new Akali(parser);
						} else if (text == 'Ziggs') {
							Ziggs = new Ziggs(parser);
						} else if (text == 'Zilean') {
							Zilean = new Brand(parser);
						} else if (text == 'Zoe') {
							Zoe = new Fiora(parser);
						} else if (text == 'Zyra') {
							Zyra = new Anivia(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Data consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Info {
		@AuraEnabled public Integer attack {get;set;} 
		@AuraEnabled public Integer defense {get;set;} 
		@AuraEnabled public Integer magic {get;set;} 
		@AuraEnabled public Integer difficulty {get;set;} 

		public Info(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'attack') {
							attack = parser.getIntegerValue();
						} else if (text == 'defense') {
							defense = parser.getIntegerValue();
						} else if (text == 'magic') {
							magic = parser.getIntegerValue();
						} else if (text == 'difficulty') {
							difficulty = parser.getIntegerValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Info consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Evelynn {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		public Stats_J stats {get;set;} 

		public Evelynn(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_J(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Evelynn consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Lux {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		public Stats_AQ stats {get;set;} 

		public Lux(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_AQ(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Lux consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Camille {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		public Stats_O stats {get;set;} 

		public Camille(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_O(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Camille consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class MasterYi {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		public Stats_AN stats {get;set;} 

		public MasterYi(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_AN(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'MasterYi consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Ryze {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		public Stats_AC stats {get;set;} 

		public Ryze(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_AC(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Ryze consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Malphite {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		public Stats_AP stats {get;set;} 

		public Malphite(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_AP(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Malphite consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Anivia {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		public Stats_V stats {get;set;} 

		public Anivia(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_V(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Anivia consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Malzahar {
		@AuraEnabled public String version {get;set;} 
		@AuraEnabled public String id {get;set;} 
		@AuraEnabled public String key {get;set;} 
		@AuraEnabled public String name {get;set;} 
		@AuraEnabled public String title {get;set;} 
		@AuraEnabled public String blurb {get;set;} 
		@AuraEnabled public Info info {get;set;} 
		@AuraEnabled public Image image {get;set;} 
		@AuraEnabled public List<String> tags {get;set;} 
		@AuraEnabled public String partype {get;set;} 
		public Stats_AO stats {get;set;} 

		public Malzahar(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'version') {
							version = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'key') {
							key = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'blurb') {
							blurb = parser.getText();
						} else if (text == 'info') {
							info = new Info(parser);
						} else if (text == 'image') {
							image = new Image(parser);
						} else if (text == 'tags') {
							tags = arrayOfString(parser);
						} else if (text == 'partype') {
							partype = parser.getText();
						} else if (text == 'stats') {
							stats = new Stats_AO(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Malzahar consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	
	public static Champions parse(String json) {
		System.JSONParser parser = System.JSON.createParser(json);
		return new Champions(parser);
	}
	
	public static void consumeObject(System.JSONParser parser) {
		Integer depth = 0;
		do {
			System.JSONToken curr = parser.getCurrentToken();
			if (curr == System.JSONToken.START_OBJECT || 
				curr == System.JSONToken.START_ARRAY) {
				depth++;
			} else if (curr == System.JSONToken.END_OBJECT ||
				curr == System.JSONToken.END_ARRAY) {
				depth--;
			}
		} while (depth > 0 && parser.nextToken() != null);
	}
	

    private static List<String> arrayOfString(System.JSONParser p) {
        List<String> res = new List<String>();
        if (p.getCurrentToken() == null) p.nextToken();
        while (p.nextToken() != System.JSONToken.END_ARRAY) {
            res.add(p.getText());
        }
        return res;
    }

}