.class public final Lcom/xueqiu/android/cube/b/b;
.super Landroid/widget/BaseAdapter;
.source "IndustryListFragment.java"


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/cube/model/Industry;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/xueqiu/android/cube/b/a;

.field private c:Lcom/xueqiu/android/base/util/ar;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/cube/b/a;)V
    .locals 1

    .prologue
    .line 111
    iput-object p1, p0, Lcom/xueqiu/android/cube/b/b;->b:Lcom/xueqiu/android/cube/b/a;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/cube/b/b;->a:Ljava/util/List;

    .line 112
    invoke-static {}, Lcom/xueqiu/android/base/util/ar;->a()Lcom/xueqiu/android/base/util/ar;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/b/b;->c:Lcom/xueqiu/android/base/util/ar;

    .line 113
    return-void
.end method

.method private static a(Lcom/xueqiu/android/cube/b/c;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 215
    iput-object p1, p0, Lcom/xueqiu/android/cube/b/c;->a:Landroid/view/View;

    .line 216
    const v0, 0x7f0e03eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/AutoResizeTextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/b/c;->b:Lcom/xueqiu/android/common/widget/AutoResizeTextView;

    .line 217
    const v0, 0x7f0e03ec

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/b/c;->c:Landroid/widget/TextView;

    .line 218
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/b;->a:Ljava/util/List;

    if-nez v0, :cond_1

    .line 118
    const/4 v0, 0x0

    .line 124
    :cond_0
    :goto_0
    return v0

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    .line 121
    iget-object v1, p0, Lcom/xueqiu/android/cube/b/b;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/lit8 v1, v1, 0x3

    if-eqz v1, :cond_0

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 129
    mul-int/lit8 v1, p1, 0x3

    .line 130
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 131
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v0, v3, :cond_0

    add-int v3, v1, v0

    iget-object v4, p0, Lcom/xueqiu/android/cube/b/b;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 132
    iget-object v3, p0, Lcom/xueqiu/android/cube/b/b;->a:Ljava/util/List;

    add-int v4, v1, v0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    :cond_0
    return-object v2
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 143
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15

    .prologue
    .line 148
    if-nez p2, :cond_0

    .line 149
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300ff

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 152
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 153
    new-instance v4, Lcom/xueqiu/android/cube/b/c;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/cube/b/c;-><init>(Lcom/xueqiu/android/cube/b/b;)V

    .line 154
    const v5, 0x7f0e03fe

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xueqiu/android/cube/b/b;->a(Lcom/xueqiu/android/cube/b/c;Landroid/view/View;)V

    .line 155
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v4, Lcom/xueqiu/android/cube/b/c;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/cube/b/c;-><init>(Lcom/xueqiu/android/cube/b/b;)V

    .line 158
    const v5, 0x7f0e03ff

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xueqiu/android/cube/b/b;->a(Lcom/xueqiu/android/cube/b/c;Landroid/view/View;)V

    .line 159
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance v4, Lcom/xueqiu/android/cube/b/c;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/cube/b/c;-><init>(Lcom/xueqiu/android/cube/b/b;)V

    .line 162
    const v5, 0x7f0e0400

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xueqiu/android/cube/b/b;->a(Lcom/xueqiu/android/cube/b/c;Landroid/view/View;)V

    .line 163
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 p2, v2

    .line 169
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 170
    invoke-virtual/range {p0 .. p1}, Lcom/xueqiu/android/cube/b/b;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 172
    const/4 v4, 0x0

    move v7, v4

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v7, v4, :cond_3

    .line 173
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xueqiu/android/cube/b/c;

    .line 174
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v7, v5, :cond_2

    .line 175
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xueqiu/android/cube/model/Industry;

    .line 176
    iget-object v6, v4, Lcom/xueqiu/android/cube/b/c;->b:Lcom/xueqiu/android/common/widget/AutoResizeTextView;

    invoke-virtual {v5}, Lcom/xueqiu/android/cube/model/Industry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v6, v4, Lcom/xueqiu/android/cube/b/c;->b:Lcom/xueqiu/android/common/widget/AutoResizeTextView;

    const/high16 v8, 0x41200000    # 10.0f

    invoke-virtual {v6, v8}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->setMinTextSize(F)V

    .line 179
    iget-object v6, v4, Lcom/xueqiu/android/cube/b/c;->b:Lcom/xueqiu/android/common/widget/AutoResizeTextView;

    const/4 v8, 0x2

    const/high16 v9, 0x41c00000    # 24.0f

    invoke-virtual {v6, v8, v9}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->setTextSize(IF)V

    .line 181
    invoke-virtual {v5}, Lcom/xueqiu/android/cube/model/Industry;->getAvgStockProfit()Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    .line 182
    iget-object v10, v4, Lcom/xueqiu/android/cube/b/c;->c:Landroid/widget/TextView;

    .line 1202
    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1203
    const-string v6, ""

    .line 1204
    const-wide/16 v12, 0x0

    cmpl-double v12, v8, v12

    if-lez v12, :cond_1

    .line 1205
    const-string v6, "+"

    .line 1207
    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, "%1$s%%"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v6, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1209
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v12, 0xb

    const/4 v13, 0x1

    invoke-direct {v6, v12, v13}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 1210
    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v13

    const/16 v14, 0x11

    invoke-virtual {v11, v6, v12, v13, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 182
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v6, v4, Lcom/xueqiu/android/cube/b/c;->c:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/xueqiu/android/cube/b/b;->c:Lcom/xueqiu/android/base/util/ar;

    invoke-virtual {v10, v8, v9}, Lcom/xueqiu/android/base/util/ar;->a(D)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 185
    iget-object v6, v4, Lcom/xueqiu/android/cube/b/c;->a:Landroid/view/View;

    new-instance v8, Lcom/xueqiu/android/cube/b/b$1;

    invoke-direct {v8, p0, v5}, Lcom/xueqiu/android/cube/b/b$1;-><init>(Lcom/xueqiu/android/cube/b/b;Lcom/xueqiu/android/cube/model/Industry;)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v4, v4, Lcom/xueqiu/android/cube/b/c;->a:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 172
    :goto_1
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto/16 :goto_0

    .line 194
    :cond_2
    iget-object v4, v4, Lcom/xueqiu/android/cube/b/c;->a:Landroid/view/View;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 198
    :cond_3
    return-object p2
.end method
