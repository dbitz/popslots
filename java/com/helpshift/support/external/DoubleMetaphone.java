package com.helpshift.support.external;

import com.playstudios.popslots.R;
import java.util.Locale;

public class DoubleMetaphone implements StringEncoder {
    private static final String[] ES_EP_EB_EL_EY_IB_IL_IN_IE_EI_ER = new String[]{"ES", "EP", "EB", "EL", "EY", "IB", "IL", "IN", "IE", "EI", "ER"};
    private static final String[] L_R_N_M_B_H_F_V_W_SPACE = new String[]{"L", "R", "N", "M", "B", "H", "F", "V", "W", " "};
    private static final String[] L_T_K_S_N_M_B_Z = new String[]{"L", "T", "K", "S", "N", "M", "B", "Z"};
    private static final String[] SILENT_START = new String[]{"GN", "KN", "PN", "WR", "PS"};
    private static final String VOWELS = "AEIOUY";
    private int maxCodeLen = 4;

    public class DoubleMetaphoneResult {
        private final StringBuilder alternate = new StringBuilder(DoubleMetaphone.this.getMaxCodeLen());
        private final int maxLength;
        private final StringBuilder primary = new StringBuilder(DoubleMetaphone.this.getMaxCodeLen());

        public DoubleMetaphoneResult(int maxLength) {
            this.maxLength = maxLength;
        }

        public void append(char value) {
            appendPrimary(value);
            appendAlternate(value);
        }

        public void append(char primary, char alternate) {
            appendPrimary(primary);
            appendAlternate(alternate);
        }

        public void appendPrimary(char value) {
            if (this.primary.length() < this.maxLength) {
                this.primary.append(value);
            }
        }

        public void appendAlternate(char value) {
            if (this.alternate.length() < this.maxLength) {
                this.alternate.append(value);
            }
        }

        public void append(String value) {
            appendPrimary(value);
            appendAlternate(value);
        }

        public void append(String primary, String alternate) {
            appendPrimary(primary);
            appendAlternate(alternate);
        }

        public void appendPrimary(String value) {
            int addChars = this.maxLength - this.primary.length();
            if (value.length() <= addChars) {
                this.primary.append(value);
            } else {
                this.primary.append(value.substring(0, addChars));
            }
        }

        public void appendAlternate(String value) {
            int addChars = this.maxLength - this.alternate.length();
            if (value.length() <= addChars) {
                this.alternate.append(value);
            } else {
                this.alternate.append(value.substring(0, addChars));
            }
        }

        public String getPrimary() {
            return this.primary.toString();
        }

        public String getAlternate() {
            return this.alternate.toString();
        }

        public boolean isComplete() {
            return this.primary.length() >= this.maxLength && this.alternate.length() >= this.maxLength;
        }
    }

    public String doubleMetaphone(String value) {
        return doubleMetaphone(value, false);
    }

