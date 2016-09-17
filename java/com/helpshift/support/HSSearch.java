package com.helpshift.support;

import com.helpshift.support.constants.MessageColumns;
import com.helpshift.support.external.DoubleMetaphone;
import com.helpshift.support.util.HSTransliterator;
import com.helpshift.util.constants.KeyValueStoreColumns;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.TreeMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import sfs2x.client.requests.BanUserRequest;
import sfs2x.client.requests.ChangeRoomCapacityRequest;
import sfs2x.client.requests.ExtensionRequest;
import sfs2x.client.requests.FindUsersRequest;
import sfs2x.client.requests.KickUserRequest;
import sfs2x.client.requests.LoginRequest;
import sfs2x.client.requests.UnsubscribeRoomGroupRequest;
import sfs2x.client.requests.buddylist.GoOnlineRequest;
import sfs2x.client.requests.game.InviteUsersRequest;
import sfs2x.client.requests.mmo.SetMMOItemVariables;
import sfs2x.client.requests.mmo.SetUserPositionRequest;

public final class HSSearch {
    public static final String TAG = "HelpShiftDebug";
    private static boolean indexing = false;
    private static boolean markDeinit = false;
    private static DoubleMetaphone metaPhone = new DoubleMetaphone();

    public enum HS_SEARCH_OPTIONS {
        FULL_SEARCH,
        METAPHONE_SEARCH,
        KEYWORD_SEARCH
    }

    public static void init() {
        if (!indexing) {
            Thread indexThread = new Thread(new Runnable() {
                public void run() {
                    HSTransliterator.init();
                }
            });
            indexThread.setDaemon(true);
            indexThread.start();
        }
    }

    public static void deinit() {
        if (indexing) {
            markDeinit = true;
        } else {
            HSTransliterator.deinit();
        }
    }

    public static String stripHtml(String html) {
        return html.replaceAll("<[^>]+>", "");
    }

    public static ArrayList<String> generateTokens(String str) {
        ArrayList<String> tokens = new ArrayList();
        Matcher m = Pattern.compile("\\w+").matcher(str);
        while (m.find()) {
            if (m.group(0).length() > 2) {
                tokens.add(m.group(0));
            }
        }
        return tokens;
    }

    public static ArrayList<String> generateTokensForSearchQuery(String str) {
        ArrayList<String> tokens = new ArrayList();
        Matcher m = Pattern.compile("\\w+").matcher(str);
        while (m.find()) {
            if (m.group(0).length() > 2 || str.length() > 2) {
                tokens.add(m.group(0));
            }
        }
        return tokens;
    }

    public static ArrayList<String> generateNgrams(int min, int max, String str) {
        ArrayList<String> output = new ArrayList();
        int i = min;
        while (i < str.length() && i <= max) {
            output.add(str.substring(0, i));
            i++;
        }
        return output;
    }

    public static ArrayList<HashMap<String, String>> generateVariations(final String word, final String wordType) {
        HashSet<HashMap<String, String>> output = new HashSet();
        output.add(new HashMap() {
        });
        Iterator it = generateNgrams(2, 10, word).iterator();
        while (it.hasNext()) {
            final String ngram = (String) it.next();
            output.add(new HashMap() {
            });
        }
        output.add(new HashMap() {
        });
        return new ArrayList(output);
    }

    public static ArrayList<HashMap<String, String>> generateSearchVariations(final String word) {
        HashSet<HashMap<String, String>> output = new HashSet();
        output.add(new HashMap() {
        });
        output.add(new HashMap() {
        });
        return new ArrayList(output);
    }

    public static String sanitize(String str) {
        return HSTransliterator.unidecode(stripHtml(str).toLowerCase());
    }

    public static int calcFreq(String type, String token) {
        if (token.length() == 1) {
            return 5;
        }
        if (type == "ngram") {
            return token.length();
        }
        if (type == "word") {
            return 30;
        }
        if (type == "metaphone") {
            return 1;
        }
        if (type == "imp_word") {
            return InviteUsersRequest.MAX_EXPIRY_TIME;
        }
        if (type == "tag_word") {
            return 150;
        }
        return 1;
    }

    public static HashMap<String, Integer> indexDocument(String title, String doc, List<String> tags) {
        ArrayList<HashMap<String, String>> output = new ArrayList();
        Iterator it = generateTokens(sanitize(doc)).iterator();
        while (it.hasNext()) {
            output.addAll(generateVariations((String) it.next(), "word"));
        }
        it = generateTokens(sanitize(title)).iterator();
        while (it.hasNext()) {
            output.addAll(generateVariations((String) it.next(), "imp_word"));
        }
        for (String tag : tags) {
            output.addAll(generateVariations(sanitize(tag), "tag_word"));
        }
        HashMap<String, Integer> indexDoc = new HashMap();
        Iterator it2 = output.iterator();
        while (it2.hasNext()) {
            HashMap tokenMap = (HashMap) it2.next();
            String token = (String) tokenMap.get(KeyValueStoreColumns.value);
            int tokenFreq = 0;
            if (indexDoc.containsKey(token)) {
                tokenFreq = ((Integer) indexDoc.get(token)).intValue();
            }
            indexDoc.put(token, Integer.valueOf(tokenFreq + calcFreq((String) tokenMap.get(MessageColumns.TYPE), token)));
        }
        return indexDoc;
    }

    public static HashMap indexDocuments(ArrayList<Faq> docs) {
        HashMap fullIndex = new HashMap();
        if (indexing) {
            return null;
        }
        if (!HSTransliterator.isLoaded()) {
            HSTransliterator.init();
            markDeinit = true;
        }
        indexing = true;
        HashMap tfidfIndex = buildTfidfIndex(docs);
        HashMap fuzzyIndex = buildFuzzyIndex(docs);
        fullIndex.put(SetMMOItemVariables.KEY_ITEM_ID, tfidfIndex);
        fullIndex.put(HSFunnel.READ_FAQ, fuzzyIndex);
        indexing = false;
        if (!markDeinit) {
            return fullIndex;
        }
        deinit();
        markDeinit = false;
        return fullIndex;
    }

    protected static ArrayList<HashMap<String, String>> filterSearchQuery(ArrayList<HashMap<String, String>> queryTerms, HS_SEARCH_OPTIONS options) {
        ArrayList<HashMap<String, String>> terms = new ArrayList();
        Iterator it = queryTerms.iterator();
        while (it.hasNext()) {
            HashMap<String, String> termMap = (HashMap) it.next();
            String type = (String) termMap.get(MessageColumns.TYPE);
            if (options == HS_SEARCH_OPTIONS.FULL_SEARCH) {
                terms.add(termMap);
            } else if (options == HS_SEARCH_OPTIONS.METAPHONE_SEARCH && type.equals("metaphone")) {
                terms.add(termMap);
            } else if (options == HS_SEARCH_OPTIONS.KEYWORD_SEARCH && (type.equals("word") || type.equals("ngram"))) {
                terms.add(termMap);
            }
        }
        return terms;
    }

    public static ArrayList<HashMap> queryDocs(String query, HashMap tfidf, HS_SEARCH_OPTIONS options) {
        String docId;
        HashMap docRanks = new HashMap();
        HashSet<String> resultDocSet = null;
        HashMap<String, ArrayList<String>> matchedTermsMap = new HashMap();
        ArrayList<HashMap<String, String>> terms = new ArrayList();
        Iterator it = generateTokensForSearchQuery(sanitize(query)).iterator();
        while (it.hasNext()) {
            terms.addAll(filterSearchQuery(generateSearchVariations((String) it.next()), options));
        }
        if (tfidf != null) {
            it = terms.iterator();
            while (it.hasNext()) {
                HashMap<String, String> termMap = (HashMap) it.next();
                String term = (String) termMap.get(KeyValueStoreColumns.value);
                String type = (String) termMap.get(MessageColumns.TYPE);
                HashMap termDocMap = (HashMap) tfidf.get(term);
                if (termDocMap != null && termDocMap.keySet().size() > 0) {
                    for (String docId2 : termDocMap.keySet()) {
                        ArrayList<String> matchTerms = (ArrayList) matchedTermsMap.get(docId2);
                        if (matchTerms == null) {
                            matchTerms = new ArrayList();
                        }
                        if (term.length() > 0) {
                            matchTerms.add(term);
                        }
                        matchedTermsMap.put(docId2, matchTerms);
                        Double docRank = (Double) docRanks.get(docId2);
                        Double docContribution = Double.valueOf(((Double) termDocMap.get(docId2)).doubleValue() * ((double) calcFreq(type, term)));
                        if (docRank != null) {
                            docRanks.put(docId2, Double.valueOf(docRank.doubleValue() + docContribution.doubleValue()));
                        } else {
                            docRanks.put(docId2, docContribution);
                        }
                    }
                    HashSet termDocSet = new HashSet();
                    termDocSet.addAll(termDocMap.keySet());
                    HashSet resultDocSet2;
                    if (resultDocSet2 == null || resultDocSet2.isEmpty()) {
                        resultDocSet2 = new HashSet(termDocSet);
                    } else {
                        resultDocSet2.addAll(termDocSet);
                    }
                }
            }
        }
        TreeMap<String, Double> sortedDocRanks;
        if (resultDocSet == null || resultDocSet.isEmpty()) {
            sortedDocRanks = new TreeMap(new RankComparator(docRanks));
            sortedDocRanks.putAll(docRanks);
            return sortMatchedTermsMap(sortedDocRanks, matchedTermsMap);
        } else if (resultDocSet.size() == 1) {
            HashMap docIdTermsMap = new HashMap();
            ArrayList<HashMap> resultDoc = new ArrayList();
            docId2 = (String) resultDocSet.iterator().next();
            docIdTermsMap.put(HSFunnel.READ_FAQ, docId2);
            docIdTermsMap.put(InviteUsersRequest.KEY_TIME, matchedTermsMap.get(docId2));
            resultDoc.add(docIdTermsMap);
            return resultDoc;
        } else {
            HashMap resultDocRanks = new HashMap();
            it = resultDocSet.iterator();
            while (it.hasNext()) {
                docId2 = (String) it.next();
                resultDocRanks.put(docId2, docRanks.get(docId2));
            }
            sortedDocRanks = new TreeMap(new RankComparator(resultDocRanks));
            sortedDocRanks.putAll(resultDocRanks);
            return sortMatchedTermsMap(sortedDocRanks, matchedTermsMap);
        }
    }

    private static ArrayList<HashMap> sortMatchedTermsMap(TreeMap sortedDocRanks, HashMap matchedTermsMap) {
        ArrayList<HashMap> sortedResults = new ArrayList();
        for (String docId : sortedDocRanks.keySet()) {
            HashMap docIdTermsMap = new HashMap();
            docIdTermsMap.put(HSFunnel.READ_FAQ, docId);
            docIdTermsMap.put(InviteUsersRequest.KEY_TIME, matchedTermsMap.get(docId));
            sortedResults.add(docIdTermsMap);
        }
        return sortedResults;
    }

    protected static HashMap buildTfidfIndex(ArrayList<Faq> docs) {
        Integer totalDocNum = Integer.valueOf(docs.size());
        ArrayList<HashMap> indexedDocs = new ArrayList();
        Integer i = Integer.valueOf(0);
        Iterator it = docs.iterator();
        while (it.hasNext()) {
            Faq doc = (Faq) it.next();
            HashMap indexedDoc = new HashMap();
            indexedDoc.put("terms", indexDocument(doc.getTitle(), doc.getBody(), doc.getTags()));
            indexedDoc.put(LoginRequest.KEY_ID, i + "");
            i = Integer.valueOf(i.intValue() + 1);
            indexedDocs.add(indexedDoc);
        }
        HashMap globalTerms = new HashMap();
        Iterator it2 = indexedDocs.iterator();
        while (it2.hasNext()) {
            HashMap doc2 = (HashMap) it2.next();
            String docId = (String) doc2.get(LoginRequest.KEY_ID);
            HashMap<String, Integer> terms = (HashMap) doc2.get("terms");
            for (String term : terms.keySet()) {
                int termFreq = ((Integer) terms.get(term)).intValue();
                HashMap termMap;
                if (globalTerms.containsKey(term)) {
                    termMap = (HashMap) globalTerms.get(term);
                    Integer maxFreq = (Integer) termMap.get("maxFreq");
                    if (maxFreq == null) {
                        maxFreq = Integer.valueOf(0);
                    }
                    Integer docFreq = (Integer) termMap.get("docFreq");
                    if (docFreq == null) {
                        docFreq = Integer.valueOf(0);
                    } else {
                        docFreq = Integer.valueOf(docFreq.intValue() + 1);
                    }
                    if (maxFreq.intValue() < termFreq) {
                        termMap.put("maxFreq", Integer.valueOf(termFreq));
                    }
                    termMap.put("docFreq", docFreq);
                    globalTerms.put(term, termMap);
                } else {
                    termMap = new HashMap();
                    termMap.put("maxFreq", Integer.valueOf(termFreq));
                    termMap.put("docFreq", Integer.valueOf(1));
                    globalTerms.put(term, termMap);
                }
            }
        }
        HashMap<String, HashMap<String, Double>> tfidf = new HashMap();
        it = indexedDocs.iterator();
        while (it.hasNext()) {
            doc2 = (HashMap) it.next();
            docId = (String) doc2.get(LoginRequest.KEY_ID);
            terms = (HashMap) doc2.get("terms");
            if (terms != null) {
                for (String term2 : terms.keySet()) {
                    HashMap<String, Double> termMap2 = (HashMap) tfidf.get(term2);
                    if (termMap2 == null) {
                        termMap2 = new HashMap();
                    }
                    HashMap globalTerm = (HashMap) globalTerms.get(term2);
                    Integer docTf = (Integer) globalTerm.get("docFreq");
                    termMap2.put(docId, Double.valueOf(Double.valueOf((double) (((Integer) terms.get(term2)).intValue() / ((Integer) globalTerm.get("maxFreq")).intValue())).doubleValue() * Double.valueOf(Math.log10((double) (totalDocNum.intValue() / docTf.intValue()))).doubleValue()));
                    tfidf.put(term2, termMap2);
                }
            }
        }
        return tfidf;
    }

    protected static HashMap buildFuzzyIndex(ArrayList<Faq> docs) {
        HashMap fuzzyIndex = new HashMap();
        int i = 0;
        Iterator it = docs.iterator();
        while (it.hasNext()) {
            Iterator it2 = generateTokens(sanitize(((Faq) it.next()).getTitle())).iterator();
            while (it2.hasNext()) {
                String token = ((String) it2.next()).toLowerCase();
                if (token.length() > 3) {
                    HashMap tokenMap = new HashMap();
                    tokenMap.put("w", token);
                    tokenMap.put(LoginRequest.KEY_ID, i + "");
                    String firstCharacter = token.substring(0, 1);
                    ArrayList<HashMap> firstCharIndex = (ArrayList) fuzzyIndex.get(firstCharacter);
                    if (firstCharIndex == null) {
                        firstCharIndex = new ArrayList();
                    }
                    firstCharIndex.add(tokenMap);
                    fuzzyIndex.put(firstCharacter, firstCharIndex);
                    String secondCharacter = token.substring(1, 2);
                    ArrayList<HashMap> secondCharIndex = (ArrayList) fuzzyIndex.get(secondCharacter);
                    if (secondCharIndex == null) {
                        secondCharIndex = new ArrayList();
                    }
                    secondCharIndex.add(tokenMap);
                    fuzzyIndex.put(secondCharacter, secondCharIndex);
                }
            }
            i++;
        }
        return fuzzyIndex;
    }

    public static ArrayList<HashMap> getFuzzyMatches(String query, HashMap fuzzyIndex) {
        ArrayList<HashMap> resultArray = new ArrayList();
        if (fuzzyIndex != null) {
            HashMap faqIdsWithKeywords = new HashMap();
            Iterator it = generateTokens(sanitize(query)).iterator();
            while (it.hasNext()) {
                String token = (String) it.next();
                String rootChar = token.substring(0, 1);
                List<String> neighbourChars = new ArrayList(getNeighbourCharacters(rootChar));
                neighbourChars.add(rootChar);
                for (String character : neighbourChars) {
                    ArrayList<HashMap> wordsList = (ArrayList) fuzzyIndex.get(character);
                    if (wordsList != null) {
                        Iterator it2 = wordsList.iterator();
                        while (it2.hasNext()) {
                            HashMap wordMap = (HashMap) it2.next();
                            String wordToken = (String) wordMap.get("w");
                            if (((double) calculateWordDistance(wordToken, token)) > 0.7d) {
                                String id = (String) wordMap.get(LoginRequest.KEY_ID);
                                ArrayList<String> matchWordList = (ArrayList) faqIdsWithKeywords.get(id);
                                if (matchWordList == null) {
                                    matchWordList = new ArrayList();
                                }
                                matchWordList.add(wordToken);
                                faqIdsWithKeywords.put(id, matchWordList);
                            }
                        }
                    }
                }
            }
            for (String docId : faqIdsWithKeywords.keySet()) {
                HashMap docIdTermsMap = new HashMap();
                docIdTermsMap.put(HSFunnel.READ_FAQ, docId);
                docIdTermsMap.put(InviteUsersRequest.KEY_TIME, faqIdsWithKeywords.get(docId));
                resultArray.add(docIdTermsMap);
            }
        }
        return resultArray;
    }

