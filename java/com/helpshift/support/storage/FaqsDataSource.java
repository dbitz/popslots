package com.helpshift.support.storage;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.facebook.internal.ServerProtocol;
import com.helpshift.constants.Tables;
import com.helpshift.support.Faq;
import com.helpshift.support.FaqTagFilter;
import com.helpshift.support.FaqTagFilter.Operator;
import com.helpshift.support.Log;
import com.helpshift.support.constants.FaqsColumns;
import com.helpshift.support.constants.MessageColumns;
import com.helpshift.support.constants.SectionsColumns;
import com.helpshift.util.HSJSONUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import sfs2x.client.requests.LoginRequest;
import sfs2x.client.requests.MessageRecipientMode;
import sfs2x.client.util.Base64;
import sfs2x.client.util.BuddyOnlineState;

public class FaqsDataSource implements FaqDAO {
    private static final String TAG = "HelpShiftDebug";
    private SQLiteDatabase database;
    private final FaqsDBHelper dbHelper = FaqsDBHelper.getInstance();

    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$helpshift$support$FaqTagFilter$Operator = new int[Operator.values().length];

        static {
            try {
                $SwitchMap$com$helpshift$support$FaqTagFilter$Operator[Operator.AND.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$helpshift$support$FaqTagFilter$Operator[Operator.OR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$helpshift$support$FaqTagFilter$Operator[Operator.NOT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$helpshift$support$FaqTagFilter$Operator[Operator.UNDEFINED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
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

    public void clearDB() {
        synchronized (this.dbHelper) {
            read();
            this.dbHelper.dropTables(this.database);
            this.dbHelper.onCreate(this.database);
            close();
        }
    }

    private void createFaq(Faq faq) {
        ContentValues values = faqToContentValues(faq);
        synchronized (this.dbHelper) {
            write();
            this.database.insert(Tables.FAQS, null, values);
            close();
        }
    }

    private void updateFaq(Faq faq) {
        ContentValues values = faqToContentValues(faq);
        synchronized (this.dbHelper) {
            write();
            this.database.update(Tables.FAQS, values, "question_id = ?", new String[]{faq.getId()});
            close();
        }
    }

    public void addFaq(Faq faq) {
        if (getFaq(faq.getPublishId()) == null) {
            createFaq(faq);
        } else {
            updateFaq(faq);
        }
    }

    public Faq getFaq(String publishId) {
        if (TextUtils.isEmpty(publishId)) {
            return new Faq();
        }
        Faq faq = null;
        synchronized (this.dbHelper) {
            read();
            Cursor cursor = this.database.query(Tables.FAQS, null, "publish_id = ?", new String[]{publishId}, null, null, null);
            if (cursor.moveToFirst()) {
                faq = cursorToFaq(cursor);
            }
            cursor.close();
            close();
        }
        return faq;
    }

    public List<Faq> getFaqsDataForSection(String sectionPublishId) {
        if (TextUtils.isEmpty(sectionPublishId)) {
            return new ArrayList();
        }
        List<Faq> faqs = new ArrayList();
        synchronized (this.dbHelper) {
            read();
            Cursor cursor = this.database.query(Tables.FAQS, null, "section_id = ?", new String[]{sectionPublishId}, null, null, null);
            if (cursor.moveToFirst()) {
                while (!cursor.isAfterLast()) {
                    faqs.add(cursorToFaq(cursor));
                    cursor.moveToNext();
                }
            }
            cursor.close();
            close();
        }
        return faqs;
    }

    public List<Faq> getFaqsForSection(String sectionPublishId) {
        if (TextUtils.isEmpty(sectionPublishId)) {
            return new ArrayList();
        }
        List<Faq> faqs = new ArrayList();
        synchronized (this.dbHelper) {
            read();
            Cursor cursor = this.database.query(Tables.FAQS, FaqsColumns.UI_COLUMNS, "section_id = ?", new String[]{sectionPublishId}, null, null, null);
            if (cursor.moveToFirst()) {
                while (!cursor.isAfterLast()) {
                    faqs.add(cursorToFaqForUI(cursor));
                    cursor.moveToNext();
                }
            }
            cursor.close();
            close();
        }
        return faqs;
    }

    public List<Faq> getFilteredFaqs(List<Faq> faqs, FaqTagFilter faqTagFilter) {
        if (faqTagFilter == null) {
            return faqs;
        }
        switch (AnonymousClass1.$SwitchMap$com$helpshift$support$FaqTagFilter$Operator[faqTagFilter.getOperator().ordinal()]) {
            case BuddyOnlineState.OFFLINE /*1*/:
                return getANDFilteredFaqs(faqs, faqTagFilter);
            case BuddyOnlineState.LEFT_THE_SERVER /*2*/:
                return getORFilteredFaqs(faqs, faqTagFilter);
            case MessageRecipientMode.TO_ZONE /*3*/:
                return getNOTFilteredFaqs(faqs, faqTagFilter);
            case Base64.DONT_GUNZIP /*4*/:
                return faqs;
            default:
                return faqs;
        }
    }

    public List<Faq> getFaqsForSection(String sectionPublishId, FaqTagFilter faqTagFilter) {
        return getFilteredFaqs(getFaqsDataForSection(sectionPublishId), faqTagFilter);
    }

    private List<Faq> getANDFilteredFaqs(List<Faq> faqs, FaqTagFilter faqTagFilter) {
        List<Faq> filteredFaqs = new ArrayList();
        for (Faq faq : faqs) {
            List<String> filterTags = new ArrayList(Arrays.asList(faqTagFilter.getTags()));
            filterTags.removeAll(faq.getCategoryTags());
            if (filterTags.isEmpty()) {
                filteredFaqs.add(faq);
            }
        }
        return filteredFaqs;
    }

    private List<Faq> getORFilteredFaqs(List<Faq> faqs, FaqTagFilter faqTagFilter) {
        List<Faq> filteredFaqs = new ArrayList();
        for (Faq faq : faqs) {
            if (new ArrayList(Arrays.asList(faqTagFilter.getTags())).removeAll(faq.getCategoryTags())) {
                filteredFaqs.add(faq);
            }
        }
        return filteredFaqs;
    }

    private List<Faq> getNOTFilteredFaqs(List<Faq> faqs, FaqTagFilter faqTagFilter) {
        List<Faq> filteredFaqs = new ArrayList();
        for (Faq faq : faqs) {
            if (!new ArrayList(Arrays.asList(faqTagFilter.getTags())).removeAll(faq.getCategoryTags())) {
                filteredFaqs.add(faq);
            }
        }
        return filteredFaqs;
    }

    public int setIsHelpful(String questionId, Boolean state) {
        int i = 1;
        if (TextUtils.isEmpty(questionId)) {
            return 0;
        }
        int returnVal;
        ContentValues values = new ContentValues();
        String str = FaqsColumns.HELPFUL;
        if (!state.booleanValue()) {
            i = -1;
        }
        values.put(str, Integer.valueOf(i));
        synchronized (this.dbHelper) {
            write();
            returnVal = this.database.update(Tables.FAQS, values, "question_id = ?", new String[]{questionId});
            close();
        }
        return returnVal;
    }

    public static void addFaqsUnsafe(SQLiteDatabase database, String sectionPublishId, JSONArray faqs) {
        int j = 0;
        while (j < faqs.length()) {
            try {
                database.insert(Tables.FAQS, null, faqToContentValues(sectionPublishId, faqs.getJSONObject(j)));
                j++;
            } catch (JSONException e) {
                Log.d(TAG, "JSONException", e);
                return;
            }
        }
    }

    private static Faq cursorToFaq(Cursor cursor) {
        boolean z = true;
        long j = cursor.getLong(0);
        String string = cursor.getString(1);
        String string2 = cursor.getString(2);
        String string3 = cursor.getString(3);
        String string4 = cursor.getString(4);
        String string5 = cursor.getString(5);
        int i = cursor.getInt(6);
        if (cursor.getInt(7) != 1) {
            z = false;
        }
        return new Faq(j, string, string2, string3, string4, string5, i, Boolean.valueOf(z), HSJSONUtils.jsonToStringArrayList(cursor.getString(8)), HSJSONUtils.jsonToStringArrayList(cursor.getString(9)));
    }

    private static Faq cursorToFaqForUI(Cursor cursor) {
        return new Faq(0, cursor.getString(0), cursor.getString(1), cursor.getString(2), cursor.getString(3), "", 0, Boolean.valueOf(false), new ArrayList(), new ArrayList());
    }

    private static ContentValues faqToContentValues(Faq faq) {
        ContentValues values = new ContentValues();
        values.put(FaqsColumns.QUESTION_ID, faq.getId());
        values.put(SectionsColumns.PUBLISH_ID, faq.getPublishId());
        values.put(SectionsColumns.SECTION_ID, faq.getSectionPublishId());
        values.put(SectionsColumns.TITLE, faq.getTitle());
        values.put(MessageColumns.BODY, faq.getBody());
        values.put(FaqsColumns.HELPFUL, Integer.valueOf(faq.getIsHelpful()));
        values.put(FaqsColumns.RTL, faq.getIsRtl());
        values.put(FaqsColumns.TAGS, String.valueOf(new JSONArray(faq.getTags())));
        values.put(FaqsColumns.CATEGORY_TAGS, String.valueOf(new JSONArray(faq.getCategoryTags())));
        return values;
    }

    private static ContentValues faqToContentValues(String sectionPublishId, JSONObject faq) throws JSONException {
        ContentValues values = new ContentValues();
        values.put(FaqsColumns.QUESTION_ID, faq.getString(LoginRequest.KEY_ID));
        values.put(SectionsColumns.PUBLISH_ID, faq.getString(SectionsColumns.PUBLISH_ID));
        values.put(SectionsColumns.SECTION_ID, sectionPublishId);
        values.put(SectionsColumns.TITLE, faq.getString(SectionsColumns.TITLE));
        values.put(MessageColumns.BODY, faq.getString(MessageColumns.BODY));
        values.put(FaqsColumns.HELPFUL, Integer.valueOf(0));
        values.put(FaqsColumns.RTL, Boolean.valueOf(faq.getString("is_rtl").equals(ServerProtocol.DIALOG_RETURN_SCOPES_TRUE)));
        values.put(FaqsColumns.TAGS, faq.has("stags") ? faq.optJSONArray("stags").toString() : new JSONArray().toString());
        values.put(FaqsColumns.CATEGORY_TAGS, faq.has("issue_tags") ? faq.optJSONArray("issue_tags").toString() : new JSONArray().toString());
        return values;
    }
}