    public String doubleMetaphone(String value, boolean alternate) {
        value = cleanInput(value);
        if (value == null) {
            return null;
        }
        boolean slavoGermanic = isSlavoGermanic(value);
        int index = isSilentStart(value) ? 1 : 0;
        DoubleMetaphoneResult result = new DoubleMetaphoneResult(getMaxCodeLen());
        while (!result.isComplete() && index <= value.length() - 1) {
            switch (value.charAt(index)) {
                case R.styleable.Theme_textAppearanceSearchResultTitle /*65*/:
                case R.styleable.Theme_listPreferredItemHeight /*69*/:
                case R.styleable.Theme_listPreferredItemPaddingRight /*73*/:
                case R.styleable.Theme_panelMenuListWidth /*79*/:
                case R.styleable.Theme_colorControlNormal /*85*/:
                case R.styleable.Theme_colorSwitchThumbNormal /*89*/:
                    index = handleAEIOUY(result, index);
                    break;
                case R.styleable.Theme_textAppearanceSearchResultSubtitle /*66*/:
                    result.append('P');
                    index = charAt(value, index + 1) == 'B' ? index + 2 : index + 1;
                    break;
                case R.styleable.Theme_textColorSearchUrl /*67*/:
                    index = handleC(value, result, index);
                    break;
                case R.styleable.Theme_searchViewStyle /*68*/:
                    index = handleD(value, result, index);
                    break;
                case R.styleable.Theme_listPreferredItemHeightSmall /*70*/:
                    result.append('F');
                    index = charAt(value, index + 1) == 'F' ? index + 2 : index + 1;
                    break;
                case R.styleable.Theme_listPreferredItemHeightLarge /*71*/:
                    index = handleG(value, result, index, slavoGermanic);
                    break;
                case R.styleable.Theme_listPreferredItemPaddingLeft /*72*/:
                    index = handleH(value, result, index);
                    break;
                case R.styleable.Theme_dropDownListViewStyle /*74*/:
                    index = handleJ(value, result, index, slavoGermanic);
                    break;
                case R.styleable.Theme_listPopupWindowStyle /*75*/:
                    result.append('K');
                    index = charAt(value, index + 1) == 'K' ? index + 2 : index + 1;
                    break;
                case R.styleable.Theme_textAppearanceListItem /*76*/:
                    index = handleL(value, result, index);
                    break;
                case R.styleable.Theme_textAppearanceListItemSmall /*77*/:
                    result.append('M');
                    index = conditionM0(value, index) ? index + 2 : index + 1;
                    break;
                case R.styleable.Theme_panelBackground /*78*/:
                    result.append('N');
                    index = charAt(value, index + 1) == 'N' ? index + 2 : index + 1;
                    break;
                case R.styleable.Theme_panelMenuListTheme /*80*/:
                    index = handleP(value, result, index);
                    break;
                case R.styleable.Theme_listChoiceBackgroundIndicator /*81*/:
                    result.append('K');
                    index = charAt(value, index + 1) == 'Q' ? index + 2 : index + 1;
                    break;
                case R.styleable.Theme_colorPrimary /*82*/:
                    index = handleR(value, result, index, slavoGermanic);
                    break;
                case R.styleable.Theme_colorPrimaryDark /*83*/:
                    index = handleS(value, result, index, slavoGermanic);
                    break;
                case R.styleable.Theme_colorAccent /*84*/:
                    index = handleT(value, result, index);
                    break;
                case R.styleable.Theme_colorControlActivated /*86*/:
                    result.append('F');
                    index = charAt(value, index + 1) == 'V' ? index + 2 : index + 1;
                    break;
                case R.styleable.Theme_colorControlHighlight /*87*/:
                    index = handleW(value, result, index);
                    break;
                case R.styleable.Theme_colorButtonNormal /*88*/:
                    index = handleX(value, result, index);
                    break;
                case R.styleable.Theme_controlBackground /*90*/:
                    index = handleZ(value, result, index, slavoGermanic);
                    break;
                case '\u00c7':
                    result.append('S');
                    index++;
                    break;
                case '\u00d1':
                    result.append('N');
                    index++;
                    break;
                default:
                    index++;
                    break;
            }
        }
        return alternate ? result.getAlternate() : result.getPrimary();
    }

    public Object encode(Object obj) throws EncoderException {
        if (obj instanceof String) {
            return doubleMetaphone((String) obj);
        }
        throw new EncoderException("DoubleMetaphone encode parameter is not of type String");
    }

    public String encode(String value) {
        return doubleMetaphone(value);
    }

    public boolean isDoubleMetaphoneEqual(String value1, String value2) {
        return isDoubleMetaphoneEqual(value1, value2, false);
    }

    public boolean isDoubleMetaphoneEqual(String value1, String value2, boolean alternate) {
        return doubleMetaphone(value1, alternate).equals(doubleMetaphone(value2, alternate));
    }

    public int getMaxCodeLen() {
        return this.maxCodeLen;
    }

    public void setMaxCodeLen(int maxCodeLen) {
        this.maxCodeLen = maxCodeLen;
    }

