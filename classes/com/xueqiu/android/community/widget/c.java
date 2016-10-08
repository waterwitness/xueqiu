package com.xueqiu.android.community.widget;

import android.graphics.Color;
import android.text.Editable;
import android.text.Html.TagHandler;
import android.text.Layout.Alignment;
import android.text.Spanned;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.AlignmentSpan.Standard;
import android.text.style.ForegroundColorSpan;
import android.text.style.ImageSpan;
import org.xml.sax.XMLReader;

public final class c
  implements Html.TagHandler
{
  private static void a(Editable paramEditable, Class paramClass, Object paramObject)
  {
    int j = paramEditable.length();
    paramClass = paramEditable.getSpans(0, paramEditable.length(), paramClass);
    int i;
    if (paramClass.length != 0)
    {
      i = paramClass.length;
      if (i > 0) {
        if (paramEditable.getSpanFlags(paramClass[(i - 1)]) != 17) {}
      }
    }
    for (paramClass = paramClass[(i - 1)];; paramClass = null)
    {
      i = paramEditable.getSpanStart(paramClass);
      paramEditable.removeSpan(paramClass);
      if (i != j) {
        paramEditable.setSpan(paramObject, i, j, 33);
      }
      return;
      i -= 1;
      break;
    }
  }
  
  private static void a(Editable paramEditable, Object paramObject)
  {
    int i = paramEditable.length();
    paramEditable.setSpan(paramObject, i, i, 17);
  }
  
  public final void handleTag(boolean paramBoolean, String paramString, Editable paramEditable, XMLReader paramXMLReader)
  {
    if (paramString.equalsIgnoreCase("center")) {
      if (paramBoolean) {
        a(paramEditable, new d((byte)0));
      }
    }
    int i;
    do
    {
      do
      {
        do
        {
          return;
          a(paramEditable, d.class, new AlignmentSpan.Standard(Layout.Alignment.ALIGN_CENTER));
          return;
          if (paramString.equalsIgnoreCase("gray"))
          {
            if (paramBoolean)
            {
              a(paramEditable, new e((byte)0));
              return;
            }
            a(paramEditable, e.class, new ForegroundColorSpan(Color.parseColor("#aaaaaa")));
            return;
          }
          if (paramString.equalsIgnoreCase("size"))
          {
            if (paramBoolean)
            {
              a(paramEditable, new f((byte)0));
              return;
            }
            a(paramEditable, f.class, new AbsoluteSizeSpan(14, true));
            return;
          }
        } while (!paramString.equalsIgnoreCase("androidP"));
        i = paramEditable.length();
        if (i <= 0) {
          break;
        }
        if (paramEditable.getSpans(i - 1, i, ImageSpan.class).length > 0)
        {
          paramEditable.append("\n");
          return;
        }
        if (paramEditable.charAt(i - 1) != '\n') {
          break;
        }
      } while ((i > 2) && ((paramEditable.getSpans(i - 2, i, ImageSpan.class).length > 0) || (paramEditable.charAt(i - 2) == '\n')));
      paramEditable.append("\n");
      return;
    } while (i == 0);
    paramEditable.append("\n\n");
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\widget\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */