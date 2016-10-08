.class public final Lcom/xueqiu/android/tactic/a/h;
.super Lcom/xueqiu/android/tactic/a/c;
.source "TacticStoreListAdapter.java"


# instance fields
.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/tactic/d/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/tactic/d/g;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p2}, Lcom/xueqiu/android/tactic/a/c;-><init>(Landroid/content/Context;)V

    .line 34
    iput-object p1, p0, Lcom/xueqiu/android/tactic/a/h;->f:Ljava/util/List;

    .line 35
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/xueqiu/android/tactic/a/h;->f:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/tactic/a/h;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final a(Landroid/view/ViewGroup;)Landroid/support/v7/widget/ao;
    .locals 4

    .prologue
    .line 39
    new-instance v0, Lcom/xueqiu/android/tactic/a/i;

    iget-object v1, p0, Lcom/xueqiu/android/tactic/a/h;->d:Landroid/view/LayoutInflater;

    const v2, 0x7f0301dd

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xueqiu/android/tactic/a/i;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public final a(Landroid/support/v7/widget/ao;I)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 44
    check-cast p1, Lcom/xueqiu/android/tactic/a/i;

    .line 1053
    iget-object v0, p0, Lcom/xueqiu/android/tactic/a/h;->f:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/tactic/d/g;

    .line 1054
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v1

    .line 1199
    iget-object v2, v0, Lcom/xueqiu/android/tactic/d/g;->imageUrl:Ljava/lang/String;

    .line 1054
    iget-object v3, p1, Lcom/xueqiu/android/tactic/a/i;->k:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/xueqiu/android/tactic/a/h;->e:Lcom/d/a/b/d;

    invoke-virtual {v1, v2, v3, v4}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;)V

    .line 1055
    iget-object v1, p1, Lcom/xueqiu/android/tactic/a/i;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1056
    const-string v1, "1"

    .line 1239
    iget-object v2, v0, Lcom/xueqiu/android/tactic/d/g;->tag:Ljava/lang/String;

    .line 1056
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1057
    iget-object v1, p1, Lcom/xueqiu/android/tactic/a/i;->l:Landroid/widget/TextView;

    const-string v2, "NEW"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1058
    iget-object v1, p1, Lcom/xueqiu/android/tactic/a/i;->l:Landroid/widget/TextView;

    const-string v2, "#0077ee"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1065
    :goto_0
    iget-object v1, p1, Lcom/xueqiu/android/tactic/a/i;->m:Landroid/widget/TextView;

    .line 2279
    iget-object v2, v0, Lcom/xueqiu/android/tactic/d/g;->categoryName:Ljava/lang/String;

    .line 1065
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1066
    iget-object v1, p1, Lcom/xueqiu/android/tactic/a/i;->n:Landroid/widget/TextView;

    .line 3247
    iget-object v2, v0, Lcom/xueqiu/android/tactic/d/g;->title:Ljava/lang/String;

    .line 1066
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1067
    const-string v1, "--"

    .line 3327
    iget v2, v0, Lcom/xueqiu/android/tactic/d/g;->stockCount:I

    .line 1068
    if-lez v2, :cond_0

    .line 4319
    iget-wide v2, v0, Lcom/xueqiu/android/tactic/d/g;->percentage:D

    .line 1069
    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-nez v1, :cond_3

    .line 1070
    const-string v1, "0%"

    .line 1075
    :cond_0
    :goto_1
    iget-object v2, p1, Lcom/xueqiu/android/tactic/a/i;->o:Landroid/widget/TextView;

    invoke-static {}, Lcom/xueqiu/android/base/util/ar;->a()Lcom/xueqiu/android/base/util/ar;

    move-result-object v3

    .line 6319
    iget-wide v4, v0, Lcom/xueqiu/android/tactic/d/g;->percentage:D

    .line 1075
    invoke-virtual {v3, v4, v5}, Lcom/xueqiu/android/base/util/ar;->a(D)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1076
    iget-object v2, p1, Lcom/xueqiu/android/tactic/a/i;->o:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1077
    iget-object v1, p1, Lcom/xueqiu/android/tactic/a/i;->k:Landroid/widget/ImageView;

    new-instance v2, Lcom/xueqiu/android/tactic/a/h$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/xueqiu/android/tactic/a/h$1;-><init>(Lcom/xueqiu/android/tactic/a/h;Lcom/xueqiu/android/tactic/d/g;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-void

    .line 1059
    :cond_1
    const-string v1, "2"

    .line 2239
    iget-object v2, v0, Lcom/xueqiu/android/tactic/d/g;->tag:Ljava/lang/String;

    .line 1059
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1060
    iget-object v1, p1, Lcom/xueqiu/android/tactic/a/i;->l:Landroid/widget/TextView;

    const-string v2, "HOT"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1061
    iget-object v1, p1, Lcom/xueqiu/android/tactic/a/i;->l:Landroid/widget/TextView;

    const-string v2, "#ff7700"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 1063
    :cond_2
    iget-object v1, p1, Lcom/xueqiu/android/tactic/a/i;->l:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1072
    :cond_3
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "%+.2f%%"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 5319
    iget-wide v4, v0, Lcom/xueqiu/android/tactic/d/g;->percentage:D

    .line 1072
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