    private int handleAEIOUY(DoubleMetaphoneResult result, int index) {
        if (index == 0) {
            result.append('A');
        }
        return index + 1;
    }

    private int handleC(String value, DoubleMetaphoneResult result, int index) {
        if (conditionC0(value, index)) {
            result.append('K');
            index += 2;
        } else if (index == 0 && contains(value, index, 6, "CAESAR")) {
            result.append('S');
            index += 2;
        } else if (contains(value, index, 2, "CH")) {
            index = handleCH(value, result, index);
        } else if (contains(value, index, 2, "CZ") && !contains(value, index - 2, 4, "WICZ")) {
            result.append('S', 'X');
            index += 2;
        } else if (contains(value, index + 1, 3, "CIA")) {
            result.append('X');
            index += 3;
        } else if (contains(value, index, 2, "CC") && (index != 1 || charAt(value, 0) != 'M')) {
            return handleCC(value, result, index);
        } else {
            if (contains(value, index, 2, "CK", "CG", "CQ")) {
                result.append('K');
                index += 2;
            } else {
                if (contains(value, index, 2, "CI", "CE", "CY")) {
                    if (contains(value, index, 3, "CIO", "CIE", "CIA")) {
                        result.append('S', 'X');
                    } else {
                        result.append('S');
                    }
                    index += 2;
                } else {
                    result.append('K');
                    if (contains(value, index + 1, 2, " C", " Q", " G")) {
                        index += 3;
                    } else {
                        if (!contains(value, index + 1, 1, "C", "K", "Q") || contains(value, index + 1, 2, "CE", "CI")) {
                            index++;
                        } else {
                            index += 2;
                        }
                    }
                }
            }
        }
        return index;
    }

    private int handleCC(String value, DoubleMetaphoneResult result, int index) {
        if (!contains(value, index + 2, 1, "I", "E", "H") || contains(value, index + 2, 2, "HU")) {
            result.append('K');
            return index + 2;
        }
        if ((index == 1 && charAt(value, index - 1) == 'A') || contains(value, index - 1, 5, "UCCEE", "UCCES")) {
            result.append("KS");
        } else {
            result.append('X');
        }
        return index + 3;
    }

    private int handleCH(String value, DoubleMetaphoneResult result, int index) {
        if (index > 0 && contains(value, index, 4, "CHAE")) {
            result.append('K', 'X');
            return index + 2;
        } else if (conditionCH0(value, index)) {
            result.append('K');
            return index + 2;
        } else if (conditionCH1(value, index)) {
            result.append('K');
            return index + 2;
        } else {
            if (index <= 0) {
                result.append('X');
            } else if (contains(value, 0, 2, "MC")) {
                result.append('K');
            } else {
                result.append('X', 'K');
            }
            return index + 2;
        }
    }

    private int handleD(String value, DoubleMetaphoneResult result, int index) {
        if (contains(value, index, 2, "DG")) {
            if (contains(value, index + 2, 1, "I", "E", "Y")) {
                result.append('J');
                return index + 3;
            }
            result.append("TK");
            return index + 2;
        } else if (contains(value, index, 2, "DT", "DD")) {
            result.append('T');
            return index + 2;
        } else {
            result.append('T');
            return index + 1;
        }
    }

