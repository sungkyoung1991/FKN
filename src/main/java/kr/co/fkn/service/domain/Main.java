package kr.co.fkn.service.domain;

public class Main {

	private int mainNo;
	private String title;
	private String contents;
	private String tablesInForKnowledgeNote;

	public Main() {
		super();
	}

	public String getTablesInForKnowledgeNote() {
		return tablesInForKnowledgeNote;
	}

	public void setTablesInForKnowledgeNote(String tablesInForKnowledgeNote) {
		this.tablesInForKnowledgeNote = tablesInForKnowledgeNote;
	}

	public int getMainNo() {
		return mainNo;
	}

	public void setMainNo(int mainNo) {
		this.mainNo = mainNo;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	@Override
	public String toString() {
		return "Main [mainNo=" + mainNo + ", title=" + title + ", contents=" + contents + ", tablesInForKnowledgeNote="
				+ tablesInForKnowledgeNote + "]";
	}

}
