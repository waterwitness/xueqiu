.class public Lcom/xueqiu/android/community/widget/SNBTextEditor;
.super Landroid/widget/LinearLayout;
.source "SNBTextEditor.java"


# instance fields
.field public a:Landroid/widget/LinearLayout;

.field public b:Landroid/widget/EditText;

.field private c:Landroid/widget/ImageButton;

.field private d:Landroid/widget/ImageButton;

.field private e:Landroid/widget/ImageButton;

.field private f:Landroid/widget/ImageButton;

.field private g:Landroid/widget/ImageButton;

.field private h:Landroid/widget/ImageButton;

.field private i:Landroid/widget/ImageButton;

.field private j:Landroid/widget/ImageButton;

.field private k:Landroid/widget/LinearLayout;

.field private l:Landroid/widget/GridView;

.field private m:Landroid/view/inputmethod/InputMethodManager;

.field private n:Lcom/xueqiu/android/community/widget/h;

.field private o:Landroid/view/LayoutInflater;

.field private p:Lcom/xueqiu/android/community/widget/SNBRichEditText;

.field private q:I

.field private r:Z

.field private s:Z

.field private t:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v0, 0x0

    const/4 v4, -0x1

    .line 110
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    iput v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->q:I

    .line 98
    iput-boolean v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->r:Z

    .line 99
    iput-boolean v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->s:Z

    .line 191
    new-instance v0, Lcom/xueqiu/android/community/widget/SNBTextEditor$11;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/community/widget/SNBTextEditor$11;-><init>(Lcom/xueqiu/android/community/widget/SNBTextEditor;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->t:Landroid/view/View$OnClickListener;

    .line 111
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->o:Landroid/view/LayoutInflater;

    .line 114
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->o:Landroid/view/LayoutInflater;

    const v1, 0x7f030095

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 115
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 116
    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    const v1, 0x7f0e0279

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 118
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a:Landroid/widget/LinearLayout;

    .line 119
    iget-object v1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 120
    iget-object v1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 121
    iget-object v1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v4, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1142
    const v0, 0x7f0e027a

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->k:Landroid/widget/LinearLayout;

    .line 1143
    const v0, 0x7f0e027b

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->c:Landroid/widget/ImageButton;

    .line 1144
    const v0, 0x7f0e027c

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->d:Landroid/widget/ImageButton;

    .line 1145
    const v0, 0x7f0e027d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->e:Landroid/widget/ImageButton;

    .line 1146
    const v0, 0x7f0e027e

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->f:Landroid/widget/ImageButton;

    .line 1147
    const v0, 0x7f0e009d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->g:Landroid/widget/ImageButton;

    .line 1148
    const v0, 0x7f0e027f

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->h:Landroid/widget/ImageButton;

    .line 1149
    const v0, 0x7f0e0280

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->i:Landroid/widget/ImageButton;

    .line 1150
    const v0, 0x7f0e0281

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->j:Landroid/widget/ImageButton;

    .line 1151
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->c:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1152
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->d:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1153
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->e:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1154
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->f:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1155
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->g:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1156
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->h:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1157
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->i:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1158
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->j:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1159
    invoke-virtual {p0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->m:Landroid/view/inputmethod/InputMethodManager;

    .line 1161
    const v0, 0x7f0e0282

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->l:Landroid/widget/GridView;

    .line 1162
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->l:Landroid/widget/GridView;

    new-instance v1, Lcom/xueqiu/android/community/a/c;

    invoke-virtual {p0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xueqiu/android/community/a/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1163
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->l:Landroid/widget/GridView;

    new-instance v1, Lcom/xueqiu/android/community/widget/SNBTextEditor$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/widget/SNBTextEditor$1;-><init>(Lcom/xueqiu/android/community/widget/SNBTextEditor;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1176
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->l:Landroid/widget/GridView;

    new-instance v1, Lcom/xueqiu/android/community/widget/SNBTextEditor$10;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/widget/SNBTextEditor$10;-><init>(Lcom/xueqiu/android/community/widget/SNBTextEditor;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1128
    invoke-virtual {p0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "rich_text_title_draft"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1129
    invoke-direct {p0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->getDraft()Ljava/util/ArrayList;

    move-result-object v3

    .line 1254
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->o:Landroid/view/LayoutInflater;

    const v1, 0x7f030096

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1255
    const v1, 0x7f0e0283

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->b:Landroid/widget/EditText;

    .line 1256
    iget-object v1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->b:Landroid/widget/EditText;

    new-instance v4, Lcom/xueqiu/android/community/widget/SNBTextEditor$12;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/community/widget/SNBTextEditor$12;-><init>(Lcom/xueqiu/android/community/widget/SNBTextEditor;)V

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1266
    iget-object v1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->b:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1267
    iget-object v1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->b:Landroid/widget/EditText;

    new-instance v4, Lcom/xueqiu/android/community/widget/SNBTextEditor$13;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/community/widget/SNBTextEditor$13;-><init>(Lcom/xueqiu/android/community/widget/SNBTextEditor;)V

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1274
    iget-object v1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1131
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1132
    invoke-direct {p0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->getDraft()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a(Ljava/util/ArrayList;)V

    .line 2197
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1136
    if-eqz v0, :cond_0

    .line 1137
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 124
    :cond_0
    return-void

    .line 1134
    :cond_1
    const-string v0, ""

    const-string v1, "\u6b63\u6587"

    invoke-direct {p0, v5, v0, v1}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a(ILjava/lang/CharSequence;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/community/widget/SNBTextEditor;)Lcom/xueqiu/android/community/widget/SNBRichEditText;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->p:Lcom/xueqiu/android/community/widget/SNBRichEditText;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/community/widget/SNBTextEditor;Lcom/xueqiu/android/community/widget/SNBRichEditText;)Lcom/xueqiu/android/community/widget/SNBRichEditText;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->p:Lcom/xueqiu/android/community/widget/SNBRichEditText;

    return-object p1
.end method

.method private a(I)V
    .locals 6

    .prologue
    .line 441
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 442
    const v1, 0x7f0e0275

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/widget/SNBRichImageView;

    .line 443
    const v2, 0x7f0e0276

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/xueqiu/android/community/widget/SNBRichEditText;

    .line 444
    const v3, 0x7f0e0277

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 445
    const-string v3, "\u56fe\u7247\u4e0a\u4f20\u4e2d......"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    new-instance v3, Lcom/xueqiu/android/community/widget/SNBTextEditor$4;

    invoke-direct {v3, p0, p1}, Lcom/xueqiu/android/community/widget/SNBTextEditor$4;-><init>(Lcom/xueqiu/android/community/widget/SNBTextEditor;I)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 453
    invoke-virtual {p0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v4

    invoke-virtual {v1}, Lcom/xueqiu/android/community/widget/SNBRichImageView;->getImagePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/xueqiu/android/base/util/ap;->b(Landroid/content/Context;Lcom/xueqiu/android/base/b/ai;Ljava/lang/String;)Lrx/a;

    move-result-object v3

    new-instance v4, Lcom/xueqiu/android/community/widget/SNBTextEditor$5;

    invoke-direct {v4, p0, v1, v0, v2}, Lcom/xueqiu/android/community/widget/SNBTextEditor$5;-><init>(Lcom/xueqiu/android/community/widget/SNBTextEditor;Lcom/xueqiu/android/community/widget/SNBRichImageView;Landroid/widget/TextView;Lcom/xueqiu/android/community/widget/SNBRichEditText;)V

    new-instance v5, Lcom/xueqiu/android/community/widget/SNBTextEditor$6;

    invoke-direct {v5, p0, v2, v0, v1}, Lcom/xueqiu/android/community/widget/SNBTextEditor$6;-><init>(Lcom/xueqiu/android/community/widget/SNBTextEditor;Lcom/xueqiu/android/community/widget/SNBRichEditText;Landroid/widget/TextView;Lcom/xueqiu/android/community/widget/SNBRichImageView;)V

    invoke-virtual {v3, v4, v5}, Lrx/a;->a(Lrx/c/b;Lrx/c/b;)Lrx/j;

    .line 477
    return-void
.end method

.method private a(ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 417
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->o:Landroid/view/LayoutInflater;

    const v1, 0x7f030094

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 418
    const v1, 0x7f0e0275

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/widget/SNBRichImageView;

    .line 419
    invoke-virtual {v1, p3}, Lcom/xueqiu/android/community/widget/SNBRichImageView;->setImagePath(Ljava/lang/String;)V

    .line 420
    invoke-virtual {v1, p2}, Lcom/xueqiu/android/community/widget/SNBRichImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 421
    invoke-virtual {p0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xueqiu/android/base/util/ay;->c(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/2addr v2, v3

    .line 422
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 423
    invoke-virtual {v1, v3}, Lcom/xueqiu/android/community/widget/SNBRichImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 424
    const v1, 0x7f0e0278

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 425
    new-instance v2, Lcom/xueqiu/android/community/widget/SNBTextEditor$3;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/community/widget/SNBTextEditor$3;-><init>(Lcom/xueqiu/android/community/widget/SNBTextEditor;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    const v1, 0x7f0e0276

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/widget/SNBRichEditText;

    .line 5197
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 432
    if-nez v2, :cond_0

    .line 433
    invoke-virtual {v1, p4}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->setText(Ljava/lang/CharSequence;)V

    .line 435
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 436
    invoke-direct {p0, p1}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a(I)V

    .line 437
    invoke-direct {p0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->d()V

    .line 438
    return-void
.end method

.method private a(ILcom/xueqiu/android/community/widget/SNBRichEditText;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 561
    .line 6041
    iget-boolean v0, p2, Lcom/xueqiu/android/community/widget/SNBRichEditText;->c:Z

    .line 561
    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 566
    :goto_0
    if-ne p1, v1, :cond_1

    .line 567
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 568
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 579
    :goto_1
    return-void

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_0

    .line 569
    :cond_1
    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    .line 570
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 571
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_1

    .line 572
    :cond_2
    const/16 v0, 0xb

    if-ne p1, v0, :cond_3

    .line 573
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 574
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_1

    .line 576
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 577
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_1
.end method

.method private a(ILjava/lang/CharSequence;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 279
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->o:Landroid/view/LayoutInflater;

    const v1, 0x7f030093

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/widget/SNBRichEditText;

    .line 3197
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 280
    if-nez v1, :cond_0

    .line 281
    invoke-virtual {v0, p3}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 4197
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 283
    if-nez v1, :cond_1

    .line 284
    invoke-virtual {v0, p2}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->setText(Ljava/lang/CharSequence;)V

    .line 287
    :cond_1
    new-instance v1, Lcom/xueqiu/android/community/widget/SNBTextEditor$14;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/widget/SNBTextEditor$14;-><init>(Lcom/xueqiu/android/community/widget/SNBTextEditor;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 297
    new-instance v1, Lcom/xueqiu/android/community/widget/SNBTextEditor$15;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/widget/SNBTextEditor$15;-><init>(Lcom/xueqiu/android/community/widget/SNBTextEditor;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 346
    new-instance v1, Lcom/xueqiu/android/community/widget/SNBTextEditor$16;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/widget/SNBTextEditor$16;-><init>(Lcom/xueqiu/android/community/widget/SNBTextEditor;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 355
    new-instance v1, Lcom/xueqiu/android/community/widget/SNBTextEditor$17;

    invoke-direct {v1, p0, v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor$17;-><init>(Lcom/xueqiu/android/community/widget/SNBTextEditor;Lcom/xueqiu/android/community/widget/SNBRichEditText;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->setListener(Lcom/xueqiu/android/community/widget/b;)V

    .line 365
    new-instance v1, Lcom/xueqiu/android/community/widget/SNBTextEditor$2;

    invoke-direct {v1, p0, v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor$2;-><init>(Lcom/xueqiu/android/community/widget/SNBTextEditor;Lcom/xueqiu/android/community/widget/SNBRichEditText;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 386
    invoke-virtual {v0}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->requestFocus()Z

    .line 387
    iget-object v1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 388
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/widget/SNBTextEditor;I)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/widget/SNBTextEditor;ILcom/xueqiu/android/community/widget/SNBRichEditText;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 11539
    add-int/lit8 v0, p1, -0x1

    if-lez v0, :cond_0

    add-int/lit8 v0, p1, -0x1

    .line 11540
    :goto_0
    invoke-virtual {p2}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    const-class v3, Landroid/text/style/StyleSpan;

    invoke-interface {v2, v0, p1, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/StyleSpan;

    .line 11541
    array-length v2, v0

    if-lez v2, :cond_4

    .line 11542
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v0

    .line 11543
    if-ne v0, v4, :cond_1

    .line 11544
    invoke-direct {p0, v4, p2}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a(ILcom/xueqiu/android/community/widget/SNBRichEditText;)V

    .line 11552
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 11539
    goto :goto_0

    .line 11545
    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 11546
    const/16 v0, 0xa

    invoke-direct {p0, v0, p2}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a(ILcom/xueqiu/android/community/widget/SNBRichEditText;)V

    goto :goto_1

    .line 11547
    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 11548
    const/16 v0, 0xb

    invoke-direct {p0, v0, p2}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a(ILcom/xueqiu/android/community/widget/SNBRichEditText;)V

    goto :goto_1

    .line 11550
    :cond_3
    invoke-direct {p0, v1, p2}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a(ILcom/xueqiu/android/community/widget/SNBRichEditText;)V

    goto :goto_1

    .line 11553
    :cond_4
    invoke-direct {p0, v1, p2}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a(ILcom/xueqiu/android/community/widget/SNBRichEditText;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/xueqiu/android/community/widget/SNBTextEditor;ILjava/lang/CharSequence;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a(ILjava/lang/CharSequence;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/widget/g;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 750
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 751
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/widget/g;

    .line 752
    iget v3, v0, Lcom/xueqiu/android/community/widget/g;->category:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 753
    add-int/lit8 v3, v1, 0x1

    iget-object v4, v0, Lcom/xueqiu/android/community/widget/g;->htmlText:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 10054
    invoke-static {v4, v5, v2}, Lcom/xueqiu/android/base/util/ai;->a(Ljava/lang/CharSequence;Landroid/content/Context;Z)Landroid/text/Spanned;

    move-result-object v4

    .line 753
    const-string v5, ""

    invoke-direct {p0, v3, v4, v5}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a(ILjava/lang/CharSequence;Ljava/lang/String;)V

    .line 754
    iget-boolean v0, v0, Lcom/xueqiu/android/community/widget/g;->isHeader:Z

    if-eqz v0, :cond_0

    .line 755
    invoke-direct {p0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->c()V

    .line 750
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 757
    :cond_1
    iget v3, v0, Lcom/xueqiu/android/community/widget/g;->category:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 758
    iget-object v3, v0, Lcom/xueqiu/android/community/widget/g;->imagePath:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 759
    iget-object v3, v0, Lcom/xueqiu/android/community/widget/g;->imagePath:Ljava/lang/String;

    iget-object v4, v0, Lcom/xueqiu/android/community/widget/g;->imageDescription:Ljava/lang/String;

    if-nez v4, :cond_2

    const-string v0, ""

    :goto_2
    invoke-virtual {p0, v3, v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, v0, Lcom/xueqiu/android/community/widget/g;->imageDescription:Ljava/lang/String;

    goto :goto_2

    .line 763
    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/widget/SNBTextEditor;Z)Z
    .locals 0

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->s:Z

    return p1
.end method

.method static synthetic b(Lcom/xueqiu/android/community/widget/SNBTextEditor;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->c:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/community/widget/SNBTextEditor;Lcom/xueqiu/android/community/widget/SNBRichEditText;)V
    .locals 4

    .prologue
    .line 12391
    invoke-virtual {p1}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->getSelectionStart()I

    move-result v0

    .line 12393
    if-nez v0, :cond_0

    .line 12394
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 12395
    iget-object v1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a:Landroid/widget/LinearLayout;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 12396
    if-eqz v0, :cond_0

    .line 12397
    instance-of v1, v0, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    .line 12399
    iget-object v1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    .line 12400
    :cond_1
    instance-of v1, v0, Lcom/xueqiu/android/community/widget/SNBRichEditText;

    if-eqz v1, :cond_0

    .line 12402
    invoke-virtual {p1}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 12403
    check-cast v0, Lcom/xueqiu/android/community/widget/SNBRichEditText;

    .line 12404
    invoke-virtual {v0}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 12405
    iget-object v3, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 12407
    invoke-interface {v2, v1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->setText(Ljava/lang/CharSequence;)V

    .line 12408
    invoke-virtual {v0}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->requestFocus()Z

    .line 12409
    iput-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->p:Lcom/xueqiu/android/community/widget/SNBRichEditText;

    .line 12410
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->p:Lcom/xueqiu/android/community/widget/SNBRichEditText;

    iget-object v1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->p:Lcom/xueqiu/android/community/widget/SNBRichEditText;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->setSelection(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/xueqiu/android/community/widget/SNBTextEditor;Z)Z
    .locals 0

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->r:Z

    return p1
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 590
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->p:Lcom/xueqiu/android/community/widget/SNBRichEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 591
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->p:Lcom/xueqiu/android/community/widget/SNBRichEditText;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->setTextSize(F)V

    .line 592
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->p:Lcom/xueqiu/android/community/widget/SNBRichEditText;

    iget-object v1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->p:Lcom/xueqiu/android/community/widget/SNBRichEditText;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->setSelection(I)V

    .line 593
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->p:Lcom/xueqiu/android/community/widget/SNBRichEditText;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->setHeader(Z)V

    .line 594
    return-void
.end method

.method static synthetic c(Lcom/xueqiu/android/community/widget/SNBTextEditor;)V
    .locals 2

    .prologue
    .line 64
    .line 10526
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->q:I

    .line 10527
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10528
    iget v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->q:I

    .line 10530
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10531
    iget v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->q:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->q:I

    .line 10533
    :cond_1
    iget v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->q:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->p:Lcom/xueqiu/android/community/widget/SNBRichEditText;

    if-eqz v0, :cond_2

    .line 10534
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->p:Lcom/xueqiu/android/community/widget/SNBRichEditText;

    iget-object v1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->p:Lcom/xueqiu/android/community/widget/SNBRichEditText;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->getSelectionEnd()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->setCurrentSpanBegin(I)V

    .line 64
    :cond_2
    return-void
.end method

.method static synthetic d(Lcom/xueqiu/android/community/widget/SNBTextEditor;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->d:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 606
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->l:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->l:Landroid/widget/GridView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->j:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 610
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->j:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 612
    :cond_1
    return-void
.end method

.method private e()I
    .locals 6

    .prologue
    .line 767
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 768
    sget v1, Lcom/xueqiu/android/community/widget/SNBRichImageView;->b:I

    .line 770
    const/4 v0, 0x1

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_0

    .line 771
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 772
    instance-of v4, v0, Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_2

    .line 773
    const v4, 0x7f0e0275

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/widget/SNBRichImageView;

    .line 774
    invoke-virtual {v0}, Lcom/xueqiu/android/community/widget/SNBRichImageView;->getUploadState()I

    move-result v4

    sget v5, Lcom/xueqiu/android/community/widget/SNBRichImageView;->a:I

    if-ne v4, v5, :cond_1

    .line 775
    sget v1, Lcom/xueqiu/android/community/widget/SNBRichImageView;->a:I

    .line 782
    :cond_0
    return v1

    .line 777
    :cond_1
    invoke-virtual {v0}, Lcom/xueqiu/android/community/widget/SNBRichImageView;->getUploadState()I

    move-result v0

    sget v4, Lcom/xueqiu/android/community/widget/SNBRichImageView;->c:I

    if-ne v0, v4, :cond_2

    .line 778
    sget v0, Lcom/xueqiu/android/community/widget/SNBRichImageView;->c:I

    .line 770
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method static synthetic e(Lcom/xueqiu/android/community/widget/SNBTextEditor;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->e:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic f(Lcom/xueqiu/android/community/widget/SNBTextEditor;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    .line 10598
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->p:Lcom/xueqiu/android/community/widget/SNBRichEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 10599
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->p:Lcom/xueqiu/android/community/widget/SNBRichEditText;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->setTextSize(F)V

    .line 10600
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->p:Lcom/xueqiu/android/community/widget/SNBRichEditText;

    iget-object v1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->p:Lcom/xueqiu/android/community/widget/SNBRichEditText;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->setSelection(I)V

    .line 10601
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->p:Lcom/xueqiu/android/community/widget/SNBRichEditText;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->setHeader(Z)V

    .line 64
    return-void
.end method

.method static synthetic g(Lcom/xueqiu/android/community/widget/SNBTextEditor;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->c()V

    return-void
.end method

.method private getDraft()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/widget/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 743
    invoke-virtual {p0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "rich_text_draft"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 744
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/community/widget/SNBTextEditor$9;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/community/widget/SNBTextEditor$9;-><init>(Lcom/xueqiu/android/community/widget/SNBTextEditor;)V

    .line 745
    invoke-virtual {v2}, Lcom/xueqiu/android/community/widget/SNBTextEditor$9;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 744
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 746
    return-object v0
.end method

.method static synthetic h(Lcom/xueqiu/android/community/widget/SNBTextEditor;)V
    .locals 3

    .prologue
    .line 10615
    new-instance v0, Lcom/xueqiu/android/common/widget/a;

    invoke-virtual {p0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xueqiu/android/common/widget/a;-><init>(Landroid/content/Context;)V

    .line 10616
    new-instance v1, Lcom/xueqiu/android/community/widget/SNBTextEditor$7;

    invoke-direct {v1, p0, v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor$7;-><init>(Lcom/xueqiu/android/community/widget/SNBTextEditor;Lcom/xueqiu/android/common/widget/a;)V

    .line 11074
    iput-object v1, v0, Lcom/xueqiu/android/common/widget/a;->a:Lcom/xueqiu/android/common/widget/b;

    .line 10628
    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/a;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 10629
    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/a;->show()V

    .line 64
    return-void
.end method

.method static synthetic i(Lcom/xueqiu/android/community/widget/SNBTextEditor;)Lcom/xueqiu/android/community/widget/h;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->n:Lcom/xueqiu/android/community/widget/h;

    return-object v0
.end method

.method static synthetic j(Lcom/xueqiu/android/community/widget/SNBTextEditor;)Landroid/widget/GridView;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->l:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic k(Lcom/xueqiu/android/community/widget/SNBTextEditor;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->m:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic l(Lcom/xueqiu/android/community/widget/SNBTextEditor;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->j:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic m(Lcom/xueqiu/android/community/widget/SNBTextEditor;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->k:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic n(Lcom/xueqiu/android/community/widget/SNBTextEditor;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->d()V

    return-void
.end method

.method static synthetic o(Lcom/xueqiu/android/community/widget/SNBTextEditor;)I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->q:I

    return v0
.end method

.method static synthetic p(Lcom/xueqiu/android/community/widget/SNBTextEditor;)Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->r:Z

    return v0
.end method

.method static synthetic q(Lcom/xueqiu/android/community/widget/SNBTextEditor;)Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->s:Z

    return v0
.end method

.method static synthetic r(Lcom/xueqiu/android/community/widget/SNBTextEditor;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    .line 12582
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 12583
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 12584
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 12585
    iput v1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->q:I

    .line 64
    return-void
.end method

.method static synthetic s(Lcom/xueqiu/android/community/widget/SNBTextEditor;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v4, 0x1

    .line 663
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    .line 664
    const-string v2, ""

    move v3, v4

    .line 666
    :goto_0
    if-ge v3, v5, :cond_2

    .line 667
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 668
    instance-of v1, v0, Lcom/xueqiu/android/community/widget/SNBRichEditText;

    if-eqz v1, :cond_1

    .line 669
    check-cast v0, Lcom/xueqiu/android/community/widget/SNBRichEditText;

    .line 670
    invoke-virtual {v0}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 8197
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 670
    if-nez v1, :cond_3

    .line 9041
    iget-boolean v1, v0, Lcom/xueqiu/android/community/widget/SNBRichEditText;->c:Z

    .line 673
    if-eqz v1, :cond_0

    .line 674
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v6, "%s<h4>%s</h4>"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v2, v7, v9

    invoke-virtual {v0}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->getHtmlText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v4

    invoke-static {v1, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 666
    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v2, v0

    goto :goto_0

    .line 676
    :cond_0
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v6, "%s<p>%s</p>"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v2, v7, v9

    invoke-virtual {v0}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->getHtmlText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v4

    invoke-static {v1, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 678
    :cond_1
    instance-of v1, v0, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_3

    .line 679
    const v1, 0x7f0e0275

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/widget/SNBRichImageView;

    .line 680
    invoke-virtual {v1}, Lcom/xueqiu/android/community/widget/SNBRichImageView;->getUploadState()I

    move-result v6

    sget v7, Lcom/xueqiu/android/community/widget/SNBRichImageView;->b:I

    if-ne v6, v7, :cond_3

    .line 683
    const v6, 0x7f0e0276

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/widget/SNBRichEditText;

    .line 684
    sget-object v6, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v7, "%s%s<br/>"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v2, v8, v9

    invoke-virtual {v1}, Lcom/xueqiu/android/community/widget/SNBRichImageView;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v4

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 685
    invoke-virtual {v0}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 9197
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 685
    if-nez v2, :cond_4

    .line 686
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v6, "%s<div class=\"img_desc\">%s</div>"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v1, v7, v9

    invoke-virtual {v0}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->getHtmlText()Landroid/text/Editable;

    move-result-object v0

    aput-object v0, v7, v4

    invoke-static {v2, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 691
    :cond_2
    return-object v2

    :cond_3
    move-object v0, v2

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->p:Lcom/xueqiu/android/community/widget/SNBRichEditText;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->getSelectionEnd()I

    move-result v0

    .line 521
    iget-object v1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->p:Lcom/xueqiu/android/community/widget/SNBRichEditText;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 522
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->p:Lcom/xueqiu/android/community/widget/SNBRichEditText;

    iget-object v1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->p:Lcom/xueqiu/android/community/widget/SNBRichEditText;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->setSelection(I)V

    .line 523
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 484
    invoke-virtual {p0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->getContext()Landroid/content/Context;

    invoke-static {p1}, Lcom/xueqiu/android/base/util/ad;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 486
    if-nez v0, :cond_0

    .line 517
    :goto_0
    return-void

    .line 490
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->p:Lcom/xueqiu/android/community/widget/SNBRichEditText;

    if-nez v1, :cond_1

    .line 491
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a(ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    const/4 v0, 0x2

    const-string v1, ""

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a(ILjava/lang/CharSequence;Ljava/lang/String;)V

    goto :goto_0

    .line 496
    :cond_1
    iget-object v1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->p:Lcom/xueqiu/android/community/widget/SNBRichEditText;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 497
    iget-object v2, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->p:Lcom/xueqiu/android/community/widget/SNBRichEditText;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->getSelectionStart()I

    move-result v2

    .line 498
    invoke-interface {v1, v6, v2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 499
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-interface {v1, v2, v4}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 500
    iget-object v4, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->p:Lcom/xueqiu/android/community/widget/SNBRichEditText;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v4

    .line 504
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_3

    .line 505
    :cond_2
    invoke-direct {p0, v4, v0, p1, p2}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a(ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->p:Lcom/xueqiu/android/community/widget/SNBRichEditText;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 508
    :cond_3
    iget-object v1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->p:Lcom/xueqiu/android/community/widget/SNBRichEditText;

    invoke-virtual {v1, v3}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->setText(Ljava/lang/CharSequence;)V

    .line 509
    iget-object v1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->p:Lcom/xueqiu/android/community/widget/SNBRichEditText;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v1, v5, v3}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->setSelection(II)V

    .line 510
    iget-object v1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v1, v4, :cond_4

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 511
    :cond_4
    add-int/lit8 v1, v4, 0x1

    const-string v3, ""

    invoke-direct {p0, v1, v2, v3}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a(ILjava/lang/CharSequence;Ljava/lang/String;)V

    .line 512
    iget-object v1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->p:Lcom/xueqiu/android/community/widget/SNBRichEditText;

    invoke-virtual {v1, v6, v6}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->setSelection(II)V

    .line 514
    :cond_5
    add-int/lit8 v1, v4, 0x1

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a(ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->p:Lcom/xueqiu/android/community/widget/SNBRichEditText;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->requestFocus()Z

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 738
    invoke-virtual {p0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "rich_text_draft"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    invoke-virtual {p0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "rich_text_title_draft"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    return-void
.end method

.method public send()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 633
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 6197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 634
    if-eqz v1, :cond_0

    .line 635
    invoke-virtual {p0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8bf7\u8f93\u5165\u6587\u7ae0\u6807\u9898"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 659
    :goto_0
    return-void

    .line 639
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a()Ljava/lang/String;

    move-result-object v1

    .line 7197
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 640
    if-eqz v2, :cond_1

    .line 641
    invoke-virtual {p0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8bf7\u8f93\u5165\u6587\u7ae0\u5185\u5bb9"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 645
    :cond_1
    invoke-direct {p0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->e()I

    move-result v2

    sget v3, Lcom/xueqiu/android/community/widget/SNBRichImageView;->a:I

    if-ne v2, v3, :cond_2

    .line 646
    invoke-virtual {p0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u56fe\u7247\u5c1a\u672a\u4e0a\u4f20\u5b8c\u6bd5"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 647
    :cond_2
    invoke-direct {p0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->e()I

    move-result v2

    sget v3, Lcom/xueqiu/android/community/widget/SNBRichImageView;->c:I

    if-ne v2, v3, :cond_3

    .line 648
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f07012b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "\u53d6\u6d88"

    const/4 v4, 0x0

    .line 649
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "\u786e\u5b9a\u53d1\u9001"

    new-instance v4, Lcom/xueqiu/android/community/widget/SNBTextEditor$8;

    invoke-direct {v4, p0, v0, v1}, Lcom/xueqiu/android/community/widget/SNBTextEditor$8;-><init>(Lcom/xueqiu/android/community/widget/SNBTextEditor;Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u6709\u56fe\u7247\u4e0a\u4f20\u5931\u8d25\uff0c\u7ee7\u7eed\u53d1\u9001\uff1f"

    .line 655
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 657
    :cond_3
    iget-object v2, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->n:Lcom/xueqiu/android/community/widget/h;

    invoke-interface {v2, v0, v1}, Lcom/xueqiu/android/community/widget/h;->send(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setInputListener(Lcom/xueqiu/android/community/widget/h;)V
    .locals 0

    .prologue
    .line 790
    iput-object p1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->n:Lcom/xueqiu/android/community/widget/h;

    .line 791
    return-void
.end method