    private static List<String> getNeighbourCharacters(String inputCharacter) {
        HashMap<String, String[]> characterTable = new HashMap();
        characterTable.put("a", new String[]{SetUserPositionRequest.KEY_PLUS_ITEM_LIST, "w", ChangeRoomCapacityRequest.KEY_SPEC_SIZE, "z"});
        characterTable.put(BanUserRequest.KEY_BAN_MODE, new String[]{SetUserPositionRequest.KEY_VEC3D, HSFunnel.MARKED_HELPFUL, SetUserPositionRequest.KEY_MINUS_ITEM_LIST});
        characterTable.put(ExtensionRequest.KEY_CMD, new String[]{HSFunnel.OPEN_INBOX, HSFunnel.READ_FAQ, SetUserPositionRequest.KEY_VEC3D});
        characterTable.put(KickUserRequest.KEY_DELAY, new String[]{ChangeRoomCapacityRequest.KEY_SPEC_SIZE, "z", HSFunnel.OPEN_INBOX});
        characterTable.put(FindUsersRequest.KEY_EXPRESSION, new String[]{"w", ChangeRoomCapacityRequest.KEY_SPEC_SIZE, KickUserRequest.KEY_DELAY, SetUserPositionRequest.KEY_ROOM});
        characterTable.put(HSFunnel.READ_FAQ, new String[]{KickUserRequest.KEY_DELAY, UnsubscribeRoomGroupRequest.KEY_GROUP_ID, ExtensionRequest.KEY_CMD, HSFunnel.OPEN_INBOX});
        characterTable.put(UnsubscribeRoomGroupRequest.KEY_GROUP_ID, new String[]{HSFunnel.MARKED_HELPFUL, HSFunnel.READ_FAQ, SetUserPositionRequest.KEY_VEC3D, BanUserRequest.KEY_BAN_MODE});
        characterTable.put(HSFunnel.MARKED_HELPFUL, new String[]{UnsubscribeRoomGroupRequest.KEY_GROUP_ID, "j", BanUserRequest.KEY_BAN_MODE, SetUserPositionRequest.KEY_MINUS_ITEM_LIST});
        characterTable.put(SetMMOItemVariables.KEY_ITEM_ID, new String[]{InviteUsersRequest.KEY_USER, GoOnlineRequest.KEY_ONLINE, "k", "j"});
        characterTable.put("j", new String[]{SetUserPositionRequest.KEY_MINUS_USER_LIST, SetUserPositionRequest.KEY_MINUS_ITEM_LIST, HSFunnel.MARKED_HELPFUL, "k"});
        characterTable.put("k", new String[]{"j", FindUsersRequest.KEY_LIMIT, SetUserPositionRequest.KEY_MINUS_USER_LIST});
        characterTable.put(FindUsersRequest.KEY_LIMIT, new String[]{"k", SetUserPositionRequest.KEY_PLUS_USER_LIST, SetUserPositionRequest.KEY_MINUS_USER_LIST});
        characterTable.put(SetUserPositionRequest.KEY_MINUS_USER_LIST, new String[]{SetUserPositionRequest.KEY_MINUS_ITEM_LIST, BanUserRequest.KEY_BAN_MODE, FindUsersRequest.KEY_LIMIT});
        characterTable.put(SetUserPositionRequest.KEY_MINUS_ITEM_LIST, new String[]{BanUserRequest.KEY_BAN_MODE, "j", SetUserPositionRequest.KEY_MINUS_USER_LIST});
        characterTable.put(GoOnlineRequest.KEY_ONLINE, new String[]{FindUsersRequest.KEY_LIMIT, "k", SetUserPositionRequest.KEY_PLUS_USER_LIST});
        characterTable.put(SetUserPositionRequest.KEY_PLUS_USER_LIST, new String[]{FindUsersRequest.KEY_LIMIT, GoOnlineRequest.KEY_ONLINE});
        characterTable.put(SetUserPositionRequest.KEY_PLUS_ITEM_LIST, new String[]{"w", "a"});
        characterTable.put(SetUserPositionRequest.KEY_ROOM, new String[]{ChangeRoomCapacityRequest.KEY_SPEC_SIZE, KickUserRequest.KEY_DELAY, FindUsersRequest.KEY_EXPRESSION, HSFunnel.READ_FAQ});
        characterTable.put(ChangeRoomCapacityRequest.KEY_SPEC_SIZE, new String[]{"a", "z", KickUserRequest.KEY_DELAY});
        characterTable.put(InviteUsersRequest.KEY_TIME, new String[]{SetUserPositionRequest.KEY_ROOM, HSFunnel.READ_FAQ, UnsubscribeRoomGroupRequest.KEY_GROUP_ID, HSFunnel.RESOLUTION_ACCEPTED});
        characterTable.put(InviteUsersRequest.KEY_USER, new String[]{"j", HSFunnel.MARKED_HELPFUL, SetMMOItemVariables.KEY_ITEM_ID, HSFunnel.RESOLUTION_ACCEPTED});
        characterTable.put(SetUserPositionRequest.KEY_VEC3D, new String[]{ExtensionRequest.KEY_CMD, UnsubscribeRoomGroupRequest.KEY_GROUP_ID, BanUserRequest.KEY_BAN_MODE});
        characterTable.put("w", new String[]{SetUserPositionRequest.KEY_PLUS_ITEM_LIST, "a", ChangeRoomCapacityRequest.KEY_SPEC_SIZE});
        characterTable.put(HSFunnel.OPEN_INBOX, new String[]{"z", ChangeRoomCapacityRequest.KEY_SPEC_SIZE, ExtensionRequest.KEY_CMD});
        characterTable.put(HSFunnel.RESOLUTION_ACCEPTED, new String[]{UnsubscribeRoomGroupRequest.KEY_GROUP_ID, HSFunnel.MARKED_HELPFUL, InviteUsersRequest.KEY_TIME, InviteUsersRequest.KEY_USER});
        characterTable.put("z", new String[]{"a", ChangeRoomCapacityRequest.KEY_SPEC_SIZE, HSFunnel.OPEN_INBOX});
        if (characterTable.containsKey(inputCharacter)) {
            return Arrays.asList((Object[]) characterTable.get(inputCharacter));
        }
        return new ArrayList();
    }

