.class public final Lcom/xueqiu/android/community/a/ad;
.super Lcom/xueqiu/android/common/a/d;
.source "RewardCashListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/a/d",
        "<",
        "Lcom/xueqiu/android/community/model/RewardCash;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Lcom/d/a/b/f;

.field private f:Lcom/d/a/b/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const v1, 0x7f020488

    .line 29
    invoke-direct {p0, p1}, Lcom/xueqiu/android/common/a/d;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/community/a/ad;->f:Lcom/d/a/b/d;

    .line 30
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/a/ad;->e:Lcom/d/a/b/f;

    .line 31
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v0

    .line 1293
    iput v1, v0, Lcom/d/a/b/e;->c:I

    .line 2270
    iput v1, v0, Lcom/d/a/b/e;->b:I

    .line 3248
    iput v1, v0, Lcom/d/a/b/e;->a:I

    .line 34
    invoke-virtual {v0}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/a/ad;->f:Lcom/d/a/b/d;

    .line 35
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 39
    if-nez p2, :cond_0

    .line 4089
    iget-object v0, p0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 40
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03007e

    invoke-virtual {v0, v1, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 41
    new-instance v1, Lcom/xueqiu/android/community/a/ae;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/a/ae;-><init>(Lcom/xueqiu/android/community/a/ad;)V

    .line 5056
    const v0, 0x7f0e022d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/xueqiu/android/community/a/ae;->a:Landroid/widget/ImageView;

    .line 5057
    const v0, 0x7f0e022e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/community/a/ae;->b:Landroid/widget/TextView;

    .line 5058
    const v0, 0x7f0e022f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/community/a/ae;->c:Landroid/widget/TextView;

    .line 5059
    const v0, 0x7f0e0230

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/community/a/ae;->d:Landroid/widget/TextView;

    .line 41
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/community/a/ad;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/RewardCash;

    .line 44
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/a/ae;

    .line 5064
    iget-object v2, v1, Lcom/xueqiu/android/community/a/ae;->e:Lcom/xueqiu/android/community/a/ad;

    .line 6022
    iget-object v2, v2, Lcom/xueqiu/android/community/a/ad;->e:Lcom/d/a/b/f;

    .line 5064
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/RewardCash;->getLargeImageUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/xueqiu/android/community/a/ae;->a:Landroid/widget/ImageView;

    iget-object v5, v1, Lcom/xueqiu/android/community/a/ae;->e:Lcom/xueqiu/android/community/a/ad;

    .line 7022
    iget-object v5, v5, Lcom/xueqiu/android/community/a/ad;->f:Lcom/d/a/b/d;

    .line 5064
    invoke-virtual {v2, v3, v4, v5}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;)V

    .line 5065
    iget-object v2, v1, Lcom/xueqiu/android/community/a/ae;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/RewardCash;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5066
    iget-object v2, v1, Lcom/xueqiu/android/community/a/ae;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/RewardCash;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5067
    iget-object v1, v1, Lcom/xueqiu/android/community/a/ae;->d:Landroid/widget/TextView;

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v3, "\uffe5%.2f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/RewardCash;->getAmount()I

    move-result v0

    int-to-float v0, v0

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    return-object p2
.end method
