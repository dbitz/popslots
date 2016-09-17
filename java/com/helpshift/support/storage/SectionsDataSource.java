package com.helpshift.support.storage;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.helpshift.constants.Tables;
import com.helpshift.support.FaqTagFilter;
import com.helpshift.support.Log;
import com.helpshift.support.Section;
import com.helpshift.support.constants.SectionsColumns;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import sfs2x.client.requests.LoginRequest;

public class SectionsDataSource implements SectionDAO {
    private static final String TAG = "HelpShiftDebug";
    private SQLiteDatabase database;
    private final FaqsDBHelper dbHelper = FaqsDBHelper.getInstance();
    private FaqDAO faqDAO = new FaqsDataSource();

    private static Section cursorToSection(Cursor cursor) {
        return new Section(cursor.getLong(0), cursor.getString(1), cursor.getString(3), cursor.getString(2));
    }

    private static ContentValues sectionToContentValues(JSONObject section) throws JSONException {
        ContentValues values = new ContentValues();
        values.put(SectionsColumns.TITLE, section.getString(SectionsColumns.TITLE));
        values.put(SectionsColumns.PUBLISH_ID, section.getString(SectionsColumns.PUBLISH_ID));
        values.put(SectionsColumns.SECTION_ID, section.getString(LoginRequest.KEY_ID));
        return values;
    }

    public void write() {
        this.database = this.dbHelper.getWritableDatabase();
    }

    public void read() {
        this.database = this.dbHelper.getReadableDatabase();
    }

    public void close() {
        this.dbHelper.close();
    }

    public void storeSections(JSONArray sections) {
        synchronized (this.dbHelper) {
            write();
            try {
                this.database.beginTransaction();
                for (int i = 0; i < sections.length(); i++) {
                    JSONObject section = sections.getJSONObject(i);
                    this.database.insert(Tables.SECTIONS, null, sectionToContentValues(section));
                    JSONArray faqs = section.optJSONArray(Tables.FAQS);
                    if (faqs != null) {
                        FaqsDataSource.addFaqsUnsafe(this.database, section.getString(SectionsColumns.PUBLISH_ID), faqs);
                    }
                }
                this.database.setTransactionSuccessful();
            } catch (JSONException e) {
                Log.d(TAG, "JSONException", e);
            } finally {
                this.database.endTransaction();
            }
            close();
        }
    }

    public Section getSection(String publishId) {
        if (publishId == null || publishId.equals("")) {
            return new Section();
        }
        Section section = null;
        synchronized (this.dbHelper) {
            read();
            Cursor cursor = this.database.query(Tables.SECTIONS, null, "publish_id = ?", new String[]{publishId}, null, null, null);
            cursor.moveToFirst();
            if (!cursor.isAfterLast()) {
                section = cursorToSection(cursor);
            }
            cursor.close();
            close();
        }
        return section;
    }

    public List<Section> getAllSections() {
        List<Section> sections = new ArrayList();
        synchronized (this.dbHelper) {
            read();
            Cursor cursor = this.database.query(Tables.SECTIONS, null, null, null, null, null, null);
            cursor.moveToFirst();
            while (!cursor.isAfterLast()) {
                sections.add(cursorToSection(cursor));
                cursor.moveToNext();
            }
            cursor.close();
            close();
        }
        return sections;
    }

    public List<Section> getAllSections(FaqTagFilter faqTagFilter) {
        List<Section> allSections = getAllSections();
        if (faqTagFilter == null) {
            return allSections;
        }
        List<Section> filteredSections = new ArrayList();
        for (Section section : allSections) {
            if (!this.faqDAO.getFaqsForSection(section.getPublishId(), faqTagFilter).isEmpty()) {
                filteredSections.add(section);
            }
        }
        return filteredSections;
    }

    public void clearSectionsData() {
        synchronized (this.dbHelper) {
            write();
            this.dbHelper.dropTables(this.database);
            this.dbHelper.onCreate(this.database);
            close();
        }
    }
}
