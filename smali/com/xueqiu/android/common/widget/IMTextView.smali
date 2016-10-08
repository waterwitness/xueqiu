.class public Lcom/xueqiu/android/common/widget/IMTextView;
.super Landroid/widget/TextView;
.source "IMTextView.java"


# static fields
.field private static e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Z

.field private b:Z

.field private c:I

.field private d:Landroid/support/v4/view/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 137
    sput-object v0, Lcom/xueqiu/android/common/widget/IMTextView;->e:Ljava/util/List;

    .line 138
    sput-object v0, Lcom/xueqiu/android/common/widget/IMTextView;->f:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 116
    iput-boolean v0, p0, Lcom/xueqiu/android/common/widget/IMTextView;->a:Z

    .line 117
    iput-boolean v0, p0, Lcom/xueqiu/android/common/widget/IMTextView;->b:Z

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/common/widget/IMTextView;->c:I

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 116
    iput-boolean v0, p0, Lcom/xueqiu/android/common/widget/IMTextView;->a:Z

    .line 117
    iput-boolean v0, p0, Lcom/xueqiu/android/common/widget/IMTextView;->b:Z

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/common/widget/IMTextView;->c:I

    .line 51
    invoke-direct {p0, p2}, Lcom/xueqiu/android/common/widget/IMTextView;->a(Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 116
    iput-boolean v0, p0, Lcom/xueqiu/android/common/widget/IMTextView;->a:Z

    .line 117
    iput-boolean v0, p0, Lcom/xueqiu/android/common/widget/IMTextView;->b:Z

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/common/widget/IMTextView;->c:I

    .line 56
    invoke-direct {p0, p2}, Lcom/xueqiu/android/common/widget/IMTextView;->a(Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/text/Spanned;
    .locals 24

    .prologue
    .line 150
    sget-object v4, Lcom/xueqiu/android/common/widget/IMTextView;->e:Ljava/util/List;

    if-nez v4, :cond_0

    .line 151
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070154

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    sput-object v4, Lcom/xueqiu/android/common/widget/IMTextView;->e:Ljava/util/List;

    .line 152
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070153

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    sput-object v4, Lcom/xueqiu/android/common/widget/IMTextView;->f:Ljava/util/List;

    .line 155
    :cond_0
    new-instance v10, Lcom/xueqiu/android/common/widget/IMTextView$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v10, v0, v1}, Lcom/xueqiu/android/common/widget/IMTextView$2;-><init>(Lcom/xueqiu/android/common/widget/IMTextView;Landroid/content/Context;)V

    .line 176
    const-string v4, "\\[[^\\]]*\\]"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 177
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 178
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 179
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 180
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 181
    :cond_1
    :goto_0
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 182
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 183
    sget-object v6, Lcom/xueqiu/android/common/widget/IMTextView;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 184
    if-ltz v5, :cond_1

    sget-object v6, Lcom/xueqiu/android/common/widget/IMTextView;->e:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 187
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 191
    :cond_2
    new-instance v14, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p2

    invoke-direct {v14, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 192
    const/4 v4, 0x0

    .line 193
    const/4 v5, 0x0

    move v7, v4

    move v8, v5

    :goto_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    if-ge v8, v4, :cond_4

    .line 194
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v4, "<img src=\""

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/xueqiu/android/common/widget/IMTextView;->e:Ljava/util/List;

    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" alt=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/xueqiu/android/common/widget/IMTextView;->e:Ljava/util/List;

    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" />"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 195
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 196
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 197
    sub-int v17, v16, v15

    .line 198
    const/4 v4, 0x0

    invoke-static {v5, v10, v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v6

    .line 199
    const/4 v4, 0x0

    invoke-interface {v6}, Landroid/text/Spanned;->length()I

    move-result v5

    const-class v9, Landroid/text/style/ImageSpan;

    invoke-interface {v6, v4, v5, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/ImageSpan;

    .line 200
    array-length v0, v4

    move/from16 v18, v0

    const/4 v5, 0x0

    move v9, v5

    :goto_2
    move/from16 v0, v18

    if-ge v9, v0, :cond_3

    aget-object v19, v4, v9

    .line 201
    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v20

    .line 202
    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v21

    .line 203
    invoke-virtual/range {v19 .. v19}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 204
    new-instance v22, Lcom/xueqiu/android/common/widget/k;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/xueqiu/android/common/widget/k;-><init>(Lcom/xueqiu/android/common/widget/IMTextView;Landroid/graphics/drawable/Drawable;)V

    move-object v5, v6

    .line 205
    check-cast v5, Landroid/text/SpannableStringBuilder;

    const/16 v23, 0x22

    move-object/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object v5, v6

    .line 206
    check-cast v5, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 200
    add-int/lit8 v5, v9, 0x1

    move v9, v5

    goto :goto_2

    .line 208
    :cond_3
    sub-int v4, v15, v7

    sub-int v5, v16, v7

    invoke-virtual {v14, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 209
    add-int/lit8 v4, v17, -0x1

    add-int/2addr v4, v7

    .line 193
    add-int/lit8 v5, v8, 0x1

    move v7, v4

    move v8, v5

    goto/16 :goto_1

    .line 211
    :cond_4
    return-object v14
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 60
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/IMTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/xueqiu/android/R$styleable;->com_xueqiu_android_view_widget_IMTextView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 61
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/xueqiu/android/common/widget/IMTextView;->a:Z

    .line 62
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/xueqiu/android/common/widget/IMTextView;->b:Z

    .line 63
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/IMTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-array v1, v2, [I

    const v2, 0x7f010059

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 65
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/IMTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/xueqiu/android/common/widget/IMTextView;->c:I

    .line 66
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    new-instance v0, Landroid/support/v4/view/m;

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/IMTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/common/widget/IMTextView$1;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/common/widget/IMTextView$1;-><init>(Lcom/xueqiu/android/common/widget/IMTextView;)V

    invoke-direct {v0, v1, v2}, Landroid/support/v4/view/m;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/IMTextView;->d:Landroid/support/v4/view/m;

    .line 114
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/xueqiu/android/common/widget/IMTextView;->a:Z

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/IMTextView;->d:Landroid/support/v4/view/m;

    .line 1538
    iget-object v0, v0, Landroid/support/v4/view/m;->a:Landroid/support/v4/view/n;

    invoke-interface {v0, p1}, Landroid/support/v4/view/n;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 146
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 123
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/IMTextView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 124
    if-nez p1, :cond_0

    .line 125
    const-string p1, ""

    .line 127
    :cond_0
    iget-boolean v0, p0, Lcom/xueqiu/android/common/widget/IMTextView;->a:Z

    if-eqz v0, :cond_3

    .line 1216
    const-string v0, "((https?|ftp|file)://[-A-Z0-9+&@#/%?=~_|!:,.;]*[-A-Z0-9+&@#/%=~_|])"

    .line 1217
    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1218
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1219
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1220
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1221
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1222
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1223
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1226
    :cond_1
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move v1, v2

    .line 1228
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1229
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1230
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1231
    add-int/lit8 v7, v6, 0x0

    add-int/lit8 v8, v0, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    .line 1232
    new-instance v8, Lcom/xueqiu/android/base/util/ak;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iget v9, p0, Lcom/xueqiu/android/common/widget/IMTextView;->c:I

    invoke-direct {v8, v7, v9}, Lcom/xueqiu/android/base/util/ak;-><init>(Ljava/lang/String;I)V

    .line 1233
    add-int/lit8 v6, v6, 0x0

    add-int/lit8 v0, v0, 0x0

    invoke-virtual {v3, v8, v6, v0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1228
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move-object p1, v3

    .line 130
    :cond_3
    iget-boolean v0, p0, Lcom/xueqiu/android/common/widget/IMTextView;->b:Z

    if-eqz v0, :cond_4

    .line 131
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/IMTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/IMTextView;->getTextSize()F

    invoke-direct {p0, v0, p1}, Lcom/xueqiu/android/common/widget/IMTextView;->a(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/text/Spanned;

    move-result-object p1

    .line 134
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 135
    return-void
.end method
