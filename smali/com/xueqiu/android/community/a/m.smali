.class public final Lcom/xueqiu/android/community/a/m;
.super Lcom/xueqiu/android/common/a/d;
.source "PrivateFundListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/a/d",
        "<",
        "Lcom/xueqiu/android/community/model/SimpleFund;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Lcom/xueqiu/android/base/util/ar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 21
    const v0, 0x7f03018f

    invoke-direct {p0, p1, v0}, Lcom/xueqiu/android/common/a/d;-><init>(Landroid/content/Context;I)V

    .line 22
    invoke-static {}, Lcom/xueqiu/android/base/util/ar;->a()Lcom/xueqiu/android/base/util/ar;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/a/m;->e:Lcom/xueqiu/android/base/util/ar;

    .line 23
    iget-object v0, p0, Lcom/xueqiu/android/community/a/m;->e:Lcom/xueqiu/android/base/util/ar;

    const v1, 0x7f0d010c

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v1

    .line 1065
    iput v1, v0, Lcom/xueqiu/android/base/util/ar;->a:I

    .line 24
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 29
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/a/d;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 32
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 33
    new-instance v1, Lcom/xueqiu/android/community/a/n;

    invoke-direct {v1}, Lcom/xueqiu/android/community/a/n;-><init>()V

    .line 34
    const v0, 0x7f0e05c5

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/community/a/n;->a:Landroid/widget/TextView;

    .line 35
    const v0, 0x7f0e05c6

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/community/a/n;->f:Landroid/widget/TextView;

    .line 36
    const v0, 0x7f0e05c8

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/community/a/n;->b:Landroid/widget/TextView;

    .line 37
    const v0, 0x7f0e05c9

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/community/a/n;->c:Landroid/widget/TextView;

    .line 38
    const v0, 0x7f0e05ca

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/community/a/n;->d:Landroid/widget/TextView;

    .line 39
    const v0, 0x7f0e05cb

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/community/a/n;->e:Landroid/widget/TextView;

    .line 40
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 45
    :goto_0
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/community/a/m;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/SimpleFund;

    .line 46
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/SimpleFund;->getRate()D

    move-result-wide v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    .line 47
    iget-object v3, p0, Lcom/xueqiu/android/community/a/m;->e:Lcom/xueqiu/android/base/util/ar;

    invoke-virtual {v3, v4, v5}, Lcom/xueqiu/android/base/util/ar;->a(D)I

    move-result v3

    .line 48
    iget-object v6, v1, Lcom/xueqiu/android/community/a/n;->f:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    iget-object v6, v1, Lcom/xueqiu/android/community/a/n;->a:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50
    iget-object v3, v1, Lcom/xueqiu/android/community/a/n;->a:Landroid/widget/TextView;

    sget-object v6, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v7, "%.2f"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v3, v1, Lcom/xueqiu/android/community/a/n;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/SimpleFund;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/SimpleFund;->getStrutType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xueqiu/android/base/util/au;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 54
    iget-object v3, v1, Lcom/xueqiu/android/community/a/n;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    :goto_1
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/SimpleFund;->getStrategy()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xueqiu/android/base/util/au;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 61
    iget-object v3, v1, Lcom/xueqiu/android/community/a/n;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    :goto_2
    iget-object v1, v1, Lcom/xueqiu/android/community/a/n;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/SimpleFund;->getManager()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    return-object v2

    .line 42
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/a/n;

    move-object v1, v0

    goto :goto_0

    .line 56
    :cond_1
    iget-object v3, v1, Lcom/xueqiu/android/community/a/n;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 57
    iget-object v3, v1, Lcom/xueqiu/android/community/a/n;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/SimpleFund;->getStrutType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 63
    :cond_2
    iget-object v3, v1, Lcom/xueqiu/android/community/a/n;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    iget-object v3, v1, Lcom/xueqiu/android/community/a/n;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/SimpleFund;->getStrategy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
