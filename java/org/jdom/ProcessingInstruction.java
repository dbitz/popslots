package org.jdom;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.jdom.output.XMLOutputter;

public class ProcessingInstruction extends Content {
    private static final String CVS_ID = "@(#) $RCSfile: ProcessingInstruction.java,v $ $Revision: 1.47 $ $Date: 2007/11/10 05:28:59 $ $Name: jdom_1_1 $";
    protected Map mapData;
    protected String rawData;
    protected String target;

    protected ProcessingInstruction() {
    }

    public ProcessingInstruction(String target, Map data) {
        setTarget(target);
        setData(data);
    }

    public ProcessingInstruction(String target, String data) {
        setTarget(target);
        setData(data);
    }

    public ProcessingInstruction setTarget(String newTarget) {
        String reason = Verifier.checkProcessingInstructionTarget(newTarget);
        if (reason != null) {
            throw new IllegalTargetException(newTarget, reason);
        }
        this.target = newTarget;
        return this;
    }

    public String getValue() {
        return this.rawData;
    }

    public String getTarget() {
        return this.target;
    }

    public String getData() {
        return this.rawData;
    }

    public List getPseudoAttributeNames() {
        Set<Object> mapDataSet = this.mapData.entrySet();
        List nameList = new ArrayList();
        for (Object obj : mapDataSet) {
            String wholeSet = obj.toString();
            nameList.add(wholeSet.substring(0, wholeSet.indexOf("=")));
        }
        return nameList;
    }

    public ProcessingInstruction setData(String data) {
        String reason = Verifier.checkProcessingInstructionData(data);
        if (reason != null) {
            throw new IllegalDataException(data, reason);
        }
        this.rawData = data;
        this.mapData = parseData(data);
        return this;
    }

    public ProcessingInstruction setData(Map data) {
        String temp = toString(data);
        String reason = Verifier.checkProcessingInstructionData(temp);
        if (reason != null) {
            throw new IllegalDataException(temp, reason);
        }
        this.rawData = temp;
        this.mapData = data;
        return this;
    }

    public String getPseudoAttributeValue(String name) {
        return (String) this.mapData.get(name);
    }

    public ProcessingInstruction setPseudoAttribute(String name, String value) {
        String reason = Verifier.checkProcessingInstructionData(name);
        if (reason != null) {
            throw new IllegalDataException(name, reason);
        }
        reason = Verifier.checkProcessingInstructionData(value);
        if (reason != null) {
            throw new IllegalDataException(value, reason);
        }
        this.mapData.put(name, value);
        this.rawData = toString(this.mapData);
        return this;
    }

    public boolean removePseudoAttribute(String name) {
        if (this.mapData.remove(name) == null) {
            return false;
        }
        this.rawData = toString(this.mapData);
        return true;
    }

    private String toString(Map mapData) {
        StringBuffer rawData = new StringBuffer();
        for (String name : mapData.keySet()) {
            rawData.append(name).append("=\"").append((String) mapData.get(name)).append("\" ");
        }
        if (rawData.length() > 0) {
            rawData.setLength(rawData.length() - 1);
        }
        return rawData.toString();
    }

    private Map parseData(String rawData) {
        Map data = new HashMap();
        String inputData = rawData.trim();
        while (!inputData.trim().equals("")) {
            String name = "";
            String value = "";
            int startName = 0;
            char previousChar = inputData.charAt(0);
            int pos = 1;
            while (pos < inputData.length()) {
                char currentChar = inputData.charAt(pos);
                if (currentChar == '=') {
                    name = inputData.substring(startName, pos).trim();
                    int[] bounds = extractQuotedString(inputData.substring(pos + 1));
                    if (bounds == null) {
                        return new HashMap();
                    }
                    value = inputData.substring((bounds[0] + pos) + 1, (bounds[1] + pos) + 1);
                    pos += bounds[1] + 1;
                    inputData = inputData.substring(pos);
                    if (name.length() > 0 && value != null) {
                        data.put(name, value);
                    }
                } else {
                    if (Character.isWhitespace(previousChar) && !Character.isWhitespace(currentChar)) {
                        startName = pos;
                    }
                    previousChar = currentChar;
                    pos++;
                }
            }
            inputData = inputData.substring(pos);
            data.put(name, value);
        }
        return data;
    }

    private static int[] extractQuotedString(String rawData) {
        boolean inQuotes = false;
        char quoteChar = '\"';
        int start = 0;
        for (int pos = 0; pos < rawData.length(); pos++) {
            char currentChar = rawData.charAt(pos);
            if (currentChar == '\"' || currentChar == '\'') {
                if (!inQuotes) {
                    quoteChar = currentChar;
                    inQuotes = true;
                    start = pos + 1;
                } else if (quoteChar == currentChar) {
                    return new int[]{start, pos};
                }
            }
        }
        return null;
    }

    public String toString() {
        return new StringBuffer().append("[ProcessingInstruction: ").append(new XMLOutputter().outputString(this)).append("]").toString();
    }

    public Object clone() {
        ProcessingInstruction pi = (ProcessingInstruction) super.clone();
        if (this.mapData != null) {
            pi.mapData = parseData(this.rawData);
        }
        return pi;
    }
}