    private static float calculateWordDistance(String originalString, String comparisionString) {
        originalString = originalString.trim();
        comparisionString = comparisionString.trim();
        originalString = originalString.toLowerCase();
        comparisionString = comparisionString.toLowerCase();
        int n = originalString.length();
        int m = comparisionString.length();
        int n2 = n + 1;
        if (n != 0) {
            int m2 = m + 1;
            if (m != 0) {
                int k;
                int maxLength;
                int[] d = new int[(n2 * m2)];
                for (k = 0; k < n2; k++) {
                    d[k] = k;
                }
                for (k = 0; k < m2; k++) {
                    d[k * n2] = k;
                }
                for (int i = 1; i < n2; i++) {
                    int j = 1;
                    while (j < m2) {
                        int cost;
                        if (originalString.charAt(i - 1) == comparisionString.charAt(j - 1)) {
                            cost = 0;
                        } else {
                            cost = 1;
                        }
                        d[(j * n2) + i] = smallestOf(d[((j - 1) * n2) + i] + 1, d[((j * n2) + i) - 1] + 1, d[(((j - 1) * n2) + i) - 1] + cost);
                        if (i > 1 && j > 1) {
                            if (originalString.charAt(i - 1) == comparisionString.charAt(j - 2)) {
                                if (originalString.charAt(i - 2) == comparisionString.charAt(j - 1)) {
                                    d[(j * n2) + i] = smallestOf(d[(j * n2) + i], d[(((j - 2) * n2) + i) - 2] + cost);
                                }
                            }
                        }
                        j++;
                    }
                }
                int distance = d[(n2 * m2) - 1];
                if (n2 > m2) {
                    maxLength = n2;
                } else {
                    maxLength = m2;
                }
                m = m2;
                return 1.0f - (((float) distance) / ((float) maxLength));
            }
            m = m2;
        }
        return 0.0f;
    }

    private static int smallestOf(int a, int b, int c) {
        int min = a;
        if (b < min) {
            min = b;
        }
        if (c < min) {
            return c;
        }
        return min;
    }

    private static int smallestOf(int a, int b) {
        int min = a;
        if (b < min) {
            return b;
        }
        return min;
    }
}