    private int handleG(String value, DoubleMetaphoneResult result, int index, boolean slavoGermanic) {
        if (charAt(value, index + 1) == 'H') {
            return handleGH(value, result, index);
        }
        if (charAt(value, index + 1) == 'N') {
            if (index == 1 && isVowel(charAt(value, 0)) && !slavoGermanic) {
                result.append("KN", "N");
            } else if (contains(value, index + 2, 2, "EY") || charAt(value, index + 1) == 'Y' || slavoGermanic) {
                result.append("KN");
            } else {
                result.append("N", "KN");
            }
            return index + 2;
        } else if (contains(value, index + 1, 2, "LI") && !slavoGermanic) {
            result.append("KL", "L");
            return index + 2;
        } else if (index == 0 && (charAt(value, index + 1) == 'Y' || contains(value, index + 1, 2, ES_EP_EB_EL_EY_IB_IL_IN_IE_EI_ER))) {
            result.append('K', 'J');
            return index + 2;
        } else {
            if (contains(value, index + 1, 2, "ER") || charAt(value, index + 1) == 'Y') {
                if (!(contains(value, 0, 6, "DANGER", "RANGER", "MANGER") || contains(value, index - 1, 1, "E", "I") || contains(value, index - 1, 3, "RGY", "OGY"))) {
                    result.append('K', 'J');
                    return index + 2;
                }
            }
            if (contains(value, index + 1, 1, "E", "I", "Y") || contains(value, index - 1, 4, "AGGI", "OGGI")) {
                if (contains(value, 0, 4, "VAN ", "VON ") || contains(value, 0, 3, "SCH") || contains(value, index + 1, 2, "ET")) {
                    result.append('K');
                } else if (contains(value, index + 1, 3, "IER")) {
                    result.append('J');
                } else {
                    result.append('J', 'K');
                }
                return index + 2;
            } else if (charAt(value, index + 1) == 'G') {
                index += 2;
                result.append('K');
                return index;
            } else {
                index++;
                result.append('K');
                return index;
            }
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private int handleGH(java.lang.String r11, com.helpshift.support.external.DoubleMetaphone.DoubleMetaphoneResult r12, int r13) {
        /*
        r10 = this;
        r9 = 73;
        r6 = 2;
        r8 = 75;
        r2 = 1;
        if (r13 <= 0) goto L_0x001a;
    L_0x0008:
        r0 = r13 + -1;
        r0 = r10.charAt(r11, r0);
        r0 = r10.isVowel(r0);
        if (r0 != 0) goto L_0x001a;
    L_0x0014:
        r12.append(r8);
        r13 = r13 + 2;
    L_0x0019:
        return r13;
    L_0x001a:
        if (r13 != 0) goto L_0x0030;
    L_0x001c:
        r0 = r13 + 2;
        r0 = r10.charAt(r11, r0);
        if (r0 != r9) goto L_0x002c;
    L_0x0024:
        r0 = 74;
        r12.append(r0);
    L_0x0029:
        r13 = r13 + 2;
        goto L_0x0019;
    L_0x002c:
        r12.append(r8);
        goto L_0x0029;
    L_0x0030:
        if (r13 <= r2) goto L_0x0044;
    L_0x0032:
        r1 = r13 + -2;
        r3 = "B";
        r4 = "H";
        r5 = "D";
        r0 = r11;
        r0 = contains(r0, r1, r2, r3, r4, r5);
        if (r0 != 0) goto L_0x0069;
    L_0x0044:
        if (r13 <= r6) goto L_0x0058;
    L_0x0046:
        r1 = r13 + -3;
        r3 = "B";
        r4 = "H";
        r5 = "D";
        r0 = r11;
        r0 = contains(r0, r1, r2, r3, r4, r5);
        if (r0 != 0) goto L_0x0069;
    L_0x0058:
        r0 = 3;
        if (r13 <= r0) goto L_0x006c;
    L_0x005b:
        r0 = r13 + -4;
        r1 = "B";
        r3 = "H";
        r0 = contains(r11, r0, r2, r1, r3);
        if (r0 == 0) goto L_0x006c;
    L_0x0069:
        r13 = r13 + 2;
        goto L_0x0019;
    L_0x006c:
        if (r13 <= r6) goto L_0x0098;
    L_0x006e:
        r0 = r13 + -1;
        r0 = r10.charAt(r11, r0);
        r1 = 85;
        if (r0 != r1) goto L_0x0098;
    L_0x0078:
        r1 = r13 + -3;
        r3 = "C";
        r4 = "G";
        r5 = "L";
        r6 = "R";
        r7 = "T";
        r0 = r11;
        r0 = contains(r0, r1, r2, r3, r4, r5, r6, r7);
        if (r0 == 0) goto L_0x0098;
    L_0x0090:
        r0 = 70;
        r12.append(r0);
    L_0x0095:
        r13 = r13 + 2;
        goto L_0x0019;
    L_0x0098:
        if (r13 <= 0) goto L_0x0095;
    L_0x009a:
        r0 = r13 + -1;
        r0 = r10.charAt(r11, r0);
        if (r0 == r9) goto L_0x0095;
    L_0x00a2:
        r12.append(r8);
        goto L_0x0095;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.helpshift.support.external.DoubleMetaphone.handleGH(java.lang.String, com.helpshift.support.external.DoubleMetaphone$DoubleMetaphoneResult, int):int");
    }

    private int handleH(String value, DoubleMetaphoneResult result, int index) {
        if ((index != 0 && !isVowel(charAt(value, index - 1))) || !isVowel(charAt(value, index + 1))) {
            return index + 1;
        }
        result.append('H');
        return index + 2;
    }

    private int handleJ(String value, DoubleMetaphoneResult result, int index, boolean slavoGermanic) {
        if (contains(value, index, 4, "JOSE") || contains(value, 0, 4, "SAN ")) {
            if ((index == 0 && charAt(value, index + 4) == ' ') || value.length() == 4 || contains(value, 0, 4, "SAN ")) {
                result.append('H');
            } else {
                result.append('J', 'H');
            }
            return index + 1;
        }
        if (index == 0 && !contains(value, index, 4, "JOSE")) {
            result.append('J', 'A');
        } else if (isVowel(charAt(value, index - 1)) && !slavoGermanic && (charAt(value, index + 1) == 'A' || charAt(value, index + 1) == 'O')) {
            result.append('J', 'H');
        } else if (index == value.length() - 1) {
            result.append('J', ' ');
        } else if (!contains(value, index + 1, 1, L_T_K_S_N_M_B_Z)) {
            if (!contains(value, index - 1, 1, "S", "K", "L")) {
                result.append('J');
            }
        }
        if (charAt(value, index + 1) == 'J') {
            return index + 2;
        }
        return index + 1;
    }

    private int handleL(String value, DoubleMetaphoneResult result, int index) {
        if (charAt(value, index + 1) == 'L') {
            if (conditionL0(value, index)) {
                result.appendPrimary('L');
            } else {
                result.append('L');
            }
            return index + 2;
        }
        index++;
        result.append('L');
        return index;
    }

    private int handleP(String value, DoubleMetaphoneResult result, int index) {
        if (charAt(value, index + 1) == 'H') {
            result.append('F');
            return index + 2;
        }
        result.append('P');
        return contains(value, index + 1, 1, "P", "B") ? index + 2 : index + 1;
    }

    private int handleR(String value, DoubleMetaphoneResult result, int index, boolean slavoGermanic) {
        if (index != value.length() - 1 || slavoGermanic || !contains(value, index - 2, 2, "IE") || contains(value, index - 4, 2, "ME", "MA")) {
            result.append('R');
        } else {
            result.appendAlternate('R');
        }
        return charAt(value, index + 1) == 'R' ? index + 2 : index + 1;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private int handleS(java.lang.String r11, com.helpshift.support.external.DoubleMetaphone.DoubleMetaphoneResult r12, int r13, boolean r14) {
        /*
        r10 = this;
        r4 = 3;
        r9 = 2;
        r8 = 88;
        r2 = 1;
        r7 = 83;
        r0 = r13 + -1;
        r1 = "ISL";
        r3 = "YSL";
        r0 = contains(r11, r0, r4, r1, r3);
        if (r0 == 0) goto L_0x0018;
    L_0x0015:
        r13 = r13 + 1;
    L_0x0017:
        return r13;
    L_0x0018:
        if (r13 != 0) goto L_0x002a;
    L_0x001a:
        r0 = 5;
        r1 = "SUGAR";
        r0 = contains(r11, r13, r0, r1);
        if (r0 == 0) goto L_0x002a;
    L_0x0024:
        r12.append(r8, r7);
        r13 = r13 + 1;
        goto L_0x0017;
    L_0x002a:
        r0 = "SH";
        r0 = contains(r11, r13, r9, r0);
        if (r0 == 0) goto L_0x0053;
    L_0x0033:
        r1 = r13 + 1;
        r2 = 4;
        r3 = "HEIM";
        r4 = "HOEK";
        r5 = "HOLM";
        r6 = "HOLZ";
        r0 = r11;
        r0 = contains(r0, r1, r2, r3, r4, r5, r6);
        if (r0 == 0) goto L_0x004f;
    L_0x0049:
        r12.append(r7);
    L_0x004c:
        r13 = r13 + 2;
        goto L_0x0017;
    L_0x004f:
        r12.append(r8);
        goto L_0x004c;
    L_0x0053:
        r0 = "SIO";
        r1 = "SIA";
        r0 = contains(r11, r13, r4, r0, r1);
        if (r0 != 0) goto L_0x0069;
    L_0x005f:
        r0 = 4;
        r1 = "SIAN";
        r0 = contains(r11, r13, r0, r1);
        if (r0 == 0) goto L_0x0075;
    L_0x0069:
        if (r14 == 0) goto L_0x0071;
    L_0x006b:
        r12.append(r7);
    L_0x006e:
        r13 = r13 + 3;
        goto L_0x0017;
    L_0x0071:
        r12.append(r7, r8);
        goto L_0x006e;
    L_0x0075:
        if (r13 != 0) goto L_0x008c;
    L_0x0077:
        r1 = r13 + 1;
        r3 = "M";
        r4 = "N";
        r5 = "L";
        r6 = "W";
        r0 = r11;
        r0 = contains(r0, r1, r2, r3, r4, r5, r6);
        if (r0 != 0) goto L_0x0097;
    L_0x008c:
        r0 = r13 + 1;
        r1 = "Z";
        r0 = contains(r11, r0, r2, r1);
        if (r0 == 0) goto L_0x00ac;
    L_0x0097:
        r12.append(r7, r8);
        r0 = r13 + 1;
        r1 = "Z";
        r0 = contains(r11, r0, r2, r1);
        if (r0 == 0) goto L_0x00a9;
    L_0x00a5:
        r13 = r13 + 2;
    L_0x00a7:
        goto L_0x0017;
    L_0x00a9:
        r13 = r13 + 1;
        goto L_0x00a7;
    L_0x00ac:
        r0 = "SC";
        r0 = contains(r11, r13, r9, r0);
        if (r0 == 0) goto L_0x00bb;
    L_0x00b5:
        r13 = r10.handleSC(r11, r12, r13);
        goto L_0x0017;
    L_0x00bb:
        r0 = r11.length();
        r0 = r0 + -1;
        if (r13 != r0) goto L_0x00e6;
    L_0x00c3:
        r0 = r13 + -2;
        r1 = "AI";
        r3 = "OI";
        r0 = contains(r11, r0, r9, r1, r3);
        if (r0 == 0) goto L_0x00e6;
    L_0x00d1:
        r12.appendAlternate(r7);
    L_0x00d4:
        r0 = r13 + 1;
        r1 = "S";
        r3 = "Z";
        r0 = contains(r11, r0, r2, r1, r3);
        if (r0 == 0) goto L_0x00ea;
    L_0x00e2:
        r13 = r13 + 2;
    L_0x00e4:
        goto L_0x0017;
    L_0x00e6:
        r12.append(r7);
        goto L_0x00d4;
    L_0x00ea:
        r13 = r13 + 1;
        goto L_0x00e4;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.helpshift.support.external.DoubleMetaphone.handleS(java.lang.String, com.helpshift.support.external.DoubleMetaphone$DoubleMetaphoneResult, int, boolean):int");
    }

    private int handleSC(String value, DoubleMetaphoneResult result, int index) {
        if (charAt(value, index + 2) == 'H') {
            if (contains(value, index + 3, 2, "OO", "ER", "EN", "UY", "ED", "EM")) {
                if (contains(value, index + 3, 2, "ER", "EN")) {
                    result.append("X", "SK");
                } else {
                    result.append("SK");
                }
            } else if (index != 0 || isVowel(charAt(value, 3)) || charAt(value, 3) == 'W') {
                result.append('X');
            } else {
                result.append('X', 'S');
            }
        } else {
            if (contains(value, index + 2, 1, "I", "E", "Y")) {
                result.append('S');
            } else {
                result.append("SK");
            }
        }
        return index + 3;
    }

    private int handleT(String value, DoubleMetaphoneResult result, int index) {
        if (contains(value, index, 4, "TION")) {
            result.append('X');
            return index + 3;
        } else if (contains(value, index, 3, "TIA", "TCH")) {
            result.append('X');
            return index + 3;
        } else if (contains(value, index, 2, "TH") || contains(value, index, 3, "TTH")) {
            if (contains(value, index + 2, 2, "OM", "AM") || contains(value, 0, 4, "VAN ", "VON ") || contains(value, 0, 3, "SCH")) {
                result.append('T');
            } else {
                result.append('0', 'T');
            }
            return index + 2;
        } else {
            result.append('T');
            return contains(value, index + 1, 1, "T", "D") ? index + 2 : index + 1;
        }
    }

    private int handleW(String value, DoubleMetaphoneResult result, int index) {
        if (contains(value, index, 2, "WR")) {
            result.append('R');
            return index + 2;
        } else if (index == 0 && (isVowel(charAt(value, index + 1)) || contains(value, index, 2, "WH"))) {
            if (isVowel(charAt(value, index + 1))) {
                result.append('A', 'F');
            } else {
                result.append('A');
            }
            return index + 1;
        } else {
            if (!(index == value.length() - 1 && isVowel(charAt(value, index - 1)))) {
                if (!(contains(value, index - 1, 5, "EWSKI", "EWSKY", "OWSKI", "OWSKY") || contains(value, 0, 3, "SCH"))) {
                    if (!contains(value, index, 4, "WICZ", "WITZ")) {
                        return index + 1;
                    }
                    result.append("TS", "FX");
                    return index + 4;
                }
            }
            result.appendAlternate('F');
            return index + 1;
        }
    }

    private int handleX(String value, DoubleMetaphoneResult result, int index) {
        if (index == 0) {
            result.append('S');
            return index + 1;
        }
        if (!(index == value.length() - 1 && (contains(value, index - 3, 3, "IAU", "EAU") || contains(value, index - 2, 2, "AU", "OU")))) {
            result.append("KS");
        }
        return contains(value, index + 1, 1, "C", "X") ? index + 2 : index + 1;
    }

    private int handleZ(String value, DoubleMetaphoneResult result, int index, boolean slavoGermanic) {
        if (charAt(value, index + 1) == 'H') {
            result.append('J');
            return index + 2;
        }
        if (contains(value, index + 1, 2, "ZO", "ZI", "ZA") || (slavoGermanic && index > 0 && charAt(value, index - 1) != 'T')) {
            result.append("S", "TS");
        } else {
            result.append('S');
        }
        return charAt(value, index + 1) == 'Z' ? index + 2 : index + 1;
    }

    private boolean conditionC0(String value, int index) {
        if (contains(value, index, 4, "CHIA")) {
            return true;
        }
        if (index <= 1 || isVowel(charAt(value, index - 2)) || !contains(value, index - 1, 3, "ACH")) {
            return false;
        }
        char c = charAt(value, index + 2);
        if ((c == 'I' || c == 'E') && !contains(value, index - 2, 6, "BACHER", "MACHER")) {
            return false;
        }
        return true;
    }

    private boolean conditionCH0(String value, int index) {
        if (index != 0) {
            return false;
        }
        if (!contains(value, index + 1, 5, "HARAC", "HARIS")) {
            if (!contains(value, index + 1, 3, "HOR", "HYM", "HIA", "HEM")) {
                return false;
            }
        }
        if (contains(value, 0, 5, "CHORE")) {
            return false;
        }
        return true;
    }

    private boolean conditionCH1(String value, int index) {
        if (!(contains(value, 0, 4, "VAN ", "VON ") || contains(value, 0, 3, "SCH"))) {
            if (!(contains(value, index - 2, 6, "ORCHES", "ARCHIT", "ORCHID") || contains(value, index + 2, 1, "T", "S"))) {
                if (!((contains(value, index - 1, 1, "A", "O", "U", "E") || index == 0) && (contains(value, index + 2, 1, L_R_N_M_B_H_F_V_W_SPACE) || index + 1 == value.length() - 1))) {
                    return false;
                }
            }
        }
        return true;
    }

    private boolean conditionL0(String value, int index) {
        if (index == value.length() - 3) {
            if (contains(value, index - 1, 4, "ILLO", "ILLA", "ALLE")) {
                return true;
            }
        }
        if ((contains(value, value.length() - 2, 2, "AS", "OS") || contains(value, value.length() - 1, 1, "A", "O")) && contains(value, index - 1, 4, "ALLE")) {
            return true;
        }
        return false;
    }

    private boolean conditionM0(String value, int index) {
        if (charAt(value, index + 1) == 'M') {
            return true;
        }
        if (contains(value, index - 1, 3, "UMB") && (index + 1 == value.length() - 1 || contains(value, index + 2, 2, "ER"))) {
            return true;
        }
        return false;
    }

    private boolean isSlavoGermanic(String value) {
        return value.indexOf(87) > -1 || value.indexOf(75) > -1 || value.indexOf("CZ") > -1 || value.indexOf("WITZ") > -1;
    }

    private boolean isVowel(char ch) {
        return VOWELS.indexOf(ch) != -1;
    }

    private boolean isSilentStart(String value) {
        for (String element : SILENT_START) {
            if (value.startsWith(element)) {
                return true;
            }
        }
        return false;
    }

    private String cleanInput(String input) {
        if (input == null) {
            return null;
        }
        input = input.trim();
        if (input.length() != 0) {
            return input.toUpperCase(Locale.ENGLISH);
        }
        return null;
    }

    protected char charAt(String value, int index) {
        if (index < 0 || index >= value.length()) {
            return '\u0000';
        }
        return value.charAt(index);
    }

    private static boolean contains(String value, int start, int length, String criteria) {
        return contains(value, start, length, new String[]{criteria});
    }

    private static boolean contains(String value, int start, int length, String criteria1, String criteria2) {
        return contains(value, start, length, new String[]{criteria1, criteria2});
    }

    private static boolean contains(String value, int start, int length, String criteria1, String criteria2, String criteria3) {
        return contains(value, start, length, new String[]{criteria1, criteria2, criteria3});
    }

    private static boolean contains(String value, int start, int length, String criteria1, String criteria2, String criteria3, String criteria4) {
        return contains(value, start, length, new String[]{criteria1, criteria2, criteria3, criteria4});
    }

    private static boolean contains(String value, int start, int length, String criteria1, String criteria2, String criteria3, String criteria4, String criteria5) {
        return contains(value, start, length, new String[]{criteria1, criteria2, criteria3, criteria4, criteria5});
    }

    private static boolean contains(String value, int start, int length, String criteria1, String criteria2, String criteria3, String criteria4, String criteria5, String criteria6) {
        return contains(value, start, length, new String[]{criteria1, criteria2, criteria3, criteria4, criteria5, criteria6});
    }

    protected static boolean contains(String value, int start, int length, String[] criteria) {
        if (start < 0 || start + length > value.length()) {
            return false;
        }
        String target = value.substring(start, start + length);
        for (String element : criteria) {
            if (target.equals(element)) {
                return true;
            }
        }
        return false;
    }
}
