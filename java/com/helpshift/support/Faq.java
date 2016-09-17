package com.helpshift.support;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

public final class Faq implements Parcelable {
    public static final Creator<Faq> CREATOR = new Creator<Faq>() {
        public Faq createFromParcel(Parcel source) {
            return new Faq(source);
        }

        public Faq[] newArray(int size) {
            return new Faq[size];
        }
    };
    private String body;
    private List<String> categoryTags;
    private long id;
    private int is_helpful;
    private Boolean is_rtl;
    private String publish_id;
    private String qId;
    private ArrayList<String> searchTerms;
    private String section_publish_id;
    private List<String> tags;
    private String title;
    private String type;

    public Faq() {
        this.title = "";
        this.publish_id = "";
        this.type = "";
        this.body = "";
        this.section_publish_id = "";
        this.is_helpful = 0;
        this.is_rtl = Boolean.valueOf(false);
        this.tags = new ArrayList();
        this.categoryTags = new ArrayList();
    }

    public Faq(String title, String publish_id, String type) {
        this.title = title;
        this.publish_id = publish_id;
        this.type = type;
    }

    public Faq(long id, String qId, String publish_id, String sectionId, String title, String body, int isHelpful, Boolean isRtl, List<String> tags, List<String> categoryTags) {
        this.id = id;
        this.qId = qId;
        this.title = title;
        this.publish_id = publish_id;
        this.type = "faq";
        this.section_publish_id = sectionId;
        this.body = body;
        this.is_helpful = isHelpful;
        this.is_rtl = isRtl;
        this.tags = tags;
        this.categoryTags = categoryTags;
    }

    private Faq(Parcel in) {
        this.qId = in.readString();
        this.title = in.readString();
        this.publish_id = in.readString();
        this.type = in.readString();
        this.section_publish_id = in.readString();
        this.body = in.readString();
        this.is_helpful = in.readInt();
        this.is_rtl = Boolean.valueOf(in.readByte() != (byte) 0);
        in.readStringList(this.searchTerms);
        in.readStringList(this.tags);
        in.readStringList(this.categoryTags);
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.qId);
        dest.writeString(this.title);
        dest.writeString(this.publish_id);
        dest.writeString(this.type);
        dest.writeString(this.section_publish_id);
        dest.writeString(this.body);
        dest.writeInt(this.is_helpful);
        dest.writeByte((byte) (this.is_rtl.booleanValue() ? 1 : 0));
        dest.writeStringList(this.searchTerms);
        dest.writeStringList(this.tags);
        dest.writeStringList(this.categoryTags);
    }

    public String toString() {
        return this.title;
    }

    public String getId() {
        return this.qId;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getPublishId() {
        return this.publish_id;
    }

    public String getSectionPublishId() {
        return this.section_publish_id;
    }

    protected String getType() {
        return this.type;
    }

    public String getTitle() {
        return this.title;
    }

    public String getBody() {
        return this.body;
    }

    public int getIsHelpful() {
        return this.is_helpful;
    }

    public List<String> getTags() {
        if (this.tags == null) {
            return new ArrayList();
        }
        return this.tags;
    }

    public List<String> getCategoryTags() {
        if (this.categoryTags == null) {
            return new ArrayList();
        }
        return this.categoryTags;
    }

    public Boolean getIsRtl() {
        return this.is_rtl;
    }

    public ArrayList<String> getSearchTerms() {
        return this.searchTerms;
    }

    protected void clearSearchTerms() {
        this.searchTerms = null;
    }

    protected void addSearchTerms(ArrayList<String> searchTerms) {
        this.searchTerms = mergeSearchTerms(this.searchTerms, searchTerms);
    }

    private static ArrayList<String> mergeSearchTerms(ArrayList<String> searchTerms1, ArrayList<String> searchTerms2) {
        HashSet<String> searchTermsSet = new HashSet();
        if (searchTerms1 != null) {
            searchTermsSet.addAll(searchTerms1);
        }
        if (searchTerms2 != null) {
            searchTermsSet.addAll(searchTerms2);
        }
        return new ArrayList(searchTermsSet);
    }

    public boolean equals(Object otherObj) {
        Faq other = (Faq) otherObj;
        if (this.qId.equals(other.qId) && this.title.equals(other.title) && this.body.equals(other.body) && this.publish_id.equals(other.publish_id) && this.section_publish_id.equals(other.section_publish_id) && this.is_rtl == other.is_rtl && this.is_helpful == other.is_helpful && this.tags.equals(other.tags) && this.categoryTags.equals(other.categoryTags)) {
            return true;
        }
        return false;
    }
}
