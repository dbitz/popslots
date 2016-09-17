package com.helpshift.support;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class Section implements Parcelable {
    public static final Creator<Section> CREATOR = new Creator<Section>() {
        public Section createFromParcel(Parcel source) {
            return new Section(source);
        }

        public Section[] newArray(int size) {
            return new Section[size];
        }
    };
    private long id;
    private String publish_id;
    private String section_id;
    private String title;

    public Section() {
        this.id = -1;
        this.section_id = "";
        this.publish_id = "";
        this.title = "";
    }

    public Section(long id, String sectionId, String title, String publish_id) {
        this.id = id;
        this.section_id = sectionId;
        this.title = title;
        this.publish_id = publish_id;
    }

    public Section(String title, String publish_id) {
        this.id = -1;
        this.title = title;
        this.publish_id = publish_id;
    }

    public Section(String id, String title, String publish_id) {
        this.id = -1;
        this.section_id = id;
        this.title = title;
        this.publish_id = publish_id;
    }

    private Section(Parcel in) {
        this.section_id = in.readString();
        this.title = in.readString();
        this.publish_id = in.readString();
    }

    public String toString() {
        return this.title;
    }

    public String getPublishId() {
        return this.publish_id;
    }

    public String getTitle() {
        return this.title;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getSectionId() {
        return this.section_id;
    }

    public boolean equals(Object otherObj) {
        Section other = (Section) otherObj;
        if (this.title.equals(other.title) && this.publish_id.equals(other.publish_id) && this.section_id.equals(other.section_id)) {
            return true;
        }
        return false;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.section_id);
        dest.writeString(this.title);
        dest.writeString(this.publish_id);
    }
}
