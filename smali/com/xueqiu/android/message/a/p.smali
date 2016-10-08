.class public final Lcom/xueqiu/android/message/a/p;
.super Lcom/xueqiu/android/common/a/d;
.source "IMGroupListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/a/d",
        "<",
        "Lcom/xueqiu/android/message/model/IMGroup;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 25
    const v0, 0x7f03016c

    invoke-direct {p0, p1, v0}, Lcom/xueqiu/android/common/a/d;-><init>(Landroid/content/Context;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/xueqiu/android/common/a/d;-><init>(Landroid/content/Context;I)V

    .line 22
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    .line 30
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/a/d;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 32
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1051
    new-instance v1, Lcom/xueqiu/android/message/a/q;

    invoke-direct {v1}, Lcom/xueqiu/android/message/a/q;-><init>()V

    .line 1052
    const v0, 0x7f0e0568

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/xueqiu/android/message/a/q;->a:Landroid/widget/ImageView;

    .line 1053
    const v0, 0x7f0e0569

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/message/a/q;->b:Landroid/widget/TextView;

    .line 1054
    const v0, 0x7f0e00c6

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/xueqiu/android/message/a/q;->c:Landroid/widget/LinearLayout;

    .line 34
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 38
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/message/a/p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/IMGroup;

    .line 1089
    iget-object v3, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 2060
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v4

    .line 2061
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/IMGroup;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/xueqiu/android/message/a/q;->a:Landroid/widget/ImageView;

    invoke-virtual {v4, v5, v6}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 2062
    iget-object v4, v1, Lcom/xueqiu/android/message/a/q;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/IMGroup;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2063
    iget-object v4, v1, Lcom/xueqiu/android/message/a/q;->c:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_2

    .line 2064
    iget-object v4, v1, Lcom/xueqiu/android/message/a/q;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2065
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/IMGroup;->getStar()I

    move-result v4

    .line 2067
    const/4 v0, 0x1

    :goto_1
    const/4 v5, 0x5

    if-gt v0, v5, :cond_2

    .line 2068
    add-int/lit8 v5, v0, -0x1

    mul-int/lit8 v5, v5, 0x14

    if-le v4, v5, :cond_1

    .line 2069
    iget-object v5, v1, Lcom/xueqiu/android/message/a/q;->c:Landroid/widget/LinearLayout;

    const v6, 0x7f02023b

    invoke-static {v6, v3}, Lcom/xueqiu/android/message/a/q;->a(ILandroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2067
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 36
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/a/q;

    move-object v1, v0

    goto :goto_0

    .line 2071
    :cond_1
    iget-object v5, v1, Lcom/xueqiu/android/message/a/q;->c:Landroid/widget/LinearLayout;

    const v6, 0x7f02023c

    invoke-static {v6, v3}, Lcom/xueqiu/android/message/a/q;->a(ILandroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 39
    :cond_2
    return-object v2
.end method
