package com.xueqiu.android.community.widget;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.text.Editable;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.StyleSpan;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.View.OnKeyListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.EditText;
import android.widget.GridView;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import android.widget.Toast;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.xueqiu.android.base.q;
import com.xueqiu.android.base.storage.prefs.UserPrefs;
import com.xueqiu.android.base.util.ad;
import com.xueqiu.android.base.util.ag;
import com.xueqiu.android.base.util.ai;
import com.xueqiu.android.base.util.ap;
import com.xueqiu.android.base.util.ay;
import com.xueqiu.android.base.util.m;
import com.xueqiu.android.common.model.PhotoUploadResult;
import com.xueqiu.android.community.a.c;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

public class SNBTextEditor
  extends LinearLayout
{
  public LinearLayout a;
  public EditText b;
  private ImageButton c;
  private ImageButton d;
  private ImageButton e;
  private ImageButton f;
  private ImageButton g;
  private ImageButton h;
  private ImageButton i;
  private ImageButton j;
  private LinearLayout k;
  private GridView l;
  private InputMethodManager m;
  private h n;
  private LayoutInflater o;
  private SNBRichEditText p;
  private int q = 0;
  private boolean r = false;
  private boolean s = false;
  private View.OnClickListener t = new View.OnClickListener()
  {
    public final void onClick(View paramAnonymousView)
    {
      if (paramAnonymousView.getId() == 2131624571) {
        if (SNBTextEditor.b(SNBTextEditor.this).isSelected())
        {
          SNBTextEditor.b(SNBTextEditor.this).setSelected(false);
          SNBTextEditor.c(SNBTextEditor.this);
        }
      }
      label219:
      label251:
      label283:
      do
      {
        do
        {
          do
          {
            do
            {
              return;
              SNBTextEditor.b(SNBTextEditor.this).setSelected(true);
              break;
              if (paramAnonymousView.getId() == 2131624572)
              {
                if (SNBTextEditor.d(SNBTextEditor.this).isSelected()) {
                  SNBTextEditor.d(SNBTextEditor.this).setSelected(false);
                }
                for (;;)
                {
                  SNBTextEditor.c(SNBTextEditor.this);
                  return;
                  SNBTextEditor.d(SNBTextEditor.this).setSelected(true);
                }
              }
              if (paramAnonymousView.getId() == 2131624573)
              {
                if (SNBTextEditor.e(SNBTextEditor.this).isSelected())
                {
                  SNBTextEditor.f(SNBTextEditor.this);
                  SNBTextEditor.e(SNBTextEditor.this).setSelected(false);
                  return;
                }
                SNBTextEditor.g(SNBTextEditor.this);
                SNBTextEditor.e(SNBTextEditor.this).setSelected(true);
                return;
              }
              if (paramAnonymousView.getId() == 2131624574)
              {
                SNBTextEditor.h(SNBTextEditor.this);
                return;
              }
              if (paramAnonymousView.getId() != 2131624093) {
                break label219;
              }
            } while (SNBTextEditor.i(SNBTextEditor.this) == null);
            SNBTextEditor.i(SNBTextEditor.this).c();
            return;
            if (paramAnonymousView.getId() != 2131624575) {
              break label251;
            }
          } while (SNBTextEditor.i(SNBTextEditor.this) == null);
          SNBTextEditor.i(SNBTextEditor.this).a();
          return;
          if (paramAnonymousView.getId() != 2131624576) {
            break label283;
          }
        } while (SNBTextEditor.i(SNBTextEditor.this) == null);
        SNBTextEditor.i(SNBTextEditor.this).b();
        return;
      } while (paramAnonymousView.getId() != 2131624577);
      if (SNBTextEditor.j(SNBTextEditor.this).getVisibility() == 8)
      {
        SNBTextEditor.k(SNBTextEditor.this).hideSoftInputFromWindow(SNBTextEditor.a(SNBTextEditor.this).getWindowToken(), 0);
        ag.d.a(new rx.c.a()
        {
          public final void a()
          {
            SNBTextEditor.j(SNBTextEditor.this).setVisibility(0);
          }
        }, 100L, TimeUnit.MILLISECONDS);
        SNBTextEditor.l(SNBTextEditor.this).setSelected(true);
        return;
      }
      if (SNBTextEditor.k(SNBTextEditor.this).showSoftInput(SNBTextEditor.a(SNBTextEditor.this), 0)) {
        SNBTextEditor.j(SNBTextEditor.this).setVisibility(8);
      }
      SNBTextEditor.l(SNBTextEditor.this).setSelected(false);
    }
  };
  
  public SNBTextEditor(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public SNBTextEditor(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public SNBTextEditor(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.o = LayoutInflater.from(paramContext);
    paramAttributeSet = this.o.inflate(2130903189, null);
    addView(paramAttributeSet, new LinearLayout.LayoutParams(-1, -1));
    paramAttributeSet = (ViewGroup)paramAttributeSet.findViewById(2131624569);
    this.a = new LinearLayout(paramContext);
    this.a.setOrientation(1);
    this.a.setBackgroundColor(-1);
    paramAttributeSet.addView(this.a, new ViewGroup.LayoutParams(-1, -2));
    this.k = ((LinearLayout)findViewById(2131624570));
    this.c = ((ImageButton)findViewById(2131624571));
    this.d = ((ImageButton)findViewById(2131624572));
    this.e = ((ImageButton)findViewById(2131624573));
    this.f = ((ImageButton)findViewById(2131624574));
    this.g = ((ImageButton)findViewById(2131624093));
    this.h = ((ImageButton)findViewById(2131624575));
    this.i = ((ImageButton)findViewById(2131624576));
    this.j = ((ImageButton)findViewById(2131624577));
    this.c.setOnClickListener(this.t);
    this.d.setOnClickListener(this.t);
    this.e.setOnClickListener(this.t);
    this.f.setOnClickListener(this.t);
    this.g.setOnClickListener(this.t);
    this.h.setOnClickListener(this.t);
    this.i.setOnClickListener(this.t);
    this.j.setOnClickListener(this.t);
    this.m = ((InputMethodManager)getContext().getSystemService("input_method"));
    this.l = ((GridView)findViewById(2131624578));
    this.l.setAdapter(new c(getContext()));
    this.l.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        paramAnonymousAdapterView = (String)Arrays.asList(SNBTextEditor.this.getResources().getString(2131165525).split(",")).get(paramAnonymousInt);
        paramAnonymousAdapterView = "<img src=\"" + paramAnonymousAdapterView + ".png\" alt=\"" + paramAnonymousAdapterView + "\" title=\"" + paramAnonymousAdapterView + "\" />";
        paramAnonymousInt = SNBTextEditor.a(SNBTextEditor.this).getSelectionEnd();
        SNBTextEditor.a(SNBTextEditor.this).getText().insert(paramAnonymousInt, ai.a(paramAnonymousAdapterView, SNBTextEditor.this.getContext()));
        SNBTextEditor.a(SNBTextEditor.this).setSelection(paramAnonymousInt + 1);
      }
    });
    this.l.setOnItemLongClickListener(new AdapterView.OnItemLongClickListener()
    {
      public final boolean onItemLongClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        paramAnonymousAdapterView = (String)Arrays.asList(SNBTextEditor.this.getResources().getString(2131165525).split(",")).get(paramAnonymousInt);
        paramAnonymousAdapterView = Toast.makeText(SNBTextEditor.this.getContext(), paramAnonymousAdapterView, 0);
        int[] arrayOfInt = new int[2];
        paramAnonymousView.getLocationOnScreen(arrayOfInt);
        paramAnonymousAdapterView.setGravity(51, arrayOfInt[0], arrayOfInt[1] - (int)(paramAnonymousView.getHeight() * 1.5D));
        paramAnonymousAdapterView.show();
        return true;
      }
    });
    paramContext = UserPrefs.getString(getContext(), "rich_text_title_draft", "");
    paramAttributeSet = getDraft();
    ViewGroup localViewGroup = (ViewGroup)this.o.inflate(2130903190, null);
    this.b = ((EditText)localViewGroup.findViewById(2131624579));
    this.b.setOnFocusChangeListener(new View.OnFocusChangeListener()
    {
      public final void onFocusChange(View paramAnonymousView, boolean paramAnonymousBoolean)
      {
        if (paramAnonymousBoolean)
        {
          SNBTextEditor.m(SNBTextEditor.this).setVisibility(8);
          return;
        }
        SNBTextEditor.m(SNBTextEditor.this).setVisibility(0);
      }
    });
    this.b.setText(paramContext);
    this.b.setOnTouchListener(new View.OnTouchListener()
    {
      public final boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        SNBTextEditor.n(SNBTextEditor.this);
        return false;
      }
    });
    this.a.addView(localViewGroup);
    if ((paramAttributeSet != null) && (paramAttributeSet.size() > 0)) {
      a(getDraft());
    }
    for (;;)
    {
      if (TextUtils.isEmpty(paramContext)) {
        this.b.requestFocus();
      }
      return;
      a(1, "", "正文");
    }
  }
  
  private void a(final int paramInt)
  {
    final Object localObject = (RelativeLayout)this.a.getChildAt(paramInt);
    final SNBRichImageView localSNBRichImageView = (SNBRichImageView)((RelativeLayout)localObject).findViewById(2131624565);
    final SNBRichEditText localSNBRichEditText = (SNBRichEditText)((RelativeLayout)localObject).findViewById(2131624566);
    localObject = (TextView)((RelativeLayout)localObject).findViewById(2131624567);
    ((TextView)localObject).setText("图片上传中......");
    ((TextView)localObject).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        SNBTextEditor.a(SNBTextEditor.this, paramInt);
      }
    });
    ((TextView)localObject).setClickable(false);
    ap.b(getContext(), q.a().b(), localSNBRichImageView.getImagePath()).a(new rx.c.b()new rx.c.b {}, new rx.c.b() {});
  }
  
  private void a(int paramInt, Bitmap paramBitmap, String paramString1, String paramString2)
  {
    RelativeLayout localRelativeLayout = (RelativeLayout)this.o.inflate(2130903188, null);
    SNBRichImageView localSNBRichImageView = (SNBRichImageView)localRelativeLayout.findViewById(2131624565);
    localSNBRichImageView.setImagePath(paramString1);
    localSNBRichImageView.setImageBitmap(paramBitmap);
    localSNBRichImageView.setLayoutParams(new RelativeLayout.LayoutParams(-1, ay.c(getContext()) * paramBitmap.getHeight() / paramBitmap.getWidth()));
    ((ImageView)localRelativeLayout.findViewById(2131624568)).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        SNBTextEditor.s(SNBTextEditor.this).removeView((RelativeLayout)paramAnonymousView.getParent());
      }
    });
    paramBitmap = (SNBRichEditText)localRelativeLayout.findViewById(2131624566);
    if (!TextUtils.isEmpty(paramString2)) {
      paramBitmap.setText(paramString2);
    }
    this.a.addView(localRelativeLayout, paramInt);
    a(paramInt);
    d();
  }
  
  private void a(int paramInt, SNBRichEditText paramSNBRichEditText)
  {
    if (paramSNBRichEditText.c) {
      this.e.setSelected(true);
    }
    while (paramInt == 1)
    {
      this.c.setSelected(true);
      this.d.setSelected(false);
      return;
      this.e.setSelected(false);
    }
    if (paramInt == 10)
    {
      this.c.setSelected(false);
      this.d.setSelected(true);
      return;
    }
    if (paramInt == 11)
    {
      this.c.setSelected(true);
      this.d.setSelected(true);
      return;
    }
    this.c.setSelected(false);
    this.d.setSelected(false);
  }
  
  private void a(int paramInt, CharSequence paramCharSequence, String paramString)
  {
    final SNBRichEditText localSNBRichEditText = (SNBRichEditText)this.o.inflate(2130903187, null);
    if (!TextUtils.isEmpty(paramString)) {
      localSNBRichEditText.setHint(paramString);
    }
    if (!TextUtils.isEmpty(paramCharSequence)) {
      localSNBRichEditText.setText(paramCharSequence);
    }
    localSNBRichEditText.setOnFocusChangeListener(new View.OnFocusChangeListener()
    {
      public final void onFocusChange(View paramAnonymousView, boolean paramAnonymousBoolean)
      {
        if (paramAnonymousBoolean) {
          SNBTextEditor.a(SNBTextEditor.this, (SNBRichEditText)paramAnonymousView);
        }
      }
    });
    localSNBRichEditText.addTextChangedListener(new TextWatcher()
    {
      int a = 0;
      int b = 0;
      
      public final void afterTextChanged(Editable paramAnonymousEditable)
      {
        int j;
        if ((SNBTextEditor.o(SNBTextEditor.this) != 0) && (!SNBTextEditor.p(SNBTextEditor.this)))
        {
          j = SNBTextEditor.a(SNBTextEditor.this).getCurrentSpanBegin();
          if ((j > this.b) || (this.b > paramAnonymousEditable.length())) {
            return;
          }
          SNBTextEditor.a(SNBTextEditor.this).removeTextChangedListener(this);
          paramAnonymousEditable = new SpannableString(paramAnonymousEditable);
          if (SNBTextEditor.a(SNBTextEditor.this).getSelectionStart() == SNBTextEditor.a(SNBTextEditor.this).getText().length())
          {
            StyleSpan[] arrayOfStyleSpan = (StyleSpan[])paramAnonymousEditable.getSpans(j, this.b, StyleSpan.class);
            int k = arrayOfStyleSpan.length;
            int i = 0;
            while (i < k)
            {
              paramAnonymousEditable.removeSpan(arrayOfStyleSpan[i]);
              i += 1;
            }
          }
          if (SNBTextEditor.o(SNBTextEditor.this) != 1) {
            break label274;
          }
          paramAnonymousEditable.setSpan(new StyleSpan(1), j, this.b, 33);
        }
        for (;;)
        {
          SNBTextEditor.a(SNBTextEditor.this).setText(paramAnonymousEditable);
          SNBTextEditor.a(SNBTextEditor.this).addTextChangedListener(this);
          SNBTextEditor.a(SNBTextEditor.this).setSelection(this.b);
          if (SNBTextEditor.a(SNBTextEditor.this).getSelectionStart() != SNBTextEditor.a(SNBTextEditor.this).getText().length()) {
            SNBTextEditor.a(SNBTextEditor.this, this.b, SNBTextEditor.a(SNBTextEditor.this));
          }
          SNBTextEditor.a(SNBTextEditor.this, true);
          return;
          label274:
          if (SNBTextEditor.o(SNBTextEditor.this) == 10) {
            paramAnonymousEditable.setSpan(new StyleSpan(2), j, this.b, 33);
          } else if (SNBTextEditor.o(SNBTextEditor.this) == 11) {
            paramAnonymousEditable.setSpan(new StyleSpan(3), j, this.b, 33);
          }
        }
      }
      
      public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
      {
        SNBTextEditor.a(SNBTextEditor.this, false);
      }
      
      public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
      {
        this.a = paramAnonymousInt1;
        this.b = (paramAnonymousInt1 + paramAnonymousInt3);
      }
    });
    localSNBRichEditText.setOnTouchListener(new View.OnTouchListener()
    {
      public final boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        SNBTextEditor.n(SNBTextEditor.this);
        return false;
      }
    });
    localSNBRichEditText.setListener(new b()
    {
      public final void a(int paramAnonymousInt)
      {
        SNBTextEditor.a(SNBTextEditor.this, paramAnonymousInt, localSNBRichEditText);
        if (SNBTextEditor.q(SNBTextEditor.this)) {
          SNBTextEditor.c(SNBTextEditor.this);
        }
      }
    });
    localSNBRichEditText.setOnKeyListener(new View.OnKeyListener()
    {
      public final boolean onKey(View paramAnonymousView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
      {
        if ((paramAnonymousKeyEvent.getAction() == 0) && (paramAnonymousKeyEvent.getKeyCode() == 67))
        {
          paramAnonymousView = (SNBRichEditText)paramAnonymousView;
          SNBTextEditor.b(SNBTextEditor.this, paramAnonymousView);
          SNBTextEditor.b(SNBTextEditor.this, true);
        }
        for (;;)
        {
          return false;
          if ((paramAnonymousKeyEvent.getKeyCode() == 66) && (localSNBRichEditText.getSelectionEnd() == localSNBRichEditText.getText().length()))
          {
            SNBTextEditor.r(SNBTextEditor.this);
            paramAnonymousInt = SNBTextEditor.s(SNBTextEditor.this).indexOfChild(SNBTextEditor.a(SNBTextEditor.this));
            SNBTextEditor.a(SNBTextEditor.this, paramAnonymousInt + 1, "", "");
            SNBTextEditor.b(SNBTextEditor.this, false);
            return true;
          }
          SNBTextEditor.b(SNBTextEditor.this, false);
        }
      }
    });
    localSNBRichEditText.requestFocus();
    this.a.addView(localSNBRichEditText, paramInt);
  }
  
  private void a(ArrayList<g> paramArrayList)
  {
    int i1 = 0;
    if (i1 < paramArrayList.size())
    {
      Object localObject = (g)paramArrayList.get(i1);
      if (((g)localObject).category == 1)
      {
        a(i1 + 1, ai.a(((g)localObject).htmlText, getContext(), false), "");
        if (((g)localObject).isHeader) {
          c();
        }
      }
      while ((((g)localObject).category != 2) || (((g)localObject).imagePath == null))
      {
        i1 += 1;
        break;
      }
      String str = ((g)localObject).imagePath;
      if (((g)localObject).imageDescription == null) {}
      for (localObject = "";; localObject = ((g)localObject).imageDescription)
      {
        a(str, (String)localObject);
        break;
      }
    }
  }
  
  private void c()
  {
    this.p.setTypeface(null, 1);
    this.p.setTextSize(20.0F);
    this.p.setSelection(this.p.getText().length());
    this.p.setHeader(true);
  }
  
  private void d()
  {
    if (this.l != null) {
      this.l.setVisibility(8);
    }
    if (this.j != null) {
      this.j.setSelected(false);
    }
  }
  
  private int e()
  {
    int i4 = this.a.getChildCount();
    int i1 = SNBRichImageView.b;
    int i2 = 1;
    int i3 = i1;
    Object localObject;
    if (i2 < i4)
    {
      localObject = this.a.getChildAt(i2);
      if (!(localObject instanceof RelativeLayout)) {
        break label90;
      }
      localObject = (SNBRichImageView)((View)localObject).findViewById(2131624565);
      if (((SNBRichImageView)localObject).getUploadState() == SNBRichImageView.a) {
        i3 = SNBRichImageView.a;
      }
    }
    else
    {
      return i3;
    }
    if (((SNBRichImageView)localObject).getUploadState() == SNBRichImageView.c) {
      i1 = SNBRichImageView.c;
    }
    label90:
    for (;;)
    {
      i2 += 1;
      break;
    }
  }
  
  private ArrayList<g> getDraft()
  {
    String str = UserPrefs.getString(getContext(), "rich_text_draft", "");
    (ArrayList)m.a().fromJson(str, new TypeToken() {}.getType());
  }
  
  public final String a()
  {
    int i2 = this.a.getChildCount();
    String str = "";
    int i1 = 1;
    Object localObject2;
    Object localObject1;
    if (i1 < i2)
    {
      localObject2 = this.a.getChildAt(i1);
      if ((localObject2 instanceof SNBRichEditText))
      {
        localObject1 = (SNBRichEditText)localObject2;
        if (TextUtils.isEmpty(((SNBRichEditText)localObject1).getText().toString().trim())) {
          break label245;
        }
        if (((SNBRichEditText)localObject1).c) {
          str = String.format(Locale.CHINA, "%s<h4>%s</h4>", new Object[] { str, ((SNBRichEditText)localObject1).getHtmlText().toString() });
        }
      }
    }
    label245:
    label248:
    for (;;)
    {
      i1 += 1;
      break;
      str = String.format(Locale.CHINA, "%s<p>%s</p>", new Object[] { str, ((SNBRichEditText)localObject1).getHtmlText().toString() });
      continue;
      if ((localObject2 instanceof RelativeLayout))
      {
        localObject1 = (SNBRichImageView)((View)localObject2).findViewById(2131624565);
        if (((SNBRichImageView)localObject1).getUploadState() == SNBRichImageView.b)
        {
          localObject2 = (SNBRichEditText)((View)localObject2).findViewById(2131624566);
          str = String.format(Locale.CHINA, "%s%s<br/>", new Object[] { str, ((SNBRichImageView)localObject1).getImageUrl() });
          if (TextUtils.isEmpty(((SNBRichEditText)localObject2).getText().toString().trim())) {
            break label248;
          }
          str = String.format(Locale.CHINA, "%s<div class=\"img_desc\">%s</div>", new Object[] { str, ((SNBRichEditText)localObject2).getHtmlText() });
          continue;
          return str;
        }
      }
    }
  }
  
  public final void a(String paramString)
  {
    int i1 = this.p.getSelectionEnd();
    this.p.getText().insert(i1, paramString);
    this.p.setSelection(this.p.getText().length());
  }
  
  public final void a(String paramString1, String paramString2)
  {
    getContext();
    Bitmap localBitmap = ad.a(paramString1);
    if (localBitmap == null) {
      return;
    }
    if (this.p == null)
    {
      a(1, localBitmap, paramString1, paramString2);
      a(2, "", "");
      return;
    }
    Editable localEditable = this.p.getText();
    int i1 = this.p.getSelectionStart();
    CharSequence localCharSequence1 = localEditable.subSequence(0, i1);
    CharSequence localCharSequence2 = localEditable.subSequence(i1, localEditable.length());
    i1 = this.a.indexOfChild(this.p);
    if ((localEditable.length() == 0) || (localCharSequence1.length() == 0))
    {
      a(i1, localBitmap, paramString1, paramString2);
      this.p.setText(localEditable);
      return;
    }
    this.p.setText(localCharSequence1);
    this.p.setSelection(localCharSequence1.length(), localCharSequence1.length());
    if ((this.a.getChildCount() - 1 == i1) || (localCharSequence2.length() > 0))
    {
      a(i1 + 1, localCharSequence2, "");
      this.p.setSelection(0, 0);
    }
    a(i1 + 1, localBitmap, paramString1, paramString2);
    this.p.requestFocus();
  }
  
  public final void b()
  {
    UserPrefs.setString(getContext(), "rich_text_draft", "");
    UserPrefs.setString(getContext(), "rich_text_title_draft", "");
  }
  
  public void send()
  {
    final String str1 = this.b.getText().toString().trim();
    if (TextUtils.isEmpty(str1))
    {
      Toast.makeText(getContext(), "请输入文章标题", 0).show();
      return;
    }
    final String str2 = a();
    if (TextUtils.isEmpty(str2))
    {
      Toast.makeText(getContext(), "请输入文章内容", 0).show();
      return;
    }
    if (e() == SNBRichImageView.a)
    {
      Toast.makeText(getContext(), "图片尚未上传完毕", 0).show();
      return;
    }
    if (e() == SNBRichImageView.c)
    {
      new AlertDialog.Builder(getContext()).setTitle(2131165483).setNegativeButton("取消", null).setPositiveButton("确定发送", new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          SNBTextEditor.i(SNBTextEditor.this).send(str1, str2);
        }
      }).setMessage("有图片上传失败，继续发送？").create().show();
      return;
    }
    this.n.send(str1, str2);
  }
  
  public void setInputListener(h paramh)
  {
    this.n = paramh;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\widget\SNBTextEditor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */