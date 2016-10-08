.class public final Lcom/xueqiu/android/stock/a/d;
.super Lcom/xueqiu/android/common/a/d;
.source "F10PageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/a/d",
        "<",
        "Lcom/xueqiu/android/stock/model/F10Table;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Landroid/view/LayoutInflater;

.field private f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/xueqiu/android/common/a/d;-><init>(Landroid/content/Context;)V

    .line 27
    iput-object p1, p0, Lcom/xueqiu/android/stock/a/d;->f:Landroid/content/Context;

    .line 28
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/d;->f:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/a/d;->e:Landroid/view/LayoutInflater;

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/a/d;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/d;->f:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 33
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/d;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f030122

    invoke-virtual {v0, v1, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 34
    new-instance v0, Lcom/xueqiu/android/stock/a/e;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/stock/a/e;-><init>(Lcom/xueqiu/android/stock/a/d;)V

    .line 1050
    new-instance v2, Lcom/xueqiu/android/stock/a/e;

    iget-object v0, v0, Lcom/xueqiu/android/stock/a/e;->h:Lcom/xueqiu/android/stock/a/d;

    invoke-direct {v2, v0}, Lcom/xueqiu/android/stock/a/e;-><init>(Lcom/xueqiu/android/stock/a/d;)V

    .line 1051
    const v0, 0x7f0e0468

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/xueqiu/android/stock/a/e;->a:Landroid/view/View;

    .line 1052
    const v0, 0x7f0e0469

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/xueqiu/android/stock/a/e;->b:Landroid/widget/TextView;

    .line 1053
    const v0, 0x7f0e046a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/xueqiu/android/stock/a/e;->c:Landroid/widget/TextView;

    .line 1054
    const v0, 0x7f0e046b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/xueqiu/android/stock/a/e;->d:Landroid/widget/TextView;

    .line 1055
    const v0, 0x7f0e046c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/xueqiu/android/stock/a/e;->e:Landroid/widget/ImageView;

    .line 1056
    const v0, 0x7f0e046e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v2, Lcom/xueqiu/android/stock/a/e;->f:Landroid/view/ViewGroup;

    .line 1057
    const v0, 0x7f0e046d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/xueqiu/android/stock/a/e;->g:Landroid/view/View;

    .line 35
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/stock/a/d;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/F10Table;

    .line 1063
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/F10Table;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 1197
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 1063
    if-eqz v3, :cond_2

    .line 1064
    iget-object v3, v2, Lcom/xueqiu/android/stock/a/e;->a:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1065
    iget-object v3, v2, Lcom/xueqiu/android/stock/a/e;->g:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1094
    :goto_0
    iget-object v3, v2, Lcom/xueqiu/android/stock/a/e;->f:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 1095
    new-instance v3, Lcom/xueqiu/android/common/widget/ag;

    iget-object v4, v2, Lcom/xueqiu/android/stock/a/e;->h:Lcom/xueqiu/android/stock/a/d;

    .line 5089
    iget-object v4, v4, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 1095
    invoke-direct {v3, v4}, Lcom/xueqiu/android/common/widget/ag;-><init>(Landroid/content/Context;)V

    .line 1096
    iget-object v2, v2, Lcom/xueqiu/android/stock/a/e;->f:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1098
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/F10Table;->getRowdata()[[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1099
    new-array v2, v6, [[Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stock/model/F10Table;->setRowdata([[Ljava/lang/String;)V

    .line 1101
    :cond_0
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/F10Table;->getWidth()[I

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/xueqiu/android/common/widget/ag;->setColumnsWidth([I)V

    .line 1102
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/F10Table;->getHeader()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/xueqiu/android/common/widget/ag;->setHeadNames([Ljava/lang/String;)V

    .line 1103
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/F10Table;->getRowdata()[[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/xueqiu/android/common/widget/ag;->setData([[Ljava/lang/String;)V

    .line 1104
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/F10Table;->getAlign()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/common/widget/ag;->setColumnsAlign([Ljava/lang/String;)V

    .line 5339
    invoke-virtual {v3}, Lcom/xueqiu/android/common/widget/ag;->postInvalidate()V

    .line 37
    :cond_1
    return-object v1

    .line 1067
    :cond_2
    iget-object v3, v2, Lcom/xueqiu/android/stock/a/e;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/F10Table;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1069
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/F10Table;->getSubtitle()Ljava/lang/String;

    move-result-object v3

    .line 2197
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 1069
    if-eqz v3, :cond_3

    .line 1070
    iget-object v3, v2, Lcom/xueqiu/android/stock/a/e;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1075
    :goto_1
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/F10Table;->getTime()Ljava/lang/String;

    move-result-object v3

    .line 3197
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 1075
    if-eqz v3, :cond_4

    .line 1076
    iget-object v3, v2, Lcom/xueqiu/android/stock/a/e;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1081
    :goto_2
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/F10Table;->getLink()Ljava/lang/String;

    move-result-object v3

    .line 4197
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 1081
    if-eqz v3, :cond_5

    .line 1082
    iget-object v3, v2, Lcom/xueqiu/android/stock/a/e;->e:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1072
    :cond_3
    iget-object v3, v2, Lcom/xueqiu/android/stock/a/e;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/F10Table;->getSubtitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1078
    :cond_4
    iget-object v3, v2, Lcom/xueqiu/android/stock/a/e;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/F10Table;->getTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1084
    :cond_5
    iget-object v3, v2, Lcom/xueqiu/android/stock/a/e;->e:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1085
    iget-object v3, v2, Lcom/xueqiu/android/stock/a/e;->a:Landroid/view/View;

    new-instance v4, Lcom/xueqiu/android/stock/a/e$1;

    invoke-direct {v4, v2, v0}, Lcom/xueqiu/android/stock/a/e$1;-><init>(Lcom/xueqiu/android/stock/a/e;Lcom/xueqiu/android/stock/model/F10Table;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method
