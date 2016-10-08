.class public final Lcom/xueqiu/android/tactic/a/a;
.super Lcom/xueqiu/android/common/a/d;
.source "MyTacticListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/a/d",
        "<",
        "Lcom/xueqiu/android/tactic/d/h;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/xueqiu/android/common/a/d;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/tactic/a/a;->e:Landroid/view/LayoutInflater;

    .line 33
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 37
    if-nez p2, :cond_0

    .line 1047
    iget-object v0, p0, Lcom/xueqiu/android/tactic/a/a;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f0301d8

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1048
    new-instance v1, Lcom/xueqiu/android/tactic/a/b;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/tactic/a/b;-><init>(Lcom/xueqiu/android/tactic/a/a;)V

    .line 1060
    const v0, 0x7f0e06a2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/xueqiu/android/tactic/a/b;->a:Landroid/view/View;

    .line 1061
    const v0, 0x7f0e06a3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/tactic/a/b;->b:Landroid/widget/TextView;

    .line 1062
    const v0, 0x7f0e06a4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/tactic/a/b;->c:Landroid/widget/TextView;

    .line 1063
    const v0, 0x7f0e069d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/xueqiu/android/tactic/a/b;->d:Landroid/widget/LinearLayout;

    .line 1064
    const v0, 0x7f0e069e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/tactic/a/b;->e:Landroid/widget/TextView;

    .line 1048
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 40
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/tactic/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/tactic/d/h;

    .line 41
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/tactic/a/b;

    .line 1069
    iget-object v2, v1, Lcom/xueqiu/android/tactic/a/b;->b:Landroid/widget/TextView;

    .line 2068
    iget-object v4, v0, Lcom/xueqiu/android/tactic/d/h;->product:Lcom/xueqiu/android/tactic/d/g;

    .line 2247
    iget-object v4, v4, Lcom/xueqiu/android/tactic/d/g;->title:Ljava/lang/String;

    .line 1069
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1070
    iget-object v2, v1, Lcom/xueqiu/android/tactic/a/b;->c:Landroid/widget/TextView;

    .line 3064
    iget-object v4, v0, Lcom/xueqiu/android/tactic/d/h;->createdAt:Ljava/util/Date;

    .line 1070
    const-string v5, "yyyy-MM-dd HH:mm"

    invoke-static {v4, v5}, Lcom/xueqiu/android/base/util/h;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3076
    iget-object v2, v0, Lcom/xueqiu/android/tactic/d/h;->stocks:Ljava/util/ArrayList;

    .line 1071
    if-eqz v2, :cond_1

    .line 4076
    iget-object v2, v0, Lcom/xueqiu/android/tactic/d/h;->stocks:Ljava/util/ArrayList;

    .line 1071
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 43
    :cond_1
    :goto_0
    return-object p2

    .line 5072
    :cond_2
    iget v2, v0, Lcom/xueqiu/android/tactic/d/h;->stockTotal:I

    .line 1075
    const/4 v4, 0x3

    if-le v2, v4, :cond_3

    .line 1076
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v4, "\u67e5\u770b\u5168\u90e8%d\u53ea\u80a1\u7968"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 6072
    iget v6, v0, Lcom/xueqiu/android/tactic/d/h;->stockTotal:I

    .line 1076
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v2, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1077
    iget-object v4, v1, Lcom/xueqiu/android/tactic/a/b;->e:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1078
    iget-object v2, v1, Lcom/xueqiu/android/tactic/a/b;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1080
    iget-object v2, v1, Lcom/xueqiu/android/tactic/a/b;->e:Landroid/widget/TextView;

    new-instance v4, Lcom/xueqiu/android/tactic/a/b$1;

    invoke-direct {v4, v1, v0}, Lcom/xueqiu/android/tactic/a/b$1;-><init>(Lcom/xueqiu/android/tactic/a/b;Lcom/xueqiu/android/tactic/d/h;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1093
    :goto_1
    iget-object v2, v1, Lcom/xueqiu/android/tactic/a/b;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    move v2, v3

    .line 6076
    :goto_2
    iget-object v4, v0, Lcom/xueqiu/android/tactic/d/h;->stocks:Ljava/util/ArrayList;

    .line 1094
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 1096
    new-instance v4, Lcom/xueqiu/android/tactic/a/f;

    iget-object v5, v1, Lcom/xueqiu/android/tactic/a/b;->f:Lcom/xueqiu/android/tactic/a/a;

    .line 6089
    iget-object v5, v5, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 1096
    invoke-direct {v4, v5}, Lcom/xueqiu/android/tactic/a/f;-><init>(Landroid/content/Context;)V

    .line 6135
    iput-boolean v3, v4, Lcom/xueqiu/android/tactic/a/f;->e:Z

    .line 7076
    iget-object v5, v0, Lcom/xueqiu/android/tactic/d/h;->stocks:Ljava/util/ArrayList;

    .line 1098
    invoke-virtual {v4, v5}, Lcom/xueqiu/android/tactic/a/f;->a(Ljava/util/ArrayList;)V

    .line 1099
    iget-object v5, v1, Lcom/xueqiu/android/tactic/a/b;->d:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    iget-object v7, v1, Lcom/xueqiu/android/tactic/a/b;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2, v6, v7}, Lcom/xueqiu/android/tactic/a/f;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1094
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1091
    :cond_3
    iget-object v2, v1, Lcom/xueqiu/android/tactic/a/b;->e:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1102
    :cond_4
    iget-object v2, v1, Lcom/xueqiu/android/tactic/a/b;->a:Landroid/view/View;

    new-instance v3, Lcom/xueqiu/android/tactic/a/b$2;

    invoke-direct {v3, v1, v0}, Lcom/xueqiu/android/tactic/a/b$2;-><init>(Lcom/xueqiu/android/tactic/a/b;Lcom/xueqiu/android/tactic/d/h;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
