package com.helpshift.support.storage;

import com.helpshift.support.Faq;
import com.helpshift.support.FaqTagFilter;
import java.util.List;

public interface FaqDAO {
    void addFaq(Faq faq);

    Faq getFaq(String str);

    List<Faq> getFaqsDataForSection(String str);

    List<Faq> getFaqsForSection(String str);

    List<Faq> getFaqsForSection(String str, FaqTagFilter faqTagFilter);

    List<Faq> getFilteredFaqs(List<Faq> list, FaqTagFilter faqTagFilter);

    int setIsHelpful(String str, Boolean bool);
}
