.class public final Lcom/xueqiu/android/trade/a/m;
.super Lcom/xueqiu/android/common/a/d;
.source "TradePositionListAdapter.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/v;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/a/d",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/xueqiu/android/common/widget/v;"
    }
.end annotation


# instance fields
.field public e:Lcom/xueqiu/android/base/util/ar;

.field public f:I

.field public g:Lcom/xueqiu/android/trade/a/n;

.field private final h:Landroid/content/Context;

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 49
    const v0, 0x7f030200

    invoke-direct {p0, p1, v0}, Lcom/xueqiu/android/common/a/d;-><init>(Landroid/content/Context;I)V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/trade/a/m;->e:Lcom/xueqiu/android/base/util/ar;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/trade/a/m;->i:Z

    .line 50
    iput-object p1, p0, Lcom/xueqiu/android/trade/a/m;->h:Landroid/content/Context;

    .line 1287
    invoke-static {}, Lcom/xueqiu/android/base/util/ar;->a()Lcom/xueqiu/android/base/util/ar;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/a/m;->e:Lcom/xueqiu/android/base/util/ar;

    .line 52
    iput-boolean p2, p0, Lcom/xueqiu/android/trade/a/m;->i:Z

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/a/m;)Lcom/xueqiu/android/trade/a/n;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/xueqiu/android/trade/a/m;->g:Lcom/xueqiu/android/trade/a/n;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lcom/xueqiu/android/trade/a/m;->f:I

    .line 69
    :goto_0
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/a/m;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 70
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/a/m;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/xueqiu/android/trade/model/SectionItem;

    if-eqz v1, :cond_0

    .line 71
    iget v1, p0, Lcom/xueqiu/android/trade/a/m;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/xueqiu/android/trade/a/m;->f:I

    .line 69
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 261
    if-ne p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .prologue
    .line 266
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/trade/a/m;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/xueqiu/android/trade/model/SectionItem;

    if-eqz v0, :cond_0

    .line 267
    const/4 v0, 0x1

    .line 269
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/trade/a/m;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/xueqiu/android/trade/model/SectionItem;

    if-eqz v0, :cond_5

    .line 2213
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/trade/a/m;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/SectionItem;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/SectionItem;->getSectionType()I

    move-result v5

    .line 2214
    const/4 v0, 0x4

    if-ne v5, v0, :cond_0

    .line 3089
    iget-object v0, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 2215
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0301ff

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2216
    const v1, 0x7f0e0722

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2217
    new-instance v2, Lcom/xueqiu/android/trade/a/m$1;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/trade/a/m$1;-><init>(Lcom/xueqiu/android/trade/a/m;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    :goto_0
    return-object v0

    .line 2225
    :cond_0
    if-eqz v5, :cond_4

    .line 4089
    iget-object v0, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 2226
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030201

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 4237
    const v0, 0x7f0e0709

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4238
    const v1, 0x7f0e070a

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 4239
    const v2, 0x7f0e070b

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 4240
    const v3, 0x7f0e070c

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 4241
    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 4242
    const v5, 0x7f0704c3

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 4243
    const v0, 0x7f0704c4

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 4244
    const v0, 0x7f0704bd

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 4245
    const v0, 0x7f0704be

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    move-object v0, v4

    goto :goto_0

    .line 4246
    :cond_1
    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 4247
    const v5, 0x7f0704bb

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 4248
    const v0, 0x7f0704bc

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 4249
    const v0, 0x7f0704bd

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 4250
    const v0, 0x7f0704be

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    move-object v0, v4

    goto :goto_0

    .line 4251
    :cond_2
    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    .line 4252
    const v5, 0x7f0704bf

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 4253
    const v0, 0x7f0704c0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 4254
    const v0, 0x7f0704c1

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 4255
    const v0, 0x7f0704c2

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    move-object v0, v4

    .line 2227
    goto/16 :goto_0

    .line 2229
    :cond_4
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/xueqiu/android/trade/a/m;->h:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2230
    const v1, 0x7f01001f

    iget-object v2, p0, Lcom/xueqiu/android/trade/a/m;->h:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/r;->a(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2231
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 80
    :cond_5
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/trade/a/m;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/xueqiu/android/trade/model/RepoPosition;

    if-eqz v0, :cond_9

    .line 5088
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/a/d;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 5091
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    .line 5092
    new-instance v1, Lcom/xueqiu/android/trade/a/o;

    invoke-direct {v1}, Lcom/xueqiu/android/trade/a/o;-><init>()V

    .line 5093
    const v0, 0x7f0e06c2

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/trade/a/o;->a:Landroid/widget/TextView;

    .line 5094
    const v0, 0x7f0e06c4

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/trade/a/o;->b:Landroid/widget/TextView;

    .line 5095
    const v0, 0x7f0e06c5

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/trade/a/o;->c:Landroid/widget/TextView;

    .line 5096
    const v0, 0x7f0e06c6

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/trade/a/o;->d:Landroid/widget/TextView;

    .line 5097
    const v0, 0x7f0e06c7

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/trade/a/o;->e:Landroid/widget/TextView;

    .line 5098
    const v0, 0x7f0e06c8

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/trade/a/o;->f:Landroid/widget/TextView;

    .line 5099
    const v0, 0x7f0e06c9

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/trade/a/o;->g:Landroid/widget/TextView;

    .line 5100
    const v0, 0x7f0e06ca

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/trade/a/o;->h:Landroid/widget/TextView;

    .line 5101
    const v0, 0x7f0e06c3

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/xueqiu/android/trade/a/o;->i:Landroid/widget/ImageView;

    .line 5102
    const v0, 0x7f0e01fb

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/xueqiu/android/trade/a/o;->j:Landroid/view/View;

    .line 5104
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5109
    :goto_1
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/trade/a/m;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/RepoPosition;

    .line 5110
    iget-object v3, v1, Lcom/xueqiu/android/trade/a/o;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/RepoPosition;->getSname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5111
    iget-object v3, v1, Lcom/xueqiu/android/trade/a/o;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/RepoPosition;->getMarketValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xueqiu/android/base/util/au;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5113
    iget-object v3, v1, Lcom/xueqiu/android/trade/a/o;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/RepoPosition;->getEnableDay()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5114
    iget-object v3, v1, Lcom/xueqiu/android/trade/a/o;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/RepoPosition;->getRetrievableDay()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5116
    iget-object v3, v1, Lcom/xueqiu/android/trade/a/o;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/RepoPosition;->getCostBalance()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xueqiu/android/base/util/au;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5117
    iget-object v3, v1, Lcom/xueqiu/android/trade/a/o;->f:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/RepoPosition;->getItemRate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5119
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/RepoPosition;->getItemIncome()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 5120
    iget-object v3, v1, Lcom/xueqiu/android/trade/a/o;->g:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/xueqiu/android/trade/a/m;->e:Lcom/xueqiu/android/base/util/ar;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/RepoPosition;->getItemIncome()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/xueqiu/android/base/util/ar;->a(D)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5121
    iget-object v3, v1, Lcom/xueqiu/android/trade/a/o;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/RepoPosition;->getItemIncome()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/au;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5123
    :cond_6
    iget-object v0, v1, Lcom/xueqiu/android/trade/a/o;->h:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5125
    iget-object v1, v1, Lcom/xueqiu/android/trade/a/o;->j:Landroid/view/View;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/a/m;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_8

    const/16 v0, 0x8

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    move-object v0, v2

    .line 81
    goto/16 :goto_0

    .line 5106
    :cond_7
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/a/o;

    move-object v1, v0

    goto/16 :goto_1

    .line 5125
    :cond_8
    const/4 v0, 0x0

    goto :goto_2

    .line 5132
    :cond_9
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/a/d;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 5140
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    .line 5141
    new-instance v1, Lcom/xueqiu/android/trade/a/o;

    invoke-direct {v1}, Lcom/xueqiu/android/trade/a/o;-><init>()V

    .line 5142
    const v0, 0x7f0e06c2

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/trade/a/o;->a:Landroid/widget/TextView;

    .line 5143
    const v0, 0x7f0e06c4

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/trade/a/o;->b:Landroid/widget/TextView;

    .line 5144
    const v0, 0x7f0e06c5

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/trade/a/o;->c:Landroid/widget/TextView;

    .line 5145
    const v0, 0x7f0e06c6

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/trade/a/o;->d:Landroid/widget/TextView;

    .line 5146
    const v0, 0x7f0e06c7

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/trade/a/o;->e:Landroid/widget/TextView;

    .line 5147
    const v0, 0x7f0e06c8

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/trade/a/o;->f:Landroid/widget/TextView;

    .line 5148
    const v0, 0x7f0e06c9

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/trade/a/o;->g:Landroid/widget/TextView;

    .line 5149
    const v0, 0x7f0e06ca

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/trade/a/o;->h:Landroid/widget/TextView;

    .line 5150
    const v0, 0x7f0e06c3

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/xueqiu/android/trade/a/o;->i:Landroid/widget/ImageView;

    .line 5151
    const v0, 0x7f0e01fb

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/xueqiu/android/trade/a/o;->j:Landroid/view/View;

    .line 5153
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5158
    :goto_3
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/trade/a/m;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/TradePosition;

    .line 5159
    iget-boolean v2, p0, Lcom/xueqiu/android/trade/a/m;->i:Z

    if-eqz v2, :cond_b

    .line 5160
    iget-object v2, v1, Lcom/xueqiu/android/trade/a/o;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradePosition;->getSymbol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5161
    iget-object v2, v1, Lcom/xueqiu/android/trade/a/o;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradePosition;->getMarketValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/xueqiu/android/base/util/au;->b(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5174
    :goto_4
    iget-object v2, v1, Lcom/xueqiu/android/trade/a/o;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradePosition;->getSname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5178
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradePosition;->getCurrentAmount()D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    rem-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpl-double v2, v4, v6

    if-nez v2, :cond_d

    .line 5179
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradePosition;->getCurrentAmount()D

    move-result-wide v4

    double-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 5183
    :goto_5
    iget-object v4, v1, Lcom/xueqiu/android/trade/a/o;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5185
    iget-object v2, v1, Lcom/xueqiu/android/trade/a/o;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradePosition;->getLastPrice()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5186
    iget-object v2, v1, Lcom/xueqiu/android/trade/a/o;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradePosition;->getCostPrice()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5188
    iget-object v2, v1, Lcom/xueqiu/android/trade/a/o;->g:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/xueqiu/android/trade/a/m;->e:Lcom/xueqiu/android/base/util/ar;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradePosition;->getIncomeBalance()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/xueqiu/android/base/util/ar;->a(D)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5189
    iget-object v2, v1, Lcom/xueqiu/android/trade/a/o;->h:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/xueqiu/android/trade/a/m;->e:Lcom/xueqiu/android/base/util/ar;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradePosition;->getIncomeRate()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/xueqiu/android/base/util/ar;->a(D)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5190
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradePosition;->getIncomeRate()D

    move-result-wide v4

    .line 5191
    iget-object v6, v1, Lcom/xueqiu/android/trade/a/o;->h:Landroid/widget/TextView;

    const-string v7, "%s%.2f%%"

    const/4 v2, 0x2

    new-array v8, v2, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    cmpl-double v2, v4, v10

    if-lez v2, :cond_e

    const-string v2, "+"

    :goto_6
    aput-object v2, v8, v9

    const/4 v2, 0x1

    .line 5193
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v8, v2

    .line 5191
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5194
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradePosition;->getIncomeBalance()D

    move-result-wide v4

    .line 5195
    iget-object v2, v1, Lcom/xueqiu/android/trade/a/o;->g:Landroid/widget/TextView;

    invoke-static {v4, v5}, Lcom/xueqiu/android/base/util/au;->b(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5197
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradePosition;->getExchange()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xueqiu/android/base/util/as;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 5198
    iget-object v0, v1, Lcom/xueqiu/android/trade/a/o;->i:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5199
    iget-object v0, v1, Lcom/xueqiu/android/trade/a/o;->i:Landroid/widget/ImageView;

    const v2, 0x7f020422

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5207
    :goto_7
    iget-object v1, v1, Lcom/xueqiu/android/trade/a/o;->j:Landroid/view/View;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/a/m;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_11

    const/16 v0, 0x8

    :goto_8
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    move-object v0, v3

    .line 83
    goto/16 :goto_0

    .line 5155
    :cond_a
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/a/o;

    move-object v1, v0

    goto/16 :goto_3

    .line 5163
    :cond_b
    iget-object v2, v1, Lcom/xueqiu/android/trade/a/o;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradePosition;->getMarketValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/xueqiu/android/base/util/au;->b(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5166
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradePosition;->getEnableAmount()D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    rem-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpl-double v2, v4, v6

    if-nez v2, :cond_c

    .line 5167
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradePosition;->getEnableAmount()D

    move-result-wide v4

    double-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 5171
    :goto_9
    iget-object v4, v1, Lcom/xueqiu/android/trade/a/o;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 5169
    :cond_c
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradePosition;->getEnableAmount()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    .line 5181
    :cond_d
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradePosition;->getCurrentAmount()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_5

    .line 5191
    :cond_e
    const-string v2, ""

    goto/16 :goto_6

    .line 5200
    :cond_f
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradePosition;->getExchange()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/as;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 5201
    iget-object v0, v1, Lcom/xueqiu/android/trade/a/o;->i:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5202
    iget-object v0, v1, Lcom/xueqiu/android/trade/a/o;->i:Landroid/widget/ImageView;

    const v2, 0x7f020420

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7

    .line 5204
    :cond_10
    iget-object v0, v1, Lcom/xueqiu/android/trade/a/o;->i:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7

    .line 5207
    :cond_11
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/xueqiu/android/trade/a/m;->b()V

    .line 58
    invoke-super {p0}, Lcom/xueqiu/android/common/a/d;->notifyDataSetChanged()V

    .line 59
    return-void
.end method

.method public final notifyDataSetInvalidated()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/xueqiu/android/trade/a/m;->b()V

    .line 64
    invoke-super {p0}, Lcom/xueqiu/android/common/a/d;->notifyDataSetInvalidated()V

    .line 65
    return-void
.end method
